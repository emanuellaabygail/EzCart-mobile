<h1>EzCart</h1>
<h2>Emanuella Abygail - 2306152185 - PBP C</h2>

<details>
<summary><h3>Tugas 7</h3></summary>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya!
**Stateful widgets** adalah widgets yang dapat mengubah *state* ataupun tampilannya. Tampilan widget dapat berubah karena interaksi pengguna atau terjadi *event* internal yang memicu perubahan data.
**Stateless widgets** adalah widgets yang statis, komponen-komponen pada UI hanya dapat diatur pada konfigurasi *constructor* sehingga data tidak akan berubah.
**Perbedaan** dari stateful dan stateless widgets adalah stateful widgets adalah widgets yang dinamis, widgets ini akan diubah sesuai dengan perubahan data ataupun user action, stateful widgets dapat dirender ulang seiring dengan perubahan state. Stateless widgets adalah widgets yang statis, tidak tergantung pada perubahan data, dan hanya dirender sekali.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya!
Berikut adalah widget yang digunakan pada proyek ini:
- **`Scaffold`** adalah widget yang berfungsi untuk menyediakan struktur susunan dasar dari aplikasi. Dengan menggunakan Scaffold, kita dapat menggunakan `AppBar` pada bagian atas aplikasi dan `body` sebagai wadah konten aplikasi.
- **`AppBar`** adalah widget yang berfungsi untuk menampilkan tulisan judul aplikasi pada bagian atas. `AppBar` ini bersifat konsisten sehingga akan terus berada di atas layar. 
- **`Padding`** adalah widget yang berfungsi untuk memberikan jarak di sekitar elemen-elemen pada konten aplikasi sehingga secara visual, aplikasi terlihat rapi.
- **`Column`** adalah widget yang berfungsi untuk menyusun elemen-elemen di dalamnya (*children*) secara vertikal.
- **`Row`** adalah widget yang berfungsi untuk menyusun elemen-elemen di dalamnya (*children*) secara horizontal.
- **`Card`** adalah widget yang berfungsi sebagai sebuah *container* dengan design *built in*, yaitu rounded corners dan bayangan di sekelilingnya.
- **`InkWell`** adalah widget yang berfungsi untuk merespon action user, yaitu saat user menekan tombol. Ketika user menekan tombol, `InkWell` menyebabkan terjadinya perubahan warna dengan *ripple effect* dan juga menyebabkan munculnya `SnackBar`.
- **`Icon`** adalah widget yang berfungsi untuk menampilkan sebuah gambar ikon. Flutter memiliki class bawaan `Icons` yang menyediakan berbagai ikon yang dapat digunakan oleh pengguna.
- **`Text`** adalah widget yang berfungsi untuk menampilkan konten berupa tulisan pada aplikasi.
- **`SnackBar`** adalah widget yang berfungsi untuk menunjukan pesan singkat pada bagian bawah layar ketika suatu menu dipilih. 
- **`MaterialApp`** adalah widget yang menjadi akar dari aplikasi kita. Widget ini berfungsi untuk menyediakan properti untuk keseluruhan aplikasi seperti judul, tema, dan `home` widget.
- **`MyHomePage`** adalah widget yang menjadi wadah keseluruhan struktur aplikasi. Di dalam `MyHomePage` terdapat berbagai komponen UI yang menjadi komponen dari aplikasi kita.
- **`InfoCard`** adalah widget custom yang berfungsi untuk menampung informasi dalam format *card* sehingga penampilan aplikasi konsisten dan rapi.
- **`ItemCard`** adalah widget custom yang berfungsi untuk menampilkan menu dalam bentuk *card* yang dapat berfungsi seperti sebuah tombol yang ketika ditekan oleh user, akan memicu munculnya `SnackBar` untuk menunjukkan menu yang dipilih.

### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!
Fungsi `setState()` berguna untuk memicu proses render ulang dari sebuah *stateful widget*. Ketika terdapat perubahan data yang akan mengubah UI aplikasi, kita perlu memanggil fungsi `setState()`. Pada proyek ini, tidak ada variabel yang terdampak oleh fungsi tersebut karena semua widget bersifat *stateless*, tetapi pada penggunaannya secara *general*, segala variabel yang dibuat di datang class `State` pada sebuah `StatefulWidgets` dapat terdampak oleh fungsi `setState()`.

