# Timeline Iterasi Pengembangan MVP Aplikasi TaskifyDB
**(Flutter & Appwrite)**

**Total Estimasi Waktu MVP: 6 - 10 Minggu**

---

## Fase 0: Persiapan & Desain (1 - 2 Minggu)

### Minggu 1: Perencanaan & Desain Awal
*   **Aktivitas:**
    *   [ ] Finalisasi SRS dan lingkup MVP.
    *   [ ] Riset kompetitor (jika belum).
    *   [ ] Pembuatan User Flow & Wireframes untuk alur utama.
    *   [ ] Desain awal UI Mockups (layar kunci).
    *   [ ] Setup project Appwrite (instance, project).
    *   [ ] Setup project Flutter.
*   **Output:** User flow, wireframes, mockups awal, project Appwrite & Flutter dasar.
*   **Pihak Terlibat:** UI/UX Designer, Lead Developer/Product Owner.

### Minggu 2 (Opsional, jika desain kompleks): Desain Detail & Prototyping
*   **Aktivitas:**
    *   [ ] Finalisasi desain UI detail untuk semua layar MVP.
    *   [ ] Pembuatan prototipe interaktif (opsional).
    *   [ ] Review desain dengan tim developer.
    *   [ ] Detailing struktur koleksi Appwrite dan permissions.
*   **Output:** Desain UI final, prototipe interaktif, skema database Appwrite matang.
*   **Pihak Terlibat:** UI/UX Designer, Developer.

---

## Fase 1: Pengembangan Inti (4 - 6 Minggu)

### Iterasi 1 (Sprint 1 - 2 Minggu): Autentikasi & Struktur Dasar
*   **Fokus:** Fungsionalitas login, registrasi, navigasi dasar.
*   **Tugas Flutter:**
    *   [ ] Implementasi layar Registrasi & Login.
    *   [ ] Integrasi Appwrite Account API (registrasi, login).
    *   [ ] Manajemen state sesi pengguna.
    *   [ ] Setup navigasi dasar aplikasi.
    *   [ ] Layout dasar halaman profil (untuk logout).
*   **Tugas Appwrite:**
    *   [ ] Konfigurasi Appwrite Account service.
    *   [ ] Setup user attributes (jika ada kustomisasi).
*   **Testing:** Fungsionalitas registrasi, login, logout.
*   **Review & Perencanaan:** Review Sprint 1, Perencanaan Sprint 2.

### Iterasi 2 (Sprint 2 - 2 Minggu): Manajemen Tugas
*   **Fokus:** Pembuatan, pengeditan, dan penghapusan tugas.
*   **Tugas Flutter:**
    *   [ ] Implementasi layar Daftar Tugas (ambil data dari Appwrite).
    *   [ ] Implementasi fitur pembuatan tugas baru.
    *   [ ] Implementasi layar Detail Tugas (info & gambar jika ada).
    *   [ ] Integrasi Appwrite Database API (read & write).
*   **Tugas Appwrite:**
    *   [ ] Pembuatan koleksi `tasks` (atribut, permissions).
*   **Testing:** Pembuatan, pengeditan, dan penghapusan tugas.
*   **Review & Perencanaan:** Review Sprint 2, Perencanaan Sprint 3.

### Iterasi 3 (Sprint 3 - 2 Minggu): Penjadwalan & Notifikasi
*   **Fokus:** Alur penjadwalan tugas dan notifikasi.
*   **Tugas Flutter:**
    *   [ ] Implementasi fitur penjadwalan tugas.
    *   [ ] Implementasi notifikasi untuk tugas yang mendekati jatuh tempo.
*   **Tugas Appwrite:**
    *   [ ] Pembuatan Appwrite Function untuk notifikasi.
*   **Testing:** Alur penjadwalan dan pengujian notifikasi.
*   **Review & Perencanaan:** Review Sprint 3, Perencanaan Sprint 4.

---

## Fase 2: Finalisasi & Pengujian MVP (1 - 2 Minggu)

### Iterasi 4 (Sprint 4 - 1-2 Minggu): Riwayat Tugas & Polish
*   **Fokus:** Menyelesaikan fitur kecil, polish UI/UX, pengujian end-to-end.
*   **Tugas Flutter:**
    *   [ ] Implementasi layar Riwayat Tugas Pengguna.
    *   [ ] Polish UI/UX di semua layar.
    *   [ ] Penanganan error & pesan informatif.
    *   [ ] Optimasi performa dasar.
*   **Tugas Appwrite:**
    *   [ ] Finalisasi rules & permissions.
    *   [ ] Pastikan semua Functions berjalan baik.
*   **Testing:**
    *   [ ] Pengujian menyeluruh (end-to-end) semua fitur MVP.
    *   [ ] Pengujian di berbagai perangkat (jika memungkinkan).
    *   [ ] Pengujian UI/UX.
*   **Admin:**
    *   [ ] Input lebih banyak data tugas untuk konten awal.
*   **Review & Perencanaan:** Review Sprint 4, Persiapan Rilis MVP.

---

## Fase 3: Rilis & Iterasi Berikutnya (Berkelanjutan)

### Minggu Berikutnya Pasca Development Freeze:
*   **Aktivitas:**
    *   [ ] Persiapan build rilis (Android & iOS).
    *   [ ] Proses submit ke Play Store & App Store.
    *   [ ] Monitoring awal setelah rilis.
    *   [ ] Kumpulkan feedback dari pengguna awal.
    *   [ ] Perencanaan Iterasi/Fitur selanjutnya.

---

**Catatan:**
*   `[ ]` dapat digunakan sebagai checkbox untuk menandai progres.
*   Timeline ini adalah estimasi dan dapat disesuaikan.
*   Testing sebaiknya dilakukan secara berkelanjutan, tidak hanya di akhir.
*   Komunikasi tim yang efektif adalah kunci.