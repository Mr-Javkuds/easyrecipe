import 'dart:core';

class Recipe {
  String title;
  String thumb;
  String desc;
  List<String> ingredient;
  List<String> step;

  Recipe({required this.title, required this.thumb, required this.desc, required this.ingredient, required this.step});
}

const String loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec enim quam, feugiat at tortor sed, efficitur iaculis augue. Phasellus dapibus ligula eros. Suspendisse potenti. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus lacinia lorem ac urna aliquam malesuada. Aenean enim purus, vestibulum ac elementum eu, pharetra ut lacus. Nunc consequat tincidunt nunc, sed tristique purus egestas nec. Duis nec urna nunc. Nulla nec scelerisque nulla, sit amet pretium sem. Vestibulum mollis odio vel dui ultrices commodo. Fusce non dapibus mauris, in luctus est. Vestibulum aliquet commodo risus a facilisis. Aenean quis arcu tellus. Nulla non convallis dolor, non viverra diam. Etiam egestas dapibus lorem in porttitor.Suspendisse rutrum justo vitae imperdiet bibendum. Cras a arcu tincidunt, tincidunt nisi vitae, congue orci. Donec diam sem, fringilla quis lorem non, aliquet tincidunt tortor. Morbi a tellus";

List<Recipe> listRecipes = [
  Recipe(
      title:
          "Resep Ayam Bakar Bumbu Rujak, Sajian Rumahan Favorit Seluruh Keluarga",
      thumb:
          "resep-ayam-bakar-bumbu-rujak-780x440.jpg",
      desc:
          "Guys, resep ayam bakar bumbu rujak ini menarik untuk kalian coba karena beberapa alasan. Pertama, selain rasa dan teknik masaknya berbeda dari ayam bakar biasanya, resep yang satu ini membutuhkan lebih banyak kesabaran, terutama saat memasak santannya.Kedua, bumbu rujak — banyak orang langsung mengasosiasikannya dengan bumbu rujak buah. Padahal sebetulnya sama sekali berbeda dengan bumbu yang kita pakai untuk resep ayam bakar bumbu rujak disini. Atau, bahkan beda juga dengan yang orang Malaysia dan Singapura sebut sebagai rojak.Hanya karena namanya mirip, bukan berarti mereka sama. Rujak yang kumaksud di sini tidak menggunakan kacang sebagai bumbu dasar. Meski ada beberapa bahan yang sama, misalnya asam jawa atau cabai, kali ini yang akan kita tambahkan adalah santan. Inilah penentu kenikmatan dari masakan yang akan kita masak bareng kali ini!Satu lagi penentu keberhasilanmu dalam membuat resep ini ada pada proses bakar, yang akan menghasilkan rasa smokey dan meninggalkan char mark alias bekas panggangan. Buat para profesional yang bergelut di dunia kuliner seperti kami, ini yang menjadikan makanan terlihat lebih menggugah selera. Tingkat kepuasan saat menghasilkan char mark ini mirip seperti yang dirasakan seorang barista sewaktu menciptakan latte art. Apakah perlu? Tidak juga sih, tapi keberadaannya seperti penanda seberapa baik kita sudah mengolah bahan tersebut.Proses masaknya sendiri terdiri dari beberapa tahap. Pertama, bakar ayam tapi tidak perlu hingga matang. Lalu, siapkan bumbu halus yang dimatangkan terlebih dahulu dan masak ayam bersamanya. Di tahap ini yang perlu kamu lakukan adalah mengaduk wajan secara konstan supaya bagian bawahnya tidak gosong. Saat melakukan ini, jangan coba-coba melirik layar mobile phone ya, apalagi membalas DM Instagram dengan sebelah tangan! Bisa aja, kan, kamu malah tidak sengaja mengaduk bumbu di wajan dengan HP yang melekat di tangan.Perhatikan juga saat memasukkan gula merah yang telah diiris tipis-tipis dan diikuti dengan santan. Gula merah ini akan terkaramelisasi dan bumbu akan menjadi agak lebih lengket di bagian bawah wajan. Jangan panik! Terus aduk supaya tidak lengket, apalagi gosong. Jangan remehkan langkah ini, guys, karena juga bisa berfungsi sebagai latihan pembentukan otot lenganmu tanpa perlu repot-repot pergi ke gym.Setelah bumbu mulai surut dan ayam telah matang, segera sisihkan ayam dan kembali panaskan panggangan. Sekarang kamu perlu membakar ayam supaya memperoleh char mark dan rasa panggangan baru yang segar. Begitu selesai, siramkan sisa bumbu ke atas ayam dan, voila! Ayam Bakar Bumbu Rujak pertamamu siap untuk disajikan.Ingin coba resep ayam lainnya? Pastikan untuk mencoba Semur Ayam Tahu Pedas pada kesempatan berikutnya.",
      ingredient: <String>[
        "1 ekor ayam utuh, potong 4 atau 8",
        "150 gram cabai merah",
        "4 lembar daun jeruk purut segar",
        "500 ml santan kelapa",
        "2 sdm air asam jawa",
        "½ sdt terasi udang",
        "1 bungkus (9 g) Royco Kaldu Ayam",
        "1 sdt gula merah, sisir",
        "1 sdt garam",
        "2 sdm gula pasir"
      ],
      step: <String>[
        "1. Bumbui ayam dengan sedikit garam, lalu panggang hingga setengah matang. ",
        "2. Rebus ayam dan semua bahan lain — termasuk bumbu halus yang sudah dibumbui Royco Kaldu Ayam — di atas api kecil hingga ayam lunak dan bumbu agak mengering.",
        "3. Panggang ayam beserta bumbunya hingga matang.",
        "4. Sajikan ayam yang sudah matang, siram dengan bumbu yang tersisa."
      ]),
  Recipe(
      title: "Resep Sukun Goreng Teri Balado, untuk Lauk di Meja Makan",
      thumb:
          "Sukun-Goreng-Teri-Balado-780x440.jpg",
      desc:
          "Sukun goreng dikenal sebagai camilan yang mudah ditemui di rumah Indonesia. Selain gurih dan renyah, ini termasuk camilan yang mengenyangkan. Dalam penyajiannya, sukun yang digoreng disandingkan dengan cocolan seperti sambal roa. Selain itu, sukun juga kerap diolah menjadi keripik yang renyah dan dijadikan buah tangan.Kali ini, kita tidak akan membuat kedua camilan tadi, melainkan olahan baru yang unik dari sukun. Sukun digoreng kemudian ditambah ikan teri goreng dan diaduk dengan sambal balado. Dari segi rasa, ada asin, pedas, dan gurih. Dari segi proses memasak, ada dua langkah utama membuatnya. Pertama, menggoreng sukun dan ikan teri hingga matang. Kedua, tumis bumbu sambal balado dan mencampurnya dengan sukun dan teri. Menu ini bisa dihidangkan sebagai lauk pendamping nasi hangat yang menggugah selera.Kita langsung siapkan saja bahan-bahannya, yuk! Menu balado lain yang bisa kamu coba juga antara lain Terong Balado Crispy dan Sambal Kentang Ati Ampela Petai.",
      ingredient: <String>[
        "500 g sukun, kupas, potong korek api",
        "100 ml air kapur sirih",
        "200 g ikan teri, goreng kering",
        "6 lembar daun jeruk, iris halus",
        "1.5 sdt Royco Kaldu Ayam",
        " minyak, untuk menggoreng dan menumis",
        "100 g cabai merah keriting",
        "50 g cabai rawit merah",
        "100 g bawang merah",
        "8 siung bawang putih",
        "½ sdt gula pasir"
      ],
      step: <String>[
        "1. Rendam potongan sukun dalam air kapur sirih selama 20 menit.",
        "2. Panaskan minyak, goreng sukun hingga kering dan cokelat keemasan. Angkat dan tiriskan.",
        "3. Panaskan minyak, tumis sambal balado dan daun jeruk hingga harum. Tambahkan Royco Kaldu Ayam, aduk. Masak hingga matang. Angkat.",
        "4. Masukkan sukun dan teri, aduk rata. Sajikan."
      ]),
  Recipe(
      title: "Resep Nasi Kuning dan Ayam Goreng, Sajian Penggugah Selera",
      thumb:
          "nasi-kuning-dan-ayam-goreng-780x440.jpg",
      desc:
          "Berbagai selebrasi dan hari rayanya orang Indonesia pasti melibatkan yang namanya Nasi Kuning dan Ayam Goreng. Bahkan hidangan yang satu ini merupakan sebuah melting pot dari beragam keunikan warisan kuliner di negeri ini. Ketika semuanya tersaji dengan segala warna warninya, tak ada satupun yang tak tergiur dibuatnya. Pada resep kali ini, saya ingin mengajak teman-teman untuk menguasai fondasi dasarnya terlebih dahulu.Bisa dibilang formasi Nasi Kuning dan Ayam Goreng bisa berubah-ubah pendampingnya. Ada yang menambahkan lalapan, urap sayur, empal, perkedel, mi goreng, dan berbagai jenis masakan lokal lainnya. Menguasai cara membuat nasi kuning adalah yang terpenting tentunya. Untuk ayam gorengnya sendiri bisa menggunakan resep ini ataupun resep lainnya yang kamu suka.Ngomong-ngomong soal resep ayam sendiri, saya pernah berbagi resep Ayam Goreng Terasi, Ayam Goreng Crispy, hingga Ayam Goreng Mentega. Selamat mempersiapkan perayaanmu!",
      ingredient: <String>[
        " daging ayam, potong beberapa bagian",
        "3 buah lengkuas, parut",
        "1 bungkus Bango Bumbu Ayam Goreng Bacem",
        " beras putih",
        "750 ml santan",
        " kunyit, potong 3 cm",
        "1 sdt air jeruk nipis",
        " daun pandan",
        "1 batang serai",
        "2 sdt garam",
        " bawang merah goreng"
      ],
      step: <String>[
        "1. Campur ayam dengan air lalu didihkan.",
        "2. Setelah mendidih, masukkan Bango Bumbu Ayam Goreng Bacem dan lengkuas parut. Masak hingga airnya hampir habis dan ayamnya sudah lunak. Jika air sudah hampir habis tapi ayamnya belum lunak, kamu bisa menambahkan sedikit air agar ayamnya melunak.",
        "3. Jika bumbu ayam sudah meresap dan ayamnya sudah melunak, goreng ayam hingga berwarna kecokelatan.",
        "4. Didihkan santan yang dicampur dengan air kunyit, daun pandan, daun salam, serai, dan garam sambil diaduk agar santan tidak pecah.",
        "5. Setelah semua bahan tercampur dengan sempurna, masukkan beras ke dalam campuran santan tersebut sambil diaduk, masak hingga nasi menjadi aron dan santannya terserap habis.",
        "6. Setelah nasi menjadi aron dan santannya terserap habis, kukus nasi kuning tersebut selama 45 menit atau hingga nasinya matang.",
        "7. Setelah nasi matang, angkat dan sajikan dipiring saji lalu ditaburi bawang goreng sesuai selera.",
        "8. Hidangkan bersama ayam goreng yang telah dibuat sebelumnya."
      ]),
  Recipe(
      title:
          "Resep Martabak Telor Daging Bayam, Camilan Gurih yang Bikin Nagih",
      thumb:
          "Martabak-Telor-Bayam-780x440.jpg",
      desc:
          "Sebagai jajanan populer sore hingga dini hari, martabak telor memang sangat sayang untuk dilewatkan. Jajanan yang dibuat dari telur ayam atau telur bebek dengan versi spesial atau istimewa ini selalu berhasil bikin kita galau untuk memilih. Ide resep kali ini, aku ingin mengajak kamu untuk membuat martabak telur dalam versi lebih praktis.Adonan kulit martabak yang biasanya mesti direndam selama berjam-jam dalam minyak kali ini kita abaikan sejenak demi menghemat waktu. Aku memilih kulit lumpia siap pakai yang banyak ditemukan di pasaran. Kamu bisa menggunakan kulit lumpia yang biasa digunakan untuk lumpia jajanan pasar atau kulit lumpia versi siap pakai yang kalau berada di supermarket, dijual dalam keadaan beku. Jenis kulit ini biasanya lebih kokoh dan tidak mudah robek saat dilipat. Kulit lumpia ini juga akrab digunakan sebagai pembungkus lumpia versi restoran Asia atau restoran dimsum.Supaya lebih bergizi, kehadiran sayuran hijau seperti bayam aku ke tambahkan ke dalam isiannya bersama daging cincang. Selain menambah tekstur isi, tentu dengan begitu menikmati martabak jadi lebih enak dan berserat. Selain jadi camilan, Martabak Telor Daging Bayam ini juga akan aku sajikan buat lauk pendamping. Kalau kamu gimana?",
      ingredient: <String>[
        "12 lembar kulit lumpia",
        " minyak, untuk menumis dan menggoreng",
        "200 g daging sapi cincang",
        "80 g bawang bombay, cincang halus",
        "2 siung bawang putih, cincang halus",
        "70 g daun bayam hijau",
        "3 lembar daun jeruk",
        "2 sdt kari bubuk",
        "1 batang serai, memarkan",
        "1.5 sdt Royco Kaldu Sapi",
        "½ sdt merica putih bubuk",
        "2 butir telur ayam",
        "2 batang daun bawang, iris tipis"
      ],
      step: <String>[
        "1. Isi: Panaskan 2 sdm minyak, tumis bawang bombay dan bawang putih hingga harum. Masukkan daging, aduk hingga berubah warna. Masukkan daun jeruk, kari bubuk, serai, Royco Kaldu Sapi, dan merica, aduk rata.",
        "2. Masak hingga daging matang. Masukkan bayam, aduk hingga bayam layu. Angkat. Sisihkan. Setelah tidak panas, aduk rata bersama daun bawang dan telur ayam.",
        "3. Martabak: Siapkan kulit lumpia, ambil 1 sdm adonan isi ke bagian tengahnya. Lipat membentuk amplop dengan rapi, rekatkan dengan air. Ulangi proses serupa pada sisa bahan hingga habis.",
        "4. Panaskan minyak, goreng martabak sambil siram minyak ke permukaannya hingga martabak kecokelatan dan garing. Angkat. Sajikan."
      ]),
  Recipe(
      title: "Resep Sambal Tumpang Tempe, Sajian Nikmat dan Pedas",
      thumb:
          "sambal_tumpang_tempe_MAHI-780x440.jpg",
      desc:
          "Sahabat MAHI si jago masak Isna Sutanto kali ini terinspirasi dengan masakan khas Jawa Tengah dan Jawa Timur. Kali ini ia membuat satu twist menarik dan menamakannya sambal tumpang tempe. Sungguh terdengar sedap dan juga pedas!Di antara sekian banyak masakan khas Jawa yang tersaji, tentu ada saja godaan untuk menikmati yang namanya sambal tumpang. Namun tidak bakal ada yang menyangka kalau protein kesukaan kita semua ini bisa menjadikan masakan tradisional ini begitu lezat. Berbagai bahan dan Royco Kaldu Ayam juga turut memeriahkan hidangan ini. Jadilah sambel tumpang tempe ini satu masakan yang tidak terlupakan!Resep-resep tempe yang lezat dari para influencer akan ditampilkan di MAHI hingga beberapa waktu mendatang. Tempe adalah protein yang hebat dan serba guna, sehingga bisa diolah dengan berbagai cara. Resep-resepnya akan tampil setiap dua hari sekali. Pastikan untuk mencoba semuanya ya!",
      ingredient: <String>[
        "200 g tempe, potong-potong",
        "350 ml santan kental sedang",
        "2 cm lengkuas",
        "2 lembar daun salam",
        "2 lembar daun jeruk",
        "2 sdm gula jawa, sisir halus",
        " garam",
        "1 sdt Royco Kaldu Ayam",
        "4 buah cabai merah besar",
        "6 buah cabai rawit merah",
        "5 butir bawang merah",
        "4 siung bawang putih",
        "1 cm kencur",
        " sayuran rebus",
        " kemangi",
        " ketimun",
        " rempeyek"
      ],
      step: <String>[
        "1. Rebus bahan bumbu halus hingga layu dan matang. Angkat dan haluskan.",
        "2. Rebus tempe hingga empuk. Ulek kasar jangan terlalu halus. ",
        "3. Ke dalam panci; masukkan bumbu halus, tempe halus, santan, daun salam, daun jeruk, dan lengkuas. Masak hingga mendidih. Tambahkan Royco Kaldu Ayam, garam, dan gula merah. Masak sampai bumbu meresap. Koreksi rasa dan angkat.",
        "4. Sajikan dengan pelengkap."
      ]),
  Recipe(
      title: "Resep Ayam Kari Sayuran, Menu Komplet Untuk Inspirasi Ramadan",
      thumb:
          "Kare-Sayuran-780x440.jpg",
      desc:
          "Ayam kari dengan sayuran ini sangat pas buat kamu yang sedang mencari masakan sumber protein sekaligus kaya sayuran. Kari ayam dengan sayuran ini terinspirasi dari kare buncis atau disebut juga sayur kare bagi masyarakat Jawa.Supaya lebih komplet, aku memasak seekor ayam dan dipadukan dengan buncis dan wortel. Kamu jadi tak perlu lagi memasak sayur pendamping atau menu sayuran. Untuk pemilihan daging ayam, kamu bisa menggunakan jenis ayam negeri atau ayam kampung. Ganti penggunaan satu ekor ayam dengan daging ayam bagian dada kalau kamu sedang ingin menjaga asupan lemak dalam tubuh.Menjelang bulan Ramadan, kamu tentu membutuhkan menu masakan yang komplet dan  juga praktis. Aku sangat menyarankan masakan bersantan yang ‘enteng’ ini sebagai menu sahur atau menu berbuka. Untuk menyiapkannya menjelang sahur, sebaiknya kamu sudah menyiapkan bumbu halus semalam sebelumnya, atau bahkan bumbu halus tersebut sudah ditumis. Begitu juga dengan daging ayam dan sayuran yang sudah disiangi, jadi proses berikutnya hanyalah tinggal memasukkan dan mematangkan bahan utama.Ada beberapa jenis kare yang biasanya diolah, yakni kare ayam, kare daging sapi, kare tahu, dan  kare telur. Bedanya kare dengan gulai adalah kare biasanya ditambahkan cabai ke dalam bumbu halusnya. Keuntungannya memasak menu ini adalah kamu tak harus menyiapkan menu sayuran. Jadi, satu masakan untuk hidangan lauk dan sayur.",
      ingredient: <String>[
        "1 ekor ayam, potong 8, buang kulitnya",
        "2 buah kentang, potong kotak 3 cm",
        "200 g buncis, potong 3 cm",
        "300 g wortel, potong serong",
        "100 g kol",
        "1 batang serai, memarkan",
        "2 lembar daun salam",
        "3 lembar daun jeruk, buang tulangnya",
        "800 ml susu cair rendah lemak",
        "1 sdt asam jawa, larutkan dengan 2 sdm air panas",
        "1 sdm Royco Kaldu Ayam",
        "1 sdt gula pasir",
        "8 butir bawang merah",
        "2 siung bawang putih",
        "3 buah cabai merah",
        "3 cm kunyit",
        "2 cm lengkuas",
        "1 cm jahe",
        "3 butir kemiri, sangrai",
        "1 sdt ketumbar, sangrai"
      ],
      step: <String>[
        "1. Panaskan minyak, tumis bumbu halus, serai, daun salam, dan daun jeruk hingga harum.",
        "2. Masukkan daging ayam, aduk. Masak selama beberapa menit. ",
        "3. Tuang susu cair, asam jawa, aduk. Tambahkan kentang. Masak hingga setengah matang. ",
        "4. Masukkan buncis, wortel, Royco Kaldu Ayam, gula pasir, dan santan, aduk. Masak hingga hampir matang, tambahkan kol, aduk. Masak hingga kol layu. Angkat. Sajikan."
      ]),
  Recipe(
      title: "Resep Ayam Opor Tanpa Santan, Sehat Sekaligus Sedap",
      thumb:
          "resep_ayam_opor_MAHI_FI-400x240.jpg",
      desc:
          "Menu ayam opor sudah menjadi tradisi tersendiri untuk disajikan saat Lebaran. Dari beragam masakan Lebaran yang serba santan dan daging, pastinya ada dong satu saja yang bisa kita modifikasi agar lebih sehat. Nah sekaligus meneruskan pola hidup sehat selama Ramadhan, bagaimana kalau aku bagi resep ayam opor tanpa santan berikut ini? Yuk, kita coba masak untuk Idul Fitri tahun ini!Apa saja sih yang biasa tersedia di meja makan rumahmu saat Lebaran? Di rumahku biasanya selalu ada menu-menu klasik. Sebut saja contohnya ketupat, rendang daging, kari daging dan kentang, ati ayam, sayur cabai hijau dan tahu, dan pastinya ayam opor. Dalam rangka ingin menjaga pola makan yang baik setelah sebulan berpuasa, beberapa tahun terakhir ini aku telah mengajak keluargaku agar tetap bisa konsisten sesudahnya. Ramadhan benar-benar bisa mengajarkan banyak hal, termasuk di antaranya adalah hidup sehat.Momen memulainya kembali tentunya adalah di saat Lebaran. Meski ada saja suara keberatan, akhirnya aku berkesempatan untuk membuat resep ayam opor tanpa santan sebagai pengganti yang biasanya. Biarpun tanpa santan, resep opor ayam bisa tetap lezat untuk dinikmati kok teman-teman. Dengan paduan bumbu dan rempah yang tepat, rasa gurih dan berisi dari santan tetap bisa terimbangi bahkan oleh susu cair rendah lemak. Suara-suara keberatan tadipun berangsur-angsur menghilang. Ah, bangga sekali rasanya bisa memasak yang enak untuk keluarga tercinta!Susu cair rendah lemak menjadi pengganti santan yang pas. Rupa-rupanya, bahan yang satu ini sangat cocok untuk berbagai menu tradisional — bahkan seperti resep ayam opor ini. Penasaran cara memasaknya? Dengan berbekal Royco Kaldu Ayam, yuk kita coba masak bersama opor ayam sehat untuk Idul Fitri tahun ini!",
      ingredient: <String>[
        "300 g ayam, potong 4 bagian",
        "750 ml susu cair rendah lemak",
        "2 batang serai, memarkan",
        "5 lembar daun jeruk purut",
        "3 lembar daun salam",
        "4 sdm minyak sayur",
        "5 siung bawang putih",
        "10 siung bawang merah",
        "3 batang lengkuas",
        "3 buah kencur",
        "6 buah kemiri, sangrai",
        "3 sdt ketumbar butiran, sangrai",
        "½ sdt jintan, sangrai",
        "2 sdm gula merah, sisir",
        "2 sdt lada putih butiran",
        "2 sdt Royco Kaldu Ayam",
        "1 sdm bawang merah goreng"
      ],
      step: <String>[
        "1. Siapkan bahan-bahan bumbu halus termasuk Royco Kaldu Ayam, lalu haluskan dengan diulek atau gunakan food processor.",
        "2. Panaskan minyak lalu tumis bumbu halus, serai, daun jeruk, dan daun salam. Masak hingga harum.",
        "3. Masukkan susu cair rendah lemak dan ayam. Masak di atas api sedang hingga ayam menjadi matang.",
        "4. Aduk sesekali hingga mendidih. Kecilkan api, lanjutkan memasak hingga kuah agak berminyak.",
        "5. Opor ayam tanpa santan siap disajikan dengan taburan bawang merah goreng dan nasi putih ataupun ketupat."
      ]),
  Recipe(
      title: "Resep Batagor Tanpa Ikan Saus Asam Pedas",
      thumb:
          "Batagor-Tanpa-Ikan-Saus-Asam-Pedas-780x440.jpg",
      desc:
          "Batagor tanpa ikan, satu varian dari kuliner khas Jawa Barat, yaitu batagor. Bercita rasa gurih dan bertekstur renyah, nama batagor sendiri merupakan singkatan dari bakso tahu goreng. Jajanan satu ini mudah ditemui, mulai dari pedagang kaki lima hingga restoran bintang lima.Sejarah menyebutkan, batagor diciptakan oleh Kang Isan, perantau asal Jawa Tengah pada tahun 1973. Dalam buku ‘Wisata Paris van Java: Sejarah, Peradaban, Seni, Kuliner dan Belanja’ menjelaskan bahwa Kang Isan adalah seorang pedagang tahu bakso kukus yang berjualan di sekitar Jalan Kopo, Bandung. Untuk menyiasati dagangannya yang tidak habis terjual, Kang Isan menggoreng tahu bakso agar tidak mudah basi dan menambahkan saus kacang sebelum dibagikan kepada tetangga. Tidak disangka, batagor yang dibuat oleh Kang Isan disenangi oleh para tetangga. Batagor buatannya pun digemari dan dikenal masyarakat luas.Kini kamu bisa membuatnya sendiri untuk camilan keluarga di rumah. Satu resep dariku ini cocok bagi kamu yang tidak miliki stok daging ikan atau kamu yang alergi seafood. Resep Batagor Tanpa Ikan ini menggunakan tepung tapioka dan tepung beras sebagai bahan utamanya. Tetap sedap dengan tambahan Royco Kaldu Jamur sebagai bumbunya.Salah satu rahasia resep batagor empuk tanpa ikan ini adalah tambahan baking powder ke dalam adonannya. Supaya tak penasaran, kamu wajib coba resep batagor sederhana ini yang nantinya akan dipadukan dengan saus asam pedas.Simak resep lengkapnya di bawah ini! Sajikan batagor bersama minuman segar seperti Es Teh Rosella Lidah Buaya yang segar dan Es Cincau Milk Tea agar momen santai bersama keluarga semakin spesial.",
      ingredient: <String>[
        "250 g tepung tapioka",
        "120 g tepung terigu",
        "25 g tepung beras ",
        "1 sdt baking powder ",
        "1 sdm Royco Kaldu Jamur",
        "5 siung bawang putih, haluskan",
        "1 butir telur ayam, kocok lepas",
        "2 batang daun bawang, iris",
        "200 ml air  ",
        "20 lembar kulit pangsit",
        " minyak, untuk menggoreng  ",
        "1 sdm margarin",
        "5 buah cabai rawit merah, cincang ",
        "3 siung bawang putih, cincang ",
        "1 buah tomat, cincang ",
        "3 sdm Jawara Saus Sambal Extra Hot",
        "1 sdt gula pasir",
        "½ sdt Royco Kaldu Jamur",
        "100 ml air",
        "1 sdm tepung maizena, larutkan dengan 2 sdm air",
        "1 sdm air jeruk nipis"
      ],
      step: <String>[
        "1. Saus asam pedas: Panaskan margarin, tumis bawang putih dan cabai rawit hingga harum. Masukkan tomat, aduk hingga layu. Tuang air, Saus Sambal Jawara Extra Hot, dan gula pasir, aduk. Masak hingga tomat hancur. Tambahkan larutan tepung maizena, aduk. Masak hingga mengental. Angkat. Tambahkan air jeruk nipis, aduk. Sisihkan. ",
        "2. Batagor: Aduk rata tepung tapioka, tepung terigu, tepung beras, bawang putih, baking powder, dan Royco Kaldu Jamur. Tambahkan telur, daun bawang, dan tuang air sedikit demi sedikit sambil diuleni hingga tercampur rata.  ",
        "3. Ambil selembar kulit pangsit, taruh 1 sdm adonan batagor. Lipat kulit mengikuti bentuk isi adonan. Ulangi proses serupa pada sisa adonan.   ",
        "4. Panaskan minyak, goreng batagor hingga matang dan cokelat keemasan. Angkat dan tiriskan. ",
        "5.  Sajikan batagor bersama saus asam pedas."
      ]),
  Recipe(
      title: "Resep Ayam Crispy XXL a la Taiwan",
      thumb:
          "Ayam-Crispy-Taiwan-780x440.jpg",
      desc:
          "Pencinta Ayam Crispy XXL A la Taiwan yang populer dan bikin rela mengantre kini boleh sumringah. Pasalnya Masak Apa Hari Ini menghadirkan resep ayam goreng ukuran ekstra besar ini untuk bisa kamu buat sendiri di rumah. Jadi, persiapkan waktu dan skill memasakmu! Ini dikarenakan proses pembuatannya membutuhkan perhatian khusus agar kamu bisa sukses menirunya di rumah.Ciri khas dari street food populer asal Shilin atau salah satu distrik di Taipei, Taiwan ini adalah lapisan tepung mirip crumble yang menyelimuti daging ayam berbentuk pipih dan lebar. Lapisan tepung bertekstur seperti pasir inilah yang akan kita buat agar ayam crispy ini suskes seperti XXL Fried Chicken Taiwan favoritmu. Ditambah dengan bumbu tabur yang gurih dengan sensasi rempah menjadikan ayam goreng tipis ini laris manis.Proses penting membuat ayam goreng crispy ini adalah membuat adonan tepung basah yang kemudian disangrai hingga membentuk gumpalan memasir. Kemudian sedikit diremas atau dihancurkan agar bentuknya lebih mungil. Selain itu pastikan kamu mengiris bagian dada ayam secara benar. Tujuannya agar daging ayam goreng ukuran lebar ini tebalnya merata dan tidak putus. Gunakan pisau dengan bilah panjang yang tajam agar kamu bisa dengan mudah memotongnya.Yuk, siapkan bahan membuat Ayam Crispy XXL a la Taiwan ini. Pastikan kamu sudah menyiapkan Jawara Saus Sambal dan Hellmann’s Real Mayonnaise di rumah sebagai pelengkap yang bikin santap makin mantap. Jangan lupa untuk follow, like, dan jika ada pertanyaan atau ingin request resep, kamu bisa langsung bertanya di kolom komentar akun Instagram Masak Apa Hari Ini.",
      ingredient: <String>[
        "4 filet dada ayam",
        " Minyak, untuk menggoreng",
        "1 butir telur ayam",
        "1.5 sdt Royco Kaldu Ayam",
        "½ sdt merica putih bubuk",
        "1 sdt bumbu ngohiong bubuk",
        "1 sdm bawang putih bubuk",
        "1 sdm tepung maizena",
        "2 sdm tepung terigu",
        "150 g tepung tapioka",
        "100 ml air",
        "1 sdt bumbu ngohiong bubuk",
        "1 sdt Royco Kaldu Ayam",
        "½ sdt cabai bubuk"
      ],
      step: <String>[
        "1. Ambil 1 filet dada ayam. Belah dua tidak putus, lalu pipihkan menggunakan alat pemukul daging hingga melebar. Ulangi proses serupa pada sisa bahan.",
        "2. Lumuri daging ayam dengan bumbu marinasi secara merata. Simpan dan wadah tertutup, lalu diamkan dalam kulkas selama 1 jam atau hingga meresap. Sisihkan. ",
        "3. Lapisan tepung: Untuk bahan pelapis, tuang air sedikit demi sedikit ke dalam wadah berisi tepung tapioka sambil diaduk hingga memasir. Sisihkan. Panaskan wajan antilengket di atas api kecil, sangrai adonan pelapis selama 2 menit hingga mengering. Angkat.  ",
        "4. Remas adonan menggunakan tangan hingga membentuk menjadi gumpalan pasir kecil.",
        "5. Keluarkan daging ayam dari dalam kulkas. Lumuri dengan lapisan tepung secara merata.",
        "6. Panaskan minyak, goreng daging ayam hingga matang. Angkat.",
        "7. Beri bumbu tabur ke seluruh permukaan ayam crispy XXL. Gunting atau potong sesuai selera. Sajikan dengan cocolan Jawara Saus Sambal Extra Hot dan Hellmann’s Real Mayonnaise."
      ]),
  Recipe(
      title:
          "Resep Lumpia Goreng Isi Udang Renyah, Camilan Baru untuk Keluarga",
      thumb:
          "shutterstock_247169467-780x440.jpg",
      desc:
          "Resep lumpia goreng isi udang berikut ini mudah dipraktikkan di rumah. Kamu bisa menghadirkannya sebagai camilan baru yang renyah untuk keluarga. Selain enak, camilan ini memiliki isian yang bergizi dan mengenyangkan.Berbahan utama kulit lumpia sebagai pembungkusnya, kamu membutuhkan udang sebagai isian utamanya. Dari sekian banyak jenis udang dan olahannya, aku sarankan untuk menggunakan udang peci yang mudah diperoleh di pasaran. Selain udang, kamu bisa tambahkan protein hewani lain seperti dada ayam. Kemudian lengkapi dengan sayuran seperti wortel, tauge, dan daun bawang. Tumis semua bahan isian hingga matang, tambahkan Bango Kecap Manis dan percikan minyak wijen untuk menambah citarasa. Setelahnya, bungkus isian dengan kulit lumpia. Goreng hingga matang kecokelatan. Sajikan selagi hangat dengan saus sambal.Praktis kan membuatnya? Jika ingin menghadirkan camilan lainnya, kamu bisa mencoba resep bakwan tahu, risoles ayam telur asin, dan cireng keju sambal kecap.",
      ingredient: <String>[
        "8 lembar kulit lumpia siap pakai",
        "100 g udang kupas, cincang kasar",
        "50 g fillet dada ayam, potong dadu",
        "50 g wortel, serut memanjang",
        "25 g tauge, siangi",
        "1 sdm Bango Kecap Manis",
        "1 sdm minyak, untuk menumis",
        "1 sdm daun bawang iris halus",
        "1 sdt gula palem",
        "1 sdm minyak wijen",
        "½ sdt merica",
        "1 sdt Royco Kaldu Ayam",
        "1 sdm air",
        "300 ml minyak, untuk menggoreng",
        "2 butir bawang merah",
        "1 siung bawang putih"
      ],
      step: <String>[
        "1. Panaskan minyak, masukkan bumbu halus. Tumis hingga harum.",
        "2. Masukkan ayam dan udang, aduk rata. Masak hingga keduanya berubah warna.",
        "3. Masukkan wortel, tauge, dan air. Aduk rata.",
        "4. Tambahkan daun bawang, merica, Bango Kecap Manis, gula palem, Royco Kaldu Ayam. Aduk rata.",
        "5. Percikkan minyak wijen, aduk rata. Angkat dan sisihkan.",
        "6. Ambil satu lembar kulit lumpia, beri isian, dan lumuri sedikit putih telur di sekeliling batas kulit lumpia. Kemudian lipat, gulung, dan rekatkan.",
        "7. Goreng lumpia hingga matang dan kecokelatan. Angkat dan tiriskan.",
        "8. Sajikan dengan saus sambal."
      ]),
];