### 4. Jelaskan perbedaan antara const dengan final!
Variabel pada `const` dan `final` sama-sama tidak dapat di-*assigned* kembali. Perbedaan antara keduanya adalah variabel pada `const` nilainya harus sudah diketahui pada saat program di-*compile*, sedangkan variable pada `final` dapat didefinisikan pada saat *runtime*. Selain itu, jika ada sebuah collection yang dideklarasikan menggunakan `const`, semua nilai di dalam collection tersebut tidak bisa diubah karena semuanya bersifat `const`, sedangan jika sebuah collection dideklarasikan menggunakan `final`, nilai di dalamnya dapat diubah karena semua nilai di dalamnya tidak bersifat `final`.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas!
- Pertama-tama saya membuat sebuah proyek baru dengan menjalankan command `flutter create ezcart` dan masuk ke direktori baru bernama ezcart yang otomatis dibuat ketika perintah tersebut dijalankan. 
- Lalu, saya merapikan struktur proyek dengan membuat file baru bernama `menu.dart` pada direktori `ezcart/lib` yang awalnya hanya berisi `main.dart`. Saya memindahkan class `MyHomePage` dan `_MyHomePageState` dari file `main.dart` ke `menu.dart`.
- Selanjutnya, saya membuat widget sederhana. Saya mengubah tema warna aplikasi pada `colorScheme` yang terdapat pada `main.dart`. Lalu saya mengubah sifat widget yang tadinya *stateful* menjadi *stateless*. Kemudian, saya membuat card sederhana berisi data NPM, nama, dan juga kelas dan membuat class baru, yaitu `InfoCard` yang akan menjadi wadah dengan struktur *card* yang akan menampilkan data. Saya juga membuat *button card* dengan membuat class `ItemHomePage`, list of `ItemHomePage`, dan class `ItemCard` untuk menampilkan tombol-tombol yang dibuat. Pada class `ItemCard`, saya mengatur susunan tombol-tombol, warna tombol, dan bagaimana masing-masing tombol akan memunculkan `SnackBar` yang menampilkan pesan "Kamu telah menekan tombol {nama tombol}" ketika tombol tersebut ditekan. Setelah mendefinisikan masing-masing komponen yang akan muncul pada aplikasi, saya mengintegrasikan `InfoCard` dan `ItemCard` untuk ditampilkan di `MyHomePage` dengan cara mengubah bagian `Widget build()`.

</details>

<details>
<summary><h3>Tugas 8</h3></summary>

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Dalam Flutter, `const` digunakan untuk medeklarasikan suatu konstanta atau suatu object immutable yang nilainya terdefinisi pada saat program di-*compile*. 

Keuntungan menggunakan `const` adalah efisiensi memori karena objek yang dideklarasikan menggunakan `const` hanya dibuat sekali, kinerja yang lebih baik karena objek `const` dibuat saat program di-*compile* sehingga tidak perlu membuat ulang objek saat program dijalankan dan aplikasi menjadi lebih efisien, kode lebih stabil karena objek `const` tidak dapat diubah atau immutable, dan objek `const` dioptimalkan oleh Dart secara *canonicalization* sehingga kinerja aplikasi meningkat.

Sebaiknya kita menggunakan `const` ketika membuat suatu *Stateless Widgets* yang tidak akan berubah, ketika membuat suatu parameter konstanta yang bernilai tetap, dan membuat objek yang ingin digunakan kembali tanpa mengubah nilainya.

Sebaiknya kita tidak menggunakan `const` saat membuat *Stateful Widgets* yang propertinya dapat berubah tergantung pada statenya, membuat properti suatu objek yang nilainya dapat berubah ketika *runtime*, membuat variabel yang nilainya didapatkan berdasarkan kondisi ataupun input pengguna, dan saat membuat objek yang nilainya belum didefinisikan pada saat program di-*compile*. 

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Row dan Column digunakan untuk menyusun widget. Column digunakan untuk menyusun widget secara vertikal dari atas ke bawah, sedangkan row digunakan utnuk menyusun widget dari kiri ke kanan.
Contoh penggunaan Column:
```dart
Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        const Text('Item 1', style: TextStyle(fontSize: 24)),
        const Text('Item 2', style: TextStyle(fontSize: 24)),
        const Text('Item 3', style: TextStyle(fontSize: 24)),
    ],
),
```

