Nama    : Mazaya Nur Labiba

NPM     : 2106639485

Kelas   : C

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget yang hanya bertugas untuk menampilkan sesuatu secara statis. Tanpa melakukan tracking perubahan data dari waktu ke waktu. Intinya, tampilan dari stateless widget akan seperti itu-itu saja dan tidak ada mekanisme untuk memantau state perubahan aplikasi.
- Stateful Widget merupakan widget yang dinamis. Ini berarti widget ini dapat merubah tampilannya sesuai response dari events yang dipicu baik dari interaksi user maupun adanya variabel atau nilai baru yang didapat. Stateful widget dapat mengubah atau mengupdate tampilan, menambah widget lainnya, mengubah nilai variabel, icon, warna dan masih banyak lagi.
- Terdapat perbedaan yang signifikan antara stateless dan stateful widget. Pada stateless widget, seluruh konfigurasi yang dimuat di dalamnya diinisiasikan sejak awal dan tidak dapat diubah, sehingga fungsi setState() tidak dapat digunakan dalam stateless widget. Oleh karena itu, stateless widget cocok kita gunakan ketika kita hanya perlu menampilkan data yang sifatnya statis atau tidak perlu adanya perubahan nilai. Stateful widget merupakan suatu widget yang sifatnya dinamis atau dapat berubah-ubah, kebalikan dari stateless widget. Oleh karena itu, stateful widget cocok kita gunakan ketika kita menampilkan data dari database yang sifatnya akan berubah-ubah atau data apapun yang sifatnya akan berubah dikemudian hari.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text : Untuk menampilkan text dan menentukan style dari text yang ingin ditampilkan
- FloatingActionButton : Untuk membuat button yang dapat melakukan action sesuai dengan keinginan kita
- Row : Membuat element dalam baris/horizontal
- Column : Membuat element dalam kolom/vertikal
- Visibility : Membuat element dalam widget dapat disembunyikan/ditampilkan
- Center : Menaruh element ke tengah halaman
- Icon : Memberi icon ke sebuah element

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() memberi tahu framework Flutter bahwa ada sesuatu yang berubah dalam state, yang menyebabkannya menjalankan kembali metode build untuk menampilan nilai yang diperbarui. Jika kita mengubah _counter tanpa memanggil setState(), maka metode build tidak akan dipanggil lagi, jadi tidak terjadi apa-apa.

## Jelaskan perbedaan antara const dengan final.
Const dan final adalah modifier yang bersifat immutable sehingga tidak dapat diubah. Namun terdapat perbedaan antar keduanya, const dideklarasikan sebelum runtime, sedangkan final dideklarasikan setelah runtime dan hanya untuk sekali. Oleh karena itu, nilai final akan diketahui pada saat runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat proyek baru dengan cara menjalankan "flutter create counter_7" di cmd
2. Mengubah judul hompage menjadi "Program Counter"
3. Membuat fungsi _decrementCounter untuk mengurangi nilai dari _counter, yang di dalamnya terdapat setState() agar fungsi dapat dipanggil
4. Membuat kondisi di children body untuk ganjil genap, jika  _counter bernilai genap maka akan menampilkan teks "GENAP" dengan warna merah. Namun, jika _counter bernilai ganjil maka akan menampilkan teks "GANJIL" dengan warna biru
5. Membuat floatingActionButton dengan widget Visibility untuk membuat tombol dan membuat tombol menjadi ditampilkan/disembunyikan. 
6. Membuat 2 child yang merupakan tombol "+" dan tombol "-". Jika _counter > 0 maka tombol "-" akan ditampilkan. Jika tombol "+" dipencet, akan memanggil fungsi _incrementCounter. Jika tombol "-" dipencet, akan memanggil fungsi _decrementCounter
7. Menjalankan "flutter run" untuk melihat tampilan app yang sudah dibuat