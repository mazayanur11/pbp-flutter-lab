Nama    : Mazaya Nur Labiba

NPM     : 2106639485

Kelas   : C

## Tugas 7

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

## Tugas 8

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
- Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
- Navigator.pushReplacement() : Metode pushReplacement digunakan untuk menimpa/mengganti rute yang sekarang ke rute lain. Halaman baru ditampilkan dengan menggantikan halaman sebelumnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Card: Untuk membentuk sebuah kartu dari data yang telah disubmit
- Drawer: Panel untuk melakukan perpindahan tampilan atau navigator
- TextFormField: Komponen untuk memasukkan input text
- Form: Membuat sebuah container untuk dijadikan parent dari input input yang dideklarasikan
- ListTile: Komponen yang didalamnya juga bisa digunakan widget
- Column, Padding, Row: Mengatur posisi elemen secara horizontal dan vertikal, serta mengatur jarak antar elemen
- DropDownButton: Membuat dropdown untuk memilih input
- showDatePicker: Meminta input tanggal
- TextStyle: Styling text
- Container: Menampung beberapa komponen seperti div pada html
- TextButton: Membuat tombol berbasis text untuk menampun action dari user

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
- OnPressed: fungsi yang dipanggil saat tombol ditekan
- OnChange: mengubah value ke variabel yang dituju
- OnSaved: menambahkan behavior saat data disimpan
- OnTap: menampilkan teks secara langsung saat tombol ditekan
- OnComplete: getter data saat tombol ditekan

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator seperti stack untuk ditampilkan halaman yang muncul adalah yang paling atas. Ketika navitagor push, layer sebelumnya akan ditimpa dan tetap tersimpan di bawah layer yang baru, sementara pushreplacement akan mengganti layernya

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Membuat drawer.dart dan memasukkan drawer untuk halaman main, data, dan form ke dalamnya, tak lupa juga import halaman yang dapat dituju melalui drawer.
2. Membuat form.dart dan data.dart, kemudian menambahkan import drawer.dart ke semua halaman dan import ke halaman yang terkait, serta me-set drawer ke halaman drawer.dart yang sudah dibuat sebelumnya.
3. Membuat variabel judul, nominal, tanggal, dan jenis pada form.dart untuk menampung input dari user.
4. Membuat fungsi untuk memeriksa apakah input berupa angka atau tidak pada form.dart.
5. Membuat method build pada form.dart yang berisi form untuk meminta input user serta tombol simpan untuk memasukkan datanya
6. Membuat list array dari masing-masing jenis input untuk menampung semua input data dari user.
7. Membuat method addData pada data.dart untuk mengambil input data dari user.
8. Membuat card dari data-data yang sudah disumbit oleh user.

## Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita dapat mengambil data JSON tanpa membuat model terlebih dahulu. Data tersebut dapat dikirimkan dengan bentuk HTTP response. Namun, cara tersebut kurang efisien karena data akan sulit dilihat dan diakses, sehingga sebaiknya pengambilan data JSON dilakukan dengan membuat model saja.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- CheckBox : State untuk mengganti status (sudah ditonton atau belum)
- FutureBuilder : Untuk membuat widget dan fetching data
- SizedBox : Kotak untuk positioning
- Text : Untuk membuat text
- TextStyle Untuk styling text
- ListView : Untuk mengelompokkan beberapa item
- MaterialPageRoute : Untuk mengganti halaman yang ditampilkan
- Container : Untuk menampung widget
- BoxDecoration Untuk styling container
- Column : Untuk membuat container berbasis kolom
- ElevatedButton : Untuk membuat button

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama, menambahkan terlebih dahulu dependancy http. Kemudian, membuat model dari data yang akan di GET. Selanjutnya, membuat HTTP Request untuk GET. Setelah itu, response didecode menjadi JSON kemudian dikonversi menjadi model yang dibuat sebelumnya. Terakhir, membuat widget/component menggunakan data yang diGET dengan memanfaatkan FutureBuilder.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat my_watch_list_page.dart untuk menampilkan film-film yang ada di list.
2. Menambahkan halaman tampilan MyWatchList ke dalam drawer agar dapat muncul di drawer semua halaman.
3. Membuat model dari JSON tugas 3.
4. Membuat folder api dan file fetchData.dart di dalamnya untuk fetch JSON tugas 3.
5. Memanfaatkan method fecthWatchList di dalam fetchData.dart untuk menampilkan film-film yang ada di data JSON ke dalam my_watch_list_page.dart.
5. Membuat watch_list_detail.dart untuk menampilkan detail dari film.
6. Membuat onTap() pada setiap card berisi nama film untuk redirect ke halaman detail film dengan memanfaatkan MaterialPageRoute.
7. Menampilkan detail film di watch_list_detail.dart dengan menggunakan data JSON yang diakses melalui model MyWatchList yang telah dibuat sebelumnya.