Contoh penggunaan Row:
```dart
Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const Icon(Icons.star, size: 50, color: Colors.yellow),
    const Icon(Icons.favorite, size: 50, color: Colors.red),
    const Icon(Icons.thumb_up, size: 50, color: Colors.blue),
    ],
),
```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada proyek ini, elemen input yang saya gunakan adalah `TextFormField` untuk memasukan nama, amount, dan juga description dari barang yang ingin ditambahkan. Terdapat berbagai elemen input lain pada Flutter, berikut adalah beberapa di antaranya:
1. `TextField`: adalah widget input teks dasar yang menerima masukan dari user. Perbedaannya dengan `TextFormField` adalah widget ini tidak memiliki properti `validator` sehingga tidak dapat memvalidasi input user.
2. `Checkbox`: adalah widget yang menerima input pilihan biner berupa benar atau salah berdasarkan apakah user menekan widget tersebut. 
3. `Radio`: adalah widget yang menerima input satu pilihan tunggal dari beberapa opsi. Widget ini ideal digunakan ketika kita membutuhkan user untuk memilih satu opsi dari beberapa pilihan.
4. `DropdownButton`: adalah widget yang menerima input pilihan dari daftar pilihan yang ditunjukan kepada user dengan tampilan dropdown.
5. `Switch`: adalah widget untuk mengaktifkan ataupun menonaktifkan suatu opsi yang berupa on atau off. Widget ini mengganti status antara aktif atau tidak aktif.
6. `Slide`: adalah widget yang menerima input berupa pilihan nilai dari rentang tertentu.
7. `DatePicker`: adalah widget yang menerima input pilihan tanggal. Widget ini akan menunjukan pilihan tanggal kemudian user dapat memilih tanggal tersebut.
8. `TimePicker`: adalah widget yang menerima input pilihan waktu. Widget akan membukan pop-up untuk memilih waktu (jam dan menit) lalu user akan memilih waktu yang sesuai.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk mengatur tema dari aplikasi ini, saya menggunakan properti `ThemeData` pada file `main.dart`. Pada properti ini, saya mengatur warna primer dan sekunder yang akan digunakan pada aplikasi saya sehingga pengaturan warna yang digunakan pada keseluruhan aplikasi konsisten.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk menangani navigasi dalam aplikasi, saya menggunakan widget `Navigator`. Widget ini berguna untuk mengelola stack halaman. Untuk membuka halaman baru dari halaman sebelumnya, saya menambahkan perintah `Navigator.push()`.

</details>

