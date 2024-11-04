<h1>EzCart</h1>

<details>
<summary>Tugas 7</summary>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
**Stateful widgets** adalah widgets yang dapat mengubah *state* ataupun tampilannya. Tampilan widget dapat berubah karena interaksi pengguna atau terjadi *event* internal yang memicu perubahan data.
**Stateless widgets** adalah widgets yang statis, komponen-komponen pada UI hanya dapat diatur pada konfigurasi *constructor* sehingga data tidak akan berubah.
**Perbedaan** dari stateful dan stateless widgets adalah stateful widgets adalah widgets yang dinamis, widgets ini akan diubah sesuai dengan perubahan data ataupun user action, stateful widgets dapat dirender ulang seiring dengan perubahan state. Stateless widgets adalah widgets yang statis, tidak tergantung pada perubahan data, dan hanya dirender sekali.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Terdapat 4 *widget* pada proyek ini, yaitu MyApp yang terdapat pada main.dart dan juga MyHomePage, InfoCard, dan ItemCard yang terdapat pada menu.dart. **MyApp** adalah widget yang menjadi *root* atau akar dari aplikasi, widget ini yang menjadi wadah untuk menampilkan keseluruhan aplikasi kita. **MyHomePage** adalah widget yang menyediakan struktur dasar halaman berupa AppBar dan body, widget ini menyususn tampilan dari aplikasi kita. **InfoCard** adalah widget yang berfungsi untuk menampilkan informasi nama, NPM, dan kelas. **ItemCard** adalah widget yang berfungsi untuk menampilkan tombol-tombol serta Snackbar ketika tombol tersebut ditekan.

### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` berguna untuk memicu proses render ulang dari sebuah *stateful widget*. Ketika terdapat perubahan data yang akan mengubah UI aplikasi, kita perlu memanggil fungsi `setState()`.
</details>
