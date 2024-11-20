1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan karena:

- Model menentukan struktur data yang akan disimpan di database Django dan dikirimkan melalui API.
- Tanpa model, Django tidak bisa memahami bagaimana data diorganisasikan, yang dapat menyebabkan error ketika membuat atau mengakses data.
- JSON membutuhkan representasi data yang konsisten, dan model memastikan validitas data tersebut.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk:

- Mengirimkan request HTTP (GET, POST, PUT, DELETE) dari Flutter ke backend Django.
- Mengambil data dari API Django untuk ditampilkan di aplikasi Flutter.
- Melakukan autentikasi dengan mengirimkan data login ke endpoint Django.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi CookieRequest:

- Menyimpan cookie session pengguna setelah login.
- Mengelola state autentikasi pengguna di seluruh aplikasi Flutter.

Instance CookieRequest perlu dibagikan untuk:

- Memastikan semua komponen menggunakan session yang sama, sehingga data pengguna tetap konsisten.
- Mempermudah autentikasi di berbagai bagian aplikasi.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    1. Input Data di Flutter:

      - Pengguna mengisi form di Flutter.
      - Data dikirim melalui HTTP POST ke Django menggunakan library http.

    2. Proses di Django:

      - Django menerima data dan memprosesnya sesuai logika backend.
      - Django menyimpan data di database atau mengembalikan data JSON sebagai respons.

    3. Pengambilan Data di Flutter:

      - Flutter mengirimkan HTTP GET ke endpoint Django untuk mengambil data JSON.
      - Data JSON di-decode dan ditampilkan di aplikasi.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    1. Registrasi:

      - Flutter mengirimkan data registrasi (username, password) ke endpoint Django.
      - Django membuat user baru dan mengembalikan respons sukses atau error.

    2. Login:

      - Flutter mengirimkan data login ke endpoint Django.
      - Django memvalidasi user, membuat session, dan mengembalikan cookie session ke Flutter.

    3. Logout:

      - Flutter mengirimkan request logout ke Django.
      - Django menghapus session dan mengembalikan respons.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    1. Membuat Model di Django:

      Membuat model kustom dan melakukan migrasi database.
      Membuat endpoint JSON menggunakan Django REST Framework.
      
    2. Deploy Django:

      Deploy proyek Django secara lokal untuk integrasi dengan Flutter.

    3. Membuat Halaman Registrasi dan Login di Flutter:

      Membuat form input.
      Mengintegrasikan endpoint Django untuk registrasi dan login menggunakan HTTP POST.

    4. Integrasi Sistem Autentikasi:

      Menggunakan CookieRequest untuk menyimpan session pengguna.

    5. Halaman Daftar dan Detail Item:

      Membuat halaman daftar dan detail di Flutter.
      Mengambil data dari endpoint JSON menggunakan HTTP GET.

    6. Implementasi Filter:

      Menambahkan parameter filter pada request untuk mendapatkan data item sesuai pengguna login.
