-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2017 at 07:27 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oop_comments`
--

CREATE TABLE `oop_comments` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oop_comments`
--

INSERT INTO `oop_comments` (`id`, `news_id`, `users_id`, `content`, `datetime`) VALUES
(1, 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2017-01-20 08:30:29'),
(2, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2017-01-20 08:47:38'),
(3, 1, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '2017-01-20 08:48:27'),
(4, 3, 3, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2017-01-20 09:38:16'),
(5, 5, 3, 'Petenis Swiss itupun memenangkan set ketiga dan berhak melaju ke babak kedua.', '2017-01-20 09:39:03'),
(6, 3, 2, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2017-01-22 02:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `oop_news`
--

CREATE TABLE `oop_news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oop_news`
--

INSERT INTO `oop_news` (`id`, `title`, `description`, `datetime`) VALUES
(1, 'Federer dan Wawrinka Pastikan Tempat di Babak Ketiga', 'Roger Federer meraih kemenangan straight set atas petenis Amerika Serikat Noah Rubin di babak kedua Australia Terbuka. Hasil positif juga dibukukan petenis Swiss lainnya, Stanislas Wawrinka.\r\n\r\nBermain di Rod Laver Arena, Rabu (18/1/2017), Federer mengalahkan petenis kualifikasi Noah Rubin dari Amerika Serikat dengan skor 7-5, 6-3, 7-6(3).\r\n\r\nFederer tak mengalami kesulitan berarti pada dua set pertama. Namun memasuki set ketiga, petenis Swiss itu malah susah payah memenangi gim demi gim atas petenis yang ada pada peringkat 200 itu.\r\n\r\nFederer sempat tertinggal 2-5 tapi kemudian bisa menyamakannya menjadi 5-5. Perebutan poin di akhir-akhir gim kian sengit hingga memaksa tiebreak.\r\n\r\nPetenis Swiss itupun memenangkan set ketiga dan berhak melaju ke babak kedua. Federer akan menghadapi Tomas Berdych dalam laga berikutnya.\r\n\r\nDi laga lain, unggulan keempat Stanislas Wawrinka yang juga dari Swiss juga memastikan langkah ke babak ketiga. Wawrinka menang atas petenis AS Steve Johnson 6-3, 6-4, 6-4.\r\n\r\nWawrinka, 31, akan menghadapi pemenang antara Viktor Troicki dan Paolo Lorenzi di babak berikutnya. ', '2017-01-18 07:21:15'),
(2, 'Mercedes Rekrut Bottas, Ini Kata Rosberg', 'Mercedes telah merekrut Valtteri Bottas untuk menggantikan Nico Rosberg yang pensiun beberapa waktu lalu. Apa kata Rosberg terkait perekrutan Bottas oleh Mercedes?\r\n\r\nMercedes terpaksa mencari pebalap baru lantaran Rosberg secara mengejutkan memutuskan untuk pensiun sebagai pebalap Formula 1 hanya beberapa hari setelah merebut gelar juara dunia pada bulan November 2016 lalu.\r\n\r\nSetelah melalui proses negosiasi yang rumit, Mercedes akhirnya berhasil merekrut Bottas dari Williams. Pebalap Finlandia itu pun akan menjadi rekan setim Lewis Hamilton untuk kompetisi F1 musim 2017.\r\n\r\n"Saya pikir itu adalah kabar yang sangat bagus untuk tim," ujar Rosberg seperti dikutip Crash.net.\r\n\r\n"Saya gembira mereka menemukan solusi bagus dengan sangat cepat, itu mengagumkan. Saya yakin dia (Bottas) akan melakukan pekerjaan dengan sangat baik dan dia akan menyatu dengan baik," katanya.\r\n\r\nDitanya apakah Bottas akan memberi masalah untuk Hamilton, Rosberg yang tidak akur-akur amat dengan Hamilton di Mercedes mengaku juga penasaran.\r\n\r\n"Saya akan menonton TV dan saya tak sabar melihat bagaimana Valtteri menjalin hubungan, terutama menghadapi Lewis karena dia adalah seorang panutan yang mengagumkan. Dia adalah salah satu pebalap terbaik dan salah satu yang terbaik sepanjang masa," ucap Rosberg.\r\n\r\n"Tentunya itu tak akan mudah, jadi akan menarik untuk diikuti," katanya.', '2017-01-18 07:24:39'),
(3, 'Setelah Dua Tahun, Ronaldo Berpeluang Tampil Lagi di Copa del Rey', 'Sudah dua tahun Cristiano Ronaldo tidak tampil di Copa del Rey. Menghadapi Celta Vigo di babak perempatfinal, Ronaldo berpeluang untuk mengakhiri penantian itu.\r\n\r\nKali terakhir Ronaldo membela Real Madrid di ajang Copa del Rey adalah pada 15 Januari 2015 saat timnya menghadapi Atletico Madrid di babak 16 besar. Dalam pertandingan yang berakhir dengan skor 2-2 tersebut, Ronaldo main sejak menit pertama dan mencetak satu gol.\r\n\r\nItu jadi penampilan terakhir Ronaldo di Copa del Rey karena Madrid selanjutnya tidak lolos. Hasil 2-2 melawan Atletico membuat Madrid kalah 2-4 secara agregat setelah sebelumnya menyerah 0-2 di leg pertama.\r\n\r\nSementara itu di musim lalu Ronaldo sama sekali tidak tampil di Copa del Rey. Itu tak lepas dari hukuman yang diterima Madrid dalam kompetisi tersebut.\r\n\r\nMusim lalu, Madrid yang masih ditangani Rafael Benitez itu didiskualifikasi dari Copa del Rey karena menurunkan Denis Cheryshev dalam pertandingan leg pertama babak 32 besar melawan Cadiz. Cheryshev harusnya tidak boleh bertanding karena sedang dalam akumulasi kartu. Ronaldo sendiri tidak masuk ke dalam skuat yang dibawa Benitez untuk menghadapi Cadiz.\r\n\r\nSejauh ini Ronaldo belum main di Copa del Rey musim 2016/2017. Dalam pertandingan-pertandingan sebelumnya melawan Cutural Leonesa dan Sevilla, Zinedine Zidane memutuskan untuk mengistirahatkan Ronaldo.\r\n\r\nKini nama Ronaldo kembali ke skuat Madrid di Copa del Rey. Zidane memasukkan nama bintang asal Portugal itu ke dalam skuat yang disiapkan untuk menghadapi laga leg pertama babak perempatfinal melawan Celta yang akan digelar di Santiago Bernabeu, Kamis (19/1/2017) dinihari WIB. Demikian seperti dikutip dari AS.', '2017-01-18 07:24:39'),
(4, 'Google Maps bakal Sarankan Tempat Parkir', 'Google Maps tak hanya digunakan sebagai penunjuk arah, tetapi juga mengetahui jarak ke tempat tujuan, sampai memantau kepadatan lalu lintas. Google akan menambahkan fungsi baru untuk menyarankan tempat parkir.\r\n\r\nDikutip dari Engadget, Rabu (18/1/2017), update terbaru Google Maps nantinya akan memungkinkan peta digital ini memberikan informasi mengenai situasi tempat parkir yang akan disinggahi.\r\n\r\nGoogle Maps akan memberikan saran dengan menampilkan ketersediaan ruang di tempat parkir dalam tiga kategori ''easy'', ''medium'' dan ''limited''. Situasi terkini akan ditandai dengan highlight warna merah.\r\n\r\nSelanjutnya, ketika pengguna mengarahkan mobil sesuai navigasi, Google Maps akan memberikan arahan lebih lanjut, sampai akhirnya sampai dan parkir sempurna di tempat yang dituju.\r\n\r\nWaze dan Inrix sebelumnya sudah punya fitur ini, yang diumumkan pada September tahun lalu. Jadi, Google sepertinya berupaya meyakinkan bahwa layanannya akan mengejar fungsi semacam itu.\r\n\r\nAplikasi Waze bahkan bisa benar-benar menemukan tempat parkir, sementara Google Maps hanya memberikan pandangan umum situasi tempat parkir dan menyarankannya. Belum diketahui secara jelas bagaimana Google mendapatkan data.\r\n\r\nFitur ini belum bisa dipakai oleh semua pengguna, karena baru tersedia dalam update Google Maps 9.44 beta. Google kemungkinan masih menyiapkan layanan ini lebih matang untuk merilis updatenya secara resmi dan memperluas ketersediaannya untuk semua pengguna.', '2017-01-18 07:24:39'),
(5, 'Apple Kerahkan Drone Saingi Google Maps', 'Apple berencana mengerahkan drone untuk meningkatkan kualitas aplikasi dan layanan petanya agar bisa bersaing dengan Google Maps.\r\n\r\nDrone ini akan digunakan Apple untuk memantau kondisi jalanan, rambu lalu lintas, area konstruksi dan lainnya. Untuk mengurus divisi drone-nya yang berbasis di Seattle, AS ini, Apple mengaku sudah menarik setidaknya satu orang dari divisi Air milik Amazon.\r\n\r\nJadi, drone ini akan bekerja beriringan dengan sejumlah armada mobil berkamera yang sudah digunakan Apple dan bekerja layaknya mobil Google Street View, demikian dikutip detikINET dari The Verge, Senin (5/12/2016).\r\n\r\nSelain drone, Apple juga disebut tengah mengembangkan tampilan anyar untuk Maps, dan meningkatkan performa navigasinya. Salah satunya adalah pemetaan dalam ruangan, yang membuat para pengguna iPhone bisa melihat peta dalam ruangan, seperti bandara atau mall, serupa dengan fitur yang ada di Google Maps.\r\n\r\nUntuk mendukung integrasi fitur ini, Apple sebelumnya mengakuisisi sebuah perusahaan bernama Indoor.io. Selain itu, Apple juga menambahkan fitur bantuan ketika berpindah jalur saat mengemudi kendaraan, yang akan ditambahkan pada Apple Maps pada 2017 mendatang.', '2017-01-18 07:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `oop_users`
--

CREATE TABLE `oop_users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `biodata` text NOT NULL,
  `photo` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oop_users`
--

INSERT INTO `oop_users` (`id`, `fullname`, `email`, `biodata`, `photo`, `password`, `datetime`) VALUES
(1, 'Alessandra Bigongiari', 'alessandra.bigongiari@yahoo.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac orci vel justo euismod gravida vel ut lorem. Donec quis nisi purus. Suspendisse gravida massa sed nibh volutpat dictum. Fusce consectetur ante at consectetur ultrices. Fusce tempor tortor nec dui pharetra, egestas semper nibh semper. Cras dignissim interdum augue eget aliquet. Proin id augue ut leo posuere facilisis at vitae sapien.  Aliquam ac lacus ut tortor sollicitudin ultricies sed sed mauris. Pellentesque scelerisque eros a lobortis tristique. Curabitur eu suscipit orci. Aliquam congue ornare commodo. Sed quis placerat tortor, vitae lobortis ante. Vivamus quis rhoncus odio. Maecenas vehicula, nulla ut eleifend commodo, mi nulla ultrices lectus, a tristique quam sapien non enim. Donec pharetra pharetra mauris, a mollis augue. Aenean sit amet sodales enim. Donec arcu mi, accumsan ac bibendum nec, sagittis vitae magna. Nunc et erat ut leo mollis facilisis. Sed lacinia molestie tellus, eu vestibulum est sollicitudin eget. Nunc ac vestibulum dui, sit amet ultrices lacus. Praesent eleifend neque aliquam congue consectetur. Pellentesque lobortis eros at elit pretium, quis venenatis tortor hendrerit. Mauris ac pharetra eros. ', 'img_avatar1.png', '4f0113f6b71eb5cee02e52a509281417', '2017-01-18 07:48:00'),
(2, 'Dave Carter Jr.', 'dave.carter@gmail.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac orci vel justo euismod gravida vel ut lorem. Donec quis nisi purus. Suspendisse gravida massa sed nibh volutpat dictum. Fusce consectetur ante at consectetur ultrices. Fusce tempor tortor nec dui pharetra, egestas semper nibh semper. Cras dignissim interdum augue eget aliquet. Proin id augue ut leo posuere facilisis at vitae sapien.  Aliquam ac lacus ut tortor sollicitudin ultricies sed sed mauris. Pellentesque scelerisque eros a lobortis tristique. Curabitur eu suscipit orci. Aliquam congue ornare commodo. Sed quis placerat tortor, vitae lobortis ante. Vivamus quis rhoncus odio. Maecenas vehicula, nulla ut eleifend commodo, mi nulla ultrices lectus, a tristique quam sapien non enim. Donec pharetra pharetra mauris, a mollis augue. Aenean sit amet sodales enim. Donec arcu mi, accumsan ac bibendum nec, sagittis vitae magna. Nunc et erat ut leo mollis facilisis. Sed lacinia molestie tellus, eu vestibulum est sollicitudin eget. Nunc ac vestibulum dui, sit amet ultrices lacus. Praesent eleifend neque aliquam congue consectetur. Pellentesque lobortis eros at elit pretium, quis venenatis tortor hendrerit. Mauris ac pharetra eros. ', 'img_avatar2.png', '1610838743cc90e3e4fdda748282d9b8', '2017-01-18 07:48:00'),
(3, 'Isabelle Lebris', 'isabelle.lebris@gmail.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac orci vel justo euismod gravida vel ut lorem. Donec quis nisi purus. Suspendisse gravida massa sed nibh volutpat dictum. Fusce consectetur ante at consectetur ultrices. Fusce tempor tortor nec dui pharetra, egestas semper nibh semper. Cras dignissim interdum augue eget aliquet. Proin id augue ut leo posuere facilisis at vitae sapien.  Aliquam ac lacus ut tortor sollicitudin ultricies sed sed mauris. Pellentesque scelerisque eros a lobortis tristique. Curabitur eu suscipit orci. Aliquam congue ornare commodo. Sed quis placerat tortor, vitae lobortis ante. Vivamus quis rhoncus odio. Maecenas vehicula, nulla ut eleifend commodo, mi nulla ultrices lectus, a tristique quam sapien non enim. Donec pharetra pharetra mauris, a mollis augue. Aenean sit amet sodales enim. Donec arcu mi, accumsan ac bibendum nec, sagittis vitae magna. Nunc et erat ut leo mollis facilisis. Sed lacinia molestie tellus, eu vestibulum est sollicitudin eget. Nunc ac vestibulum dui, sit amet ultrices lacus. Praesent eleifend neque aliquam congue consectetur. Pellentesque lobortis eros at elit pretium, quis venenatis tortor hendrerit. Mauris ac pharetra eros. ', 'img_avatar3.png', '4757067ca131abf21c7dedea7efd0c80', '2017-01-18 07:48:00'),
(4, 'RAHMAT Rahmatumbara', 'rahmatumbara@outlook.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac orci vel justo euismod gravida vel ut lorem. Donec quis nisi purus. Suspendisse gravida massa sed nibh volutpat dictum. Fusce consectetur ante at consectetur ultrices. Fusce tempor tortor nec dui pharetra, egestas semper nibh semper. Cras dignissim interdum augue eget aliquet. Proin id augue ut leo posuere facilisis at vitae sapien.  Aliquam ac lacus ut tortor sollicitudin ultricies sed sed mauris. Pellentesque scelerisque eros a lobortis tristique. Curabitur eu suscipit orci. Aliquam congue ornare commodo. Sed quis placerat tortor, vitae lobortis ante. Vivamus quis rhoncus odio. Maecenas vehicula, nulla ut eleifend commodo, mi nulla ultrices lectus, a tristique quam sapien non enim. Donec pharetra pharetra mauris, a mollis augue. Aenean sit amet sodales enim. Donec arcu mi, accumsan ac bibendum nec, sagittis vitae magna. Nunc et erat ut leo mollis facilisis. Sed lacinia molestie tellus, eu vestibulum est sollicitudin eget. Nunc ac vestibulum dui, sit amet ultrices lacus. Praesent eleifend neque aliquam congue consectetur. Pellentesque lobortis eros at elit pretium, quis venenatis tortor hendrerit. Mauris ac pharetra eros. ', 'img_avatar4.png', '608082f16932a6a322ee8689adb0ce32', '2017-01-18 07:48:00'),
(5, 'Sandy Soerjadhi', 'sandy.soerjadhi@yahoo.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac orci vel justo euismod gravida vel ut lorem. Donec quis nisi purus. Suspendisse gravida massa sed nibh volutpat dictum. Fusce consectetur ante at consectetur ultrices. Fusce tempor tortor nec dui pharetra, egestas semper nibh semper. Cras dignissim interdum augue eget aliquet. Proin id augue ut leo posuere facilisis at vitae sapien.  Aliquam ac lacus ut tortor sollicitudin ultricies sed sed mauris. Pellentesque scelerisque eros a lobortis tristique. Curabitur eu suscipit orci. Aliquam congue ornare commodo. Sed quis placerat tortor, vitae lobortis ante. Vivamus quis rhoncus odio. Maecenas vehicula, nulla ut eleifend commodo, mi nulla ultrices lectus, a tristique quam sapien non enim. Donec pharetra pharetra mauris, a mollis augue. Aenean sit amet sodales enim. Donec arcu mi, accumsan ac bibendum nec, sagittis vitae magna. Nunc et erat ut leo mollis facilisis. Sed lacinia molestie tellus, eu vestibulum est sollicitudin eget. Nunc ac vestibulum dui, sit amet ultrices lacus. Praesent eleifend neque aliquam congue consectetur. Pellentesque lobortis eros at elit pretium, quis venenatis tortor hendrerit. Mauris ac pharetra eros. ', 'img_avatar1.png', 'd686a53fb86a6c31fa6faa1d9333267e', '2017-01-18 07:48:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oop_comments`
--
ALTER TABLE `oop_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oop_news`
--
ALTER TABLE `oop_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oop_users`
--
ALTER TABLE `oop_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oop_comments`
--
ALTER TABLE `oop_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oop_news`
--
ALTER TABLE `oop_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oop_users`
--
ALTER TABLE `oop_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
