// Pelacak analitik FreeYay — kirim event kecil ke Supabase (tabel "events").
// Butuh sb.js (SB_URL & SB_KEY) sudah dimuat lebih dulu.
// Event: "view" (halaman dibuka), "sign_click" (klik papan kayu),
//        "redeem_click" (klik tombol Redeem).
(function () {
  if (!window.SB_URL || !window.SB_KEY) return;

  // Nama halaman: poster set window.FY_PAGE, promo set window.PROMO_KEY.
  var page = window.FY_PAGE || window.PROMO_KEY || "unknown";

  function send(type, label) {
    try {
      fetch(window.SB_URL + "/rest/v1/events", {
        method: "POST",
        keepalive: true, // tetap terkirim walau halaman pindah
        headers: {
          apikey: window.SB_KEY,
          Authorization: "Bearer " + window.SB_KEY,
          "Content-Type": "application/json",
          Prefer: "return=minimal"
        },
        body: JSON.stringify({ type: type, page: page, label: label || null })
      });
    } catch (e) { /* diam saja, jangan ganggu user */ }
  }
  window.fyTrack = send;

  // 1x per halaman dibuka
  send("view", null);

  // Klik tombol redeem & papan kayu (pakai delegasi, tahan terhadap konten dinamis)
  document.addEventListener("click", function (ev) {
    var t = ev.target;
    if (!t || !t.closest) return;
    var r = t.closest(".promo-cta");
    if (r) {
      var lbl = (r.textContent || "").replace(/[↗→\s]+$/, "").trim();
      send("redeem_click", lbl.slice(0, 120));
      return;
    }
    var s = t.closest(".sign");
    if (s) {
      send("sign_click", (s.getAttribute("aria-label") || "").trim());
    }
  }, true);
})();
