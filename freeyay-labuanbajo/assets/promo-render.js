// Mengisi halaman promo dari database Supabase.
// Kalau gagal (offline), teks default di HTML tetap tampil.
(function () {
  var key = window.PROMO_KEY;
  if (!key || !window.SB_URL) return;
  var H = { apikey: window.SB_KEY, Authorization: "Bearer " + window.SB_KEY };

  fetch(window.SB_URL + "/rest/v1/promos?key=eq." + encodeURIComponent(key) + "&select=*", { headers: H })
    .then(function (r) { return r.json(); })
    .then(function (rows) {
      var p = rows && rows[0];
      if (p) render(p);
    })
    .catch(function () { /* biarkan isi default */ });

  function esc(s) { return String(s == null ? "" : s); }

  function render(p) {
    if (p.category) document.title = p.category + " – " + p.merchant + " | FreeYay! Telkomsel Poin";
    if (p.accent) {
      document.querySelectorAll(".promo-info h2, .promo-info .closing").forEach(function (e) { e.style.color = p.accent; });
    }

    var cat = document.querySelector(".promo-cat");
    if (cat && p.category) cat.textContent = p.category;

    var img = document.querySelector(".promo-img");
    if (img && p.image) { img.src = p.image; img.alt = esc(p.title); }

    // Tombol redeem dari data
    var cta = document.getElementById("cta");
    if (cta && Array.isArray(p.redeem)) {
      cta.innerHTML = p.redeem.map(function (b) {
        return '<a class="promo-cta" href="' + esc(b.url) + '" target="_blank" rel="noopener">' +
               esc(b.label) + ' <span aria-hidden="true">↗</span></a>';
      }).join("");
    }

    // Isi kartu copywriting
    var fields = ["title", "intro", "benefit", "extra", "address", "closing", "fineprint"];
    fields.forEach(function (f) {
      var el = document.querySelector('[data-f="' + f + '"]');
      if (!el) return;
      var v = p[f];
      if (v == null || v === "") { el.style.display = "none"; }
      else { el.textContent = v; el.style.display = ""; }
    });
  }
})();
