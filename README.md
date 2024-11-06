1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
StatelessWidget: adalah widget yang tidak dapat berubah setelah dibangun. Artinya, data atau properti yang ditampilkannya tetap sama selama siklus hidup widget tersebut. StatelessWidget cocok digunakan untuk komponen yang hanya menampilkan informasi statis atau komponen yang tidak perlu berubah selama aplikasi berjalan.
StatefulWidget: Berbeda dengan StatelessWidget, StatefulWidget memungkinkan widget untuk memiliki "state" atau keadaan yang dapat berubah selama siklus hidupnya. StatefulWidget digunakan untuk komponen yang perlu memperbarui tampilannya berdasarkan perubahan data atau masukan pengguna.


2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
MaterialApp: Merupakan widget yang menampilkan keseluruhan aplikasi Flutter dan menyediakan beberapa konfigurasi umum seperti tema, judul, dan halaman awal (home).
Scaffold: Scaffold menyediakan struktur dasar untuk halaman aplikasi, seperti AppBar, body, drawer, dan bottom navigation.
AppBar: Widget ini digunakan sebagai bagian atas halaman yang umumnya berisi judul atau toolbar untuk aplikasi.
Column: Digunakan untuk menata widget dalam susunan vertikal.
Row: Digunakan untuk menata widget dalam susunan horizontal.
Container: Widget ini adalah kotak atau wadah yang dapat digunakan untuk menata dan mengatur properti layout lainnya, seperti warna, ukuran, dan border.
IconButton: Widget ini adalah tombol yang menampilkan ikon. Dalam aplikasi ini, digunakan untuk membuat tombol dengan ikon yang berbeda-beda (lihat daftar produk, tambah produk, logout).
Text: Digunakan untuk menampilkan teks pada layar.
InfoCard: Widget khusus yang dibuat untuk menampilkan informasi NPM, Name, dan Class dengan gaya yang konsisten.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah metode yang digunakan dalam StatefulWidget untuk memperbarui tampilan widget ketika ada perubahan data. Saat setState() dipanggil, Flutter akan membangun ulang widget sehingga tampilan mencerminkan perubahan data.
Variabel yang dideklarasikan dalam kelas State dari widget dapat dipengaruhi oleh setState(). Misalnya, variabel yang digunakan untuk menyimpan teks, angka, atau kondisi boolean bisa diperbarui dalam setState() untuk mempengaruhi tampilan.


4. Jelaskan perbedaan antara const dengan final.
const: Digunakan untuk mendeklarasikan variabel yang bersifat konstan secara waktu kompilasi (compile-time constant). Ini berarti bahwa nilai const harus diketahui dan ditetapkan saat aplikasi dikompilasi, dan nilainya tidak bisa diubah.
final: Digunakan untuk mendeklarasikan variabel yang nilainya tetap setelah diinisialisasi, tetapi nilainya bisa ditentukan saat aplikasi berjalan (runtime constant).

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Membuat MaterialApp dengan tema dan konfigurasi dasar: Saya membuat MaterialApp dan menerapkan ThemeData untuk menentukan tema warna. Hal ini dilakukan pada widget MyApp.
Menggunakan Scaffold untuk struktur halaman: Saya menggunakan Scaffold untuk menyediakan struktur dasar aplikasi, termasuk AppBar dan body untuk menampilkan konten utama.
Menambahkan widget InfoCard: InfoCard adalah widget yang menampilkan informasi "Store", "Name", dan "Class" secara konsisten dalam layout.
Menambahkan tiga tombol dengan warna berbeda-beda: Tombol-tombol ini disusun dalam Row dengan warna berbeda-beda untuk setiap fungsi
