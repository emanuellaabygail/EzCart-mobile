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