<details>
<summary><h3>Tugas 9</h3></summary>

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON sangat penting karena model membantu mendefinisikan struktur dan tipe data secara konsisten. Dengan model, kita dapat memetakan data JSON menjadi objek yang dapat digunakan di aplikasi, memvalidasi data sebelum diproses, dan meminimalkan risiko kesalahan saat berinteraksi dengan API. Tanpa model, kesalahan dapat terjadi ketika struktur data tidak sesuai atau tipe data tidak cocok, sehingga proses parsing atau pemrosesan data menjadi lebih rumit.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http yang diimplementasikan pada tugas ini memiliki fungsi utama untuk melakukan komunikasi antara aplikasi Flutter dan server. Library ini digunakan untuk mengirimkan permintaan HTTP, seperti GET untuk mengambil data dan POST untuk mengirimkan data. Selain itu, library ini juga memungkinkan kita untuk menambahkan header atau parameter, serta menangani status respons dari server seperti berhasil, gagal, atau tidak ditemukan.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berfungsi untuk mengelola cookie yang digunakan dalam proses autentikasi berbasis sesi. Cookie ini digunakan untuk memastikan bahwa sesi autentikasi pengguna tetap terjaga selama mereka menggunakan aplikasi. Instance dari CookieRequest perlu dibagikan ke semua komponen aplikasi agar status autentikasi dan informasi cookie tetap konsisten, sehingga pengguna tidak perlu login ulang saat berpindah antar fitur atau halaman aplikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dari input hingga dapat ditampilkan di Flutter dimulai dari pengguna yang memasukkan data pada form input di aplikasi Flutter. Data tersebut kemudian dikirimkan ke server Django melalui permintaan HTTP dalam format JSON. Server memproses data, seperti menyimpan ke database atau memvalidasi input, dan mengembalikan respons JSON. Aplikasi Flutter kemudian mem-parsing data JSON ini ke dalam model yang sudah ditentukan sebelumnya dan menampilkan data tersebut pada antarmuka pengguna.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi pada aplikasi dimulai dengan pengguna yang melakukan register dengan memasukkan data akun yang dikirimkan ke endpoint register di Django. Data ini disimpan setelah validasi. Untuk login, pengguna mengirimkan kredensial ke endpoint login, yang kemudian memvalidasi informasi dan mengembalikan cookie sesi jika berhasil. Cookie ini digunakan untuk mengakses fitur yang membutuhkan autentikasi. Logout dilakukan dengan mengirimkan permintaan ke endpoint logout, yang menghapus sesi pengguna di server. Setelah login berhasil, aplikasi menerima data pengguna dari server dan menampilkan menu atau fitur yang sesuai di antarmuka Flutter.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
**1. Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter**
- Membuat form registrasi menggunakan widget `TextFormField` untuk input seperti username, password, dan email.
- Mengirimkan data form ke endpoint Django `/auth/register/` menggunakan `http.post`.
- Memvalidasi respons server untuk memastikan apakah proses registrasi berhasil atau terjadi kesalahan.
- Menambahkan notifikasi kepada pengguna berdasarkan hasil respons dari server.

**2. Membuat halaman login pada proyek tugas Flutter**
- Membuat halaman login dengan form input untuk username dan password.
- Mengirimkan data login ke endpoint Django `/auth/login/` menggunakan `http.post`.
- Jika login berhasil, menyimpan cookie sesi menggunakan `CookieRequest` untuk autentikasi pengguna.
- Menambahkan validasi untuk menangani kasus login gagal, seperti username atau password salah, dan memberikan notifikasi kepada pengguna.

**3. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter**
- Mengaktifkan middleware autentikasi berbasis sesi pada Django.
- Menggunakan `CookieRequest` di Flutter untuk menyimpan cookie sesi setelah login berhasil.
- Mengatur agar setiap permintaan HTTP dari Flutter menyertakan cookie untuk mengakses endpoint yang memerlukan autentikasi.

**4. Membuat model kustom sesuai dengan proyek aplikasi Django**
- Mendefinisikan model `Item` di Django dengan atribut seperti `name`, `price`, `description`, dan `owner`.
- Membuat serializer menggunakan `serializers.ModelSerializer` untuk mengubah objek Django menjadi format JSON.
- Membuat endpoint JSON untuk daftar item dengan menggunakan Django REST framework.

**5. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy**
- Membuat endpoint di Django untuk menampilkan daftar item melalui URL `/items/`.
- Mengambil data dari endpoint ini menggunakan `http.get` di Flutter.
- Mem-parsing respons JSON menjadi objek Dart menggunakan model yang telah dibuat.
- Menampilkan daftar item pada halaman dengan widget `ListView.builder`, menampilkan `name`, `price`, dan `description` untuk setiap item.

**6. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar item**
- Menambahkan navigasi pada halaman daftar item dengan `Navigator.push` untuk berpindah ke halaman detail ketika item ditekan.
- Membuat halaman detail yang menerima data item sebagai parameter.
- Menampilkan seluruh atribut item pada halaman ini menggunakan widget seperti `Text` dan `Column`.
- Menambahkan tombol "Kembali" dengan widget `ElevatedButton` yang memanfaatkan `Navigator.pop` untuk kembali ke halaman daftar item.

**7. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login**
- Menambahkan atribut `owner` pada model `Item` di Django, yang merupakan `ForeignKey` ke model User.
- Memodifikasi query pada endpoint `/items/` untuk hanya mengambil item milik pengguna yang sedang login.
- Mengirimkan cookie autentikasi bersama permintaan dari Flutter untuk memastikan hanya item yang relevan yang ditampilkan di halaman daftar item.

</details>