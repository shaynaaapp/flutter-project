**Shayna Putri Fitria - 2106703084**

# **Tugas 7 - Elemen Dasar Flutter**

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

    Stateless Widget

    - Widget yang stateless tidak berubah atau immutable, 
    - Hanya memiliki final properties yang didefinisikan saat construction

    Stateful Widget

    - Widget yang stateful dapat berubah ketika ada perubahan eksternal atau ketika ada user yang berinteraksi, bersifat mutable
    - Contoh: Checkbox, Radio, Slider


### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

    - Menggunakan widget Text untuk menampilkan counter dan menunjukkan apakah dia GANJIL atau GENAP
    - Menggunakan widget FloatingActionButton sebagai event untuk menambah atau mengurangi counter yang akan di pressed oleh user

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    - Fungsi setState hanya dapat digunakan pada stateful widget
    - setState() berfungsi sebagai penanda bahwa ada event yang sedang menimbulkan perubahan pada State yang juga akan merubah widget, maka aplikasi akan memuat ulang program dan nilai/ data pada widget akan berubah
  
### 4. Jelaskan perbedaan antara const dengan final.

    Final
    - Variabel yang Final akan meletakkan kata 'final' sebelum variabelnya
    - Nilai variabel Final hanya akan diinisialisasi di awal atau pertama kali didefinisikan
    - Akan diketahui saat run time, sehingga variabel boleh sudah atau belum memiliki nilai variabel
    - Dapat digunakan untuk deklarasi variabel yang ingin bersifat immutable

    Const
    - Variabel yang Const akan meletakkan kata 'const' sebelum variabelnya
    - Dapat digunakan untuk deklarasi variabel yang ingin bersifat mutable dan nilainya bersifat konstan
    - Akan diketahui saat compile time, sehingga variabel harus memiliki value atau didefinisikan secara langsung

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    - Membuat sebuah program Flutter baru dengan nama counter_7: Menjalankan command 'flutter create' pada command prompt
    - **Mengubah tampilan program menjadi seperti berikut**: Membuat 2 FloatingActionButton untuk tombol increment (+) dan decrement (-) yang akan dihubungkan dengan function atau event listenernya masing-masing
    - Tombol + menambahkan angka sebanyak satu satuan: Dilakukan dengan membuat function increment counter yang di trigger oleh FloatingActionButton (+)
    - Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter: Dilakukan dengan membuat function decrement yang di trigger oleh FloatingActionButton (-)
    - Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru: Membuat if conditional dalam function increment & decrement, jika remainder dari pembagian 2 adalah 1, maka akan bertuliskan "GANJIL" dan berwarna biru
    - Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah: Membuat if conditional dalam function increment & decrement, jika remainder dari pembagian 2 adalah 0, maka akan bertuliskan "GENAP" dan berwarna merah

   

# **Tugas 8 - Flutter Form**

### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

    Navigator.push*
    - Digunakan untuk melakukan push route ke navigator yang paling dekat hubungannya dengan konteks yang diberikan

    Navigator.pushReplacement
    - Digunakan untuk mereplace route navigator yang sekarang dengan route yang diberikan atau ditujukan, serta membuang route sebelumnya setelah route yang baru selesai dianimasikan

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

    - ListTile() --> untuk menampung widget lain
    - TextButton() --> untuk membuat tombol yang dapat men-trigger suatu event
    - DropdownButton() --> untuk menampilkan dropdown dan menerima input
    - TextFormField() --> untuk menerima input text
    - Form() --> untuk menampung widget input
    - Drawer() --> untuk menampilkan menu yang digunakan untuk mengubah tampilan halaman

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

    - onFocusChange --> terpanggil ketika focus changes
    - onHover --> terpanggil ketika pointer masuk ke dalam button response area
    - onLongPress --> terpanggil ketika button is long-pressed
    - onPressed --> terpanggil ketika button ditekan atau diaktivasi
    - onSaved

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

    - Navigator di Flutter bekerja dalam sebuah struktur Stack
    - Menggunakan konsep Last In First Out
    - Elemen yang terakhir dimasukkan adalah elemen yang akan pertama kali di remove dari stack
    - Menggunakan metode push() dan pop()

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

    -  Menambahkan drawer/hamburger menu pada app yang telah dibuat sebelumnya. --> membuat widget drawer dengan childrennya adalah menu yang dapat di click
    - Menambahkan tiga tombol navigasi pada drawer/hamburger. --> membuat 3 ListTile untuk 3 menu yang akan di click atau tombol navigasi
    - Menambahkan halaman form --> membuat widget Form untuk menginput data-data yang dibutuhkan, menggunakan TextFormField dan DropdownButton
    - Menambahkan halaman data budget --> memasukan hasil input ke dalam array sebagai Object baru (yang didefinisikan di halaman data), kemudian data ditampilkan satu per satu


# **Tugas 9 - Integrasi Web Service pada Flutter**

### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

    Bisa. Flutter memiliki built in function sebagai encoder dan decoder JSON yang disebut dengan 'dart:convert'. Flutter memiliki fungsi 'jsonDecode()' untuk men-decode JSON dan mereturn sebuah 'Map<String, dynamic>'

    Namun pengambilan data JSON tanpa membuat model terlebih dahulu tidak lebih baik daripada membuat model terlebih dahulu. Pembuatan PODO atau plain old dart object direkomendasikan sebelum mengambil data JSON dari network request. Baru kemudian di parsing sebagai JSON array yang di simpan sebagai object model tersebut.


### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

    - Future Builder --> untuk mengambil data snapshot terbaru dari interaksinya dengan Future
    - ListTile --> untuk menampilkan data
    - ListView --> untuk menampilkan data, biasanya digunakan dalam sebuah scrolling widget
    - Center, Row --> untuk mengatur tampilan 
 
### 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

    1. Menambahkan http sebagai dependencies pada path android/app/src/main/AndroidManifest.xml dengan menjalankan perintah 'flutter pub add http'
    
    2. Membuat template data JSON dari JSON yang ingin digunakan sebagai model menggunakan website QuickType.

    3. Membuat folder model dan file model dari watchlist yang ingin ditampilkan, dengan menempelkan kode yang sudah di generasikan pada website

    4. Membuat fungsi Future yang akan mengelola data JSON tersebut pada folder page. Saya meletakkan link data JSON yang ada di Django sebagai sumber data yang akan dikelola pada fungsi Future

    5. Menampilkan data tersebut dengan memanggil data object

### 4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

    1. Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist. --> menambahkan ListTile baru dibawah ListTile 'Data Budget' sebagai navigasi ke halaman mywatchlist

    2. Membuat satu file dart yang berisi model mywatchlist. --> membuat folder model dan file baru yang berisikan salinan website QuickType yang akan mengelola data JSON my watchlist

    3. Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya (Tugas 3). Pada bagian ini, kamu cukup menampilkan judul dari setiap mywatchlist yang ada. --> membuat file pada folder page yang akan digunakan untuk mengelola data dari tempelan link json data mywatchlist. Kemudian data tersebut akan di build dalam sebuah file yang akan menampilkan semua data JSON watchlist

    4. Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum). --> Membuat routing ketika judul watchlist ditekan ke halaman dari file yang akan menampilkan detail tiap-tiap film nya.

    5. Menambahkan tombol untuk kembali ke daftar mywatchlist --> membuat bottom Navigation bar sebagai tombol kembali ke menu awal