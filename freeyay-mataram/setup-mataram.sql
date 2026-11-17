-- Jalankan di Supabase > SQL Editor. Aman dijalankan ulang: baris Mataram lama dihapus lalu dibuat ulang.
-- Key pakai awalan "mtr-" supaya tidak menimpa promo kota lain.

delete from promos where key like 'mtr-%';

insert into promos (key, sort, category, merchant, image, title, intro, benefit, extra, address, closing, fineprint, redeem)
values
  ('mtr-eat', 20, 'EAT', 'Kinta Coffee', 'assets/img/promo-eat.jpg', '☕🌿 ENJOY YOUR COFFEE MOMENTS! 🤎', 'Ngopi santai di Kinta Coffee makin hemat dengan promo spesial dari Telkomsel POIN! Nikmati kopi favorit dan aneka hidangan lezat di suasana kafe yang asri. ☕✨', '🎉 DISKON Rp10.000!
Cukup tukarkan 1.000 Telkomsel POIN melalui MyTelkomsel dan nikmati potongan harga Rp10.000.', 'Ajak teman, pasangan, atau keluarga untuk quality time ditemani secangkir kopi dan makanan favorit di Kinta Coffee. 🍽️🌿', '📍 Kinta Coffee
Jl. Langko, Dasan Agung Baru, Kec. Selaparang, Kota Mataram, Nusa Tenggara Barat

🕗 Setiap hari | 08.00–23.00 WITA', '✨ Redeem your POIN, enjoy every sip!', 'Periode promo: 23 Juli 2026 – 31 Desember 2026.', '[{"label": "Redeem Diskon Rp10.000 — 1.000 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/MTRKNT10K26"}]'::jsonb),
  ('mtr-shop', 21, 'SHOP', 'Stanley Fashion Store', 'assets/img/promo-shop.jpg', '🖤✨ UPGRADE YOUR STYLE, ENJOY MORE BENEFITS! 👕', 'Tampil makin stylish dengan koleksi fashion dari Stanley Fashion Store — kini lebih hemat dengan promo spesial Telkomsel POIN! 🛍️', '🎉 DISKON 10%!
Tukarkan 2.000 Telkomsel POIN melalui MyTelkomsel dan nikmati diskon 10% untuk belanja fashion favoritmu.', 'Dari outfit kasual sampai look rapi untuk hangout, saatnya upgrade gaya tanpa bikin kantong bolong. 😎', '📍 Stanley Fashion Store
Dusun Sigerongan, Desa Sigerongan, Kec. Lingsar, Kabupaten Lombok Barat, Nusa Tenggara Barat

🕙 Senin–Sabtu | 10.00–22.00 WITA', '✨ Redeem your POIN, upgrade your style!', 'Periode promo: 30 April 2025 – 30 April 2027.', '[{"label": "Redeem Diskon 10% — 2.000 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/MTRSFS20002025"}]'::jsonb),
  ('mtr-play', 22, 'PLAY', 'Sukses Crown Toys', 'assets/img/promo-play.jpg', '🧸👑 MORE FUN, MORE REWARDS! 🎉', 'Waktunya belanja mainan favorit si kecil di Sukses Crown Toys dengan promo spesial dari Telkomsel POIN! 🚗🧩', '🎉 DISKON 10%!
Cukup tukarkan 1.000 Telkomsel POIN melalui MyTelkomsel dan nikmati diskon 10% untuk pembelian mainan.', 'Mulai dari boneka, mobil-mobilan, action figure, hingga mainan edukasi — hadirkan senyum dan keceriaan untuk keluarga tercinta! 💛', '📍 Sukses Crown Toys
Jl. Selaparang No. 166, RW 36, Cakranegara Timur, Kec. Cakranegara, Kota Mataram, Nusa Tenggara Barat

🕗 Senin–Minggu | 08.00–21.30 WITA', '✨ Redeem your POIN, unlock more fun!', 'Periode promo: 9 September 2024 – 31 Oktober 2026.', '[{"label": "Redeem Diskon 10% — 1.000 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/MTRSCTCK102023"}]'::jsonb),
  ('mtr-enjoy', 23, 'ENJOY', 'Naavagreen Mataram', 'assets/img/promo-enjoy.jpg', '🌸✨ YOUR BEAUTY, YOUR PRIVILEGE! 💗', 'Saatnya manjakan kulitmu di Naavagreen Mataram dengan promo spesial dari Telkomsel POIN! 💆‍♀️', '🎉 DISKON Rp65.000!
Nikmati potongan Rp65.000 untuk pembelian Facial Serum dengan menukarkan Telkomsel POIN melalui MyTelkomsel.', 'Rawat kulit lebih sehat dan glowing bersama Naavagreen — karena kamu layak tampil percaya diri setiap hari. 🌿', '📍 Naavagreen Mataram
Jl. Sriwijaya No. 7, Pagesangan, Kec. Mataram, Kota Mataram, Nusa Tenggara Barat

🕘 Senin–Sabtu | 09.00–20.00 WITA
🕘 Minggu | 09.00–17.00 WITA', '✨ Redeem your POIN, reveal your glow!', 'Periode promo: 9 April 2026 – 30 April 2027.', '[{"label": "Redeem Diskon Rp65.000 — Facial Serum", "url": "https://my.telkomsel.com/app/loyalty-reward-details/MTRNVGN100026"}]'::jsonb);
