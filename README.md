# Laporan Praktikum Pemrograman Mobile

| | |
|---|---|
| **Nama** | Fariz Rahman Syahida |
| **NIM** | H1D024008 |
| **Shift** | Awal F / Akhir C |
| **Praktikum** | Pemrograman Mobile |

**Daftar Isi:** [Pertemuan 2](#pertemuan-2)

---

## Pertemuan 2
**Tanggal**: Selasa, 8 September 2026  
**Topik:** Pengenalan Framework Flutter, Dart, Widget, & Layout UI

![Form Produk](docs/produk_form.png)
![Detail Produk](docs/produk_detail.png)
![List Data Produk](docs/produk_page.png)

**Yang Dikerjakan:**
- **Form Produk (`produk_form.dart`)**: Membuat formulir input menggunakan `StatefulWidget` dengan `TextEditingController` untuk menangkap data Kode Produk, Nama Produk, dan Harga Produk, serta mengimplementasikan navigasi `Navigator.push` saat tombol Simpan ditekan.
- **Detail Produk (`produk_detail.dart`)**: Membuat tampilan penampung data menggunakan `StatelessWidget` untuk menampilkan parameter hasil lemparan/parsing data dari form produk secara dinamis.
- **List Data Produk (`produk_page.dart`)**: Membuat tampilan daftar produk menggunakan `ListView`, `Card`, dan `ListTile` untuk menampilkan sekumpulan item/data secara terstruktur.

**Kesimpulan:**
Pertemuan kedua memberikan pemahaman mendasar mengenai kerangka kerja Flutter dan bahasa pemrograman Dart. Mahasiswa mempelajari perbedaan antara `StatelessWidget` dan `StatefulWidget`, pengelolaan struktur tata letak (layout) UI dengan widget dasar (`Column`, `Row`, `Container`, `ListView`), serta mekanismenya dalam melakukan navigasi antar-layar dan *data passing* antar-widget.