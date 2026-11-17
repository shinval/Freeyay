-- Jalankan di Supabase > SQL Editor. Aman dijalankan ulang: baris Denpasar lama dihapus lalu dibuat ulang.
-- Key pakai awalan "dps-" supaya tidak menimpa promo Kupang/Mataram/Labuan Bajo.

delete from promos where key like 'dps-%';

insert into promos (key, sort, category, merchant, image, title, intro, benefit, extra, address, closing, fineprint, redeem)
values
  ('dps-eat', 10, 'EAT', 'SEKOPI Café Renon Bali', 'assets/img/promo-eat.jpg', '☕🌿 GOOD COFFEE, BETTER DEALS! ❤️✨', 'Ngopi makin hemat, nongkrong makin nikmat! Saatnya menikmati kopi dan minuman favorit di SEKOPI Café Renon Bali dengan promo spesial dari Telkomsel POIN. 🤎', '🎉 DISKON HINGGA Rp10.000!
Cukup tukarkan 1.000 Telkomsel POIN melalui MyTelkomsel dan nikmati penawaran spesial untuk pelanggan Telkomsel.', 'Ajak teman, pasangan, atau keluarga untuk menikmati quality time dengan secangkir kopi dan suasana nyaman di SEKOPI. 🥤🌿', '📍 SEKOPI Café Renon Bali
Jl. Tukad Balian No. 15, Renon, Denpasar Selatan, Kota Denpasar, Bali 80226

📸 Instagram: @sekopi.sekopi', '✨ Redeem your POIN, enjoy more moments!', '', '[{"label": "Redeem Diskon Rp10.000 — 1.000 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/DPS10K12025"}]'::jsonb),
  ('dps-shop', 11, 'SHOP', 'The Kemilau Ubud Hotel', 'assets/img/promo-shop.jpg', '🌿✨ YOUR NEXT STAY, YOUR EXCLUSIVE DEAL! ❤️', 'Escape to the heart of Ubud and enjoy a more memorable stay at The Kemilau Ubud with an exclusive offer from Telkomsel POIN! 🏝️🤎', 'Nikmati diskon menginap 15% hanya dengan menukarkan 1.500 Telkomsel POIN melalui MyTelkomsel. ✨

Dikelilingi suasana tropis yang menenangkan, The Kemilau Ubud menghadirkan kenyamanan hotel bintang 4, lengkap dengan private gym, sauna, dan fasilitas untuk melengkapi pengalaman staycation Anda.', 'Saatnya slow down, recharge, and enjoy the beauty of Ubud! 🌴', '📍 The Kemilau Ubud Hotel
Jl. Raya Pengosekan Ubud, Kecamatan Ubud, Kabupaten Gianyar, Bali 80571

📲 WhatsApp: +62 812-131-131
📸 Instagram: @thekemilau.ubud', '✨ Redeem your POIN, elevate your stay!', '', '[{"label": "Redeem Diskon Menginap 15% — 1.500 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/DPSTKU15002026"}]'::jsonb),
  ('dps-play', 12, 'PLAY', 'AeroXSpace Adventure Bali', 'assets/img/promo-play.jpg', '🚀✨ PLAY MORE, PAY LESS! 💙💜', 'Siap untuk petualangan seru yang penuh tantangan dan keseruan? Saatnya ajak keluarga dan teman-teman bermain di AeroXSpace Adventure Bali dengan promo spesial dari Telkomsel POIN! 🎮🧗‍♂️', 'Nikmati DISKON 20% untuk pelanggan Telkomsel hanya dengan menukarkan 200 Telkomsel POIN melalui MyTelkomsel. 🔥', 'Mulai dari wall climbing, VR experience, hingga berbagai wahana seru lainnya — waktunya eksplorasi, tantang diri, dan ciptakan momen tak terlupakan bersama orang tersayang! 💫', '📍 AeroXSpace Adventure Bali
Jl. Bypass Ngurah Rai No.999, Sidakarya, Denpasar Selatan, Kota Denpasar, Bali 80224

🕙 Setiap hari | 10.00–19.00 WITA
📲 WhatsApp: +62 878-1699-1999
📸 Instagram: @aeroxspace.adventure', '🎟️ Redeem your POIN, unlock the adventure!', '', '[{"label": "Redeem Diskon 20% — 200 Poin", "url": "https://my.telkomsel.com/app/loyalty-reward-details/DPSAXS20002026"}]'::jsonb),
  ('dps-enjoy', 13, 'ENJOY', 'Lumina Aesthetics Clinic', 'assets/img/promo-enjoy.jpg', '✨ LOOK GOOD, FEEL CONFIDENT, EVERYDAY! 🤎', 'Saatnya tampil lebih percaya diri dengan perawatan beauty & dental care di Lumina Aesthetics Clinic Bali melalui promo eksklusif Telkomsel POIN! ❤️✨', 'Nikmati berbagai penawaran spesial berikut:

🦷 TUKAR 1.500 TELKOMSEL POIN
Diskon 10% untuk Teeth Whitening, Scaling & Composite Veneer.

💆‍♀️ TUKAR 1.000 TELKOMSEL POIN
Diskon hingga 30% untuk berbagai treatment favorit, mulai dari skin rejuvenation, laser treatment, hingga body contouring.', '✨ Saatnya manjakan diri, rawat kulit, dan hadirkan senyum terbaikmu bersama Lumina Aesthetics Clinic!', '📍 Lumina Aesthetics Clinic
Jl. Dewi Sri No. 88E, Legian, Badung, Bali 80361

📲 WhatsApp: +62 812-2888-8837
📸 Instagram: @luminaaesthetics

🕘 Senin–Sabtu: 09.30–19.00 WITA
🕙 Minggu: 10.00–17.00 WITA', '🎁 Redeem your POIN, reveal your best self!', '', '[{"label": "Lihat & Redeem Promo Lumina", "url": "https://linktr.ee/LuminaAestheticsBali"}]'::jsonb);
