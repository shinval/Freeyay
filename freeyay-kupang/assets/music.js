// Pemutar musik latar. Di dalam shell (iframe) kontrol dipegang halaman induk,
// jadi lagu TIDAK pernah berhenti saat pindah poster.
(function () {
  var inFrame = false;
  try { inFrame = window.self !== window.top; } catch (e) { inFrame = true; }
  var btn = document.querySelector('.music-btn');
  var audio = document.getElementById('bg-music');

  if (inFrame) {
    if (btn) btn.style.display = 'none';
    if (audio) { try { audio.pause(); audio.removeAttribute('src'); } catch (e) {} }
    return;
  }

  if (!btn || !audio) return;
  var label = btn.querySelector('.label');
  audio.volume = 0.6;
  var KT = 'freeyay_music_time', KP = 'freeyay_music_playing';

  function ui(p) { btn.setAttribute('aria-pressed', p ? 'true' : 'false'); label.textContent = p ? 'Matikan musik' : 'Putar musik'; }
  function save() { try { localStorage.setItem(KT, audio.currentTime || 0); localStorage.setItem(KP, audio.paused ? '0' : '1'); } catch (e) {} }
  function seek(t) { try { if (isFinite(t) && t > 0.1) audio.currentTime = t; } catch (e) {} }

  var wasPlaying = false, savedT = 0;
  try { wasPlaying = localStorage.getItem(KP) === '1'; savedT = parseFloat(localStorage.getItem(KT) || '0') || 0; } catch (e) {}

  if (wasPlaying) {
    audio.preload = 'auto';
    audio.addEventListener('loadedmetadata', function () { seek(savedT); }, { once: true });
    audio.play().then(function () { if (audio.currentTime < 0.3) seek(savedT); ui(true); }).catch(function () { ui(false); });
  } else { ui(false); }

  btn.addEventListener('click', function () {
    if (audio.paused) {
      audio.play().then(function () { if (savedT > 0 && audio.currentTime < 0.3) seek(savedT); ui(true); save(); })
        .catch(function () { label.textContent = 'Lagu belum ada'; });
    } else { audio.pause(); ui(false); save(); }
  });
  audio.addEventListener('timeupdate', save);
  audio.addEventListener('play', function () { ui(true); });
  audio.addEventListener('pause', function () { ui(false); });
  window.addEventListener('pagehide', save);
  window.addEventListener('beforeunload', save);
})();
