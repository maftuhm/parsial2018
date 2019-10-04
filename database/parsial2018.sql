-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Agu 2018 pada 11.39
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3724098_parsial2018`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama` varchar(32) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `hak_akses` varchar(32) NOT NULL,
  `pj_content` float NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `tgl_daftar`, `nama`, `username`, `email`, `no_hp`, `status`, `hak_akses`, `pj_content`, `password`) VALUES
(1, '2017-11-23 05:47:54', 'Maftuh Mashuri', 'Maftuh', 'maftuhsafii@gmail.com', '083816736126', 1, 'Admin', 20, '2ceaa307111c73a1af40116534402e75'),
(2, '2017-11-27 16:00:46', 'Retno Citra Asih', 'Citra', 'rcitraasih@gmail.com', '085692940388', 2, 'Semua Data Parsial', 1.2, '53417ce02300bb54bc57acb124954e08'),
(3, '2017-11-24 09:28:28', 'Danny Yoga Alfarizki', 'Danny', 'dannyoga9aks2011@gmail.com', '', 3, 'Data Peserta Futsal', 0, 'c85ca1e7ad7b1df79244795286d6419b'),
(4, '2017-11-24 09:28:42', 'Lintang Bristian', 'Lintang', 'lintangbristian@gmail.com', '', 3, 'Data Peserta Futsal', 0, '2ec1c3aacab5f9118003b112193d229e'),
(5, '2017-11-23 05:47:54', 'Parsial', 'Parsial 2018', 'parsialhimatika.uinjkt@gmail.com', '', 2, 'Semua Data Peserta', 0, '959f893c9f9b23a28610bd5eb9f9bc80'),
(6, '2017-11-24 09:37:17', 'Bagisti', 'Bagisti', 'bagisti.agis14@gmail.com', '081386314898', 2, 'Semua Data Parsial', 0, 'c990d61b1cda265ba95053800a1b8ab7'),
(7, '2017-11-24 09:31:52', 'Math Competiton', 'Mathcomp', 'mathcomp.parsial2018@gmail.com', '', 4, 'Data Peserta Mathcomp', 0, '030266fb16c18b66e7e48208c47b884f'),
(8, '2017-11-27 16:08:39', 'Adisty Putri Aulia', 'Adisti', 'adistyputriaulia@gmail.com', '085718765202', 2, 'Semua Data Parsial', 3, '959f893c9f9b23a28610bd5eb9f9bc80'),
(9, '2017-11-27 16:10:34', 'Tira Amalia', 'Amalia', 'amaliatira26@gmail.com', '082213203822', 2, 'Semua Data Parsial', 4, '27ec5822d1508530ed9be46eaeba5c2c'),
(11, '2017-11-30 06:17:15', 'Figia Cantikasari Giyana', 'Figia', 'figiacg@gmail.com', '08561130411', 2, 'Semua Data Parsial', 2, 'a8e52217c48d055fb98e2732c587d056'),
(12, '2017-12-02 05:10:26', 'Azahra  Benita', 'Benita', 'azahrabenita@gmail.com', '085771436606', 2, 'Semua Data Parsial', 1.1, '97f64dc316a0d888ebee48c9ed4da742'),
(14, '2017-12-13 06:28:01', 'Rahma', 'Rahma', 'rahmawahma@outlook.com', '', 5, 'Data Peserta Singcomp', 0, 'c090d226597e6e273ee832437462a733'),
(15, '2018-01-09 20:08:15', 'Intan Sari Dewi', 'intan', 'intanisdsm08@gmail.com', '085607002701', 2, 'Semua Data Parsial', 5, '959f893c9f9b23a28610bd5eb9f9bc80'),
(16, '2018-02-26 16:41:48', 'Merhaba', 'Merhaba', 'merhaba.dinamriana@gmail.com', '089637750086', 3, 'Data Peserta Futsal', 0, '2ec1c3aacab5f9118003b112193d229e'),
(17, '2018-03-06 14:43:07', 'Diaz Farahdiba', 'Diaz', 'diazfarahdiba@gmail.com', '087886472772', 6, 'Data Peserta Workshop', 0, '959f893c9f9b23a28610bd5eb9f9bc80'),
(18, '2018-03-16 12:20:44', 'Ricko Rinaldi', 'Ricko', 'ricko.rinaldy.rr@gmail.com', '1123', 2, 'Semua Data Parsial', 2, '959f893c9f9b23a28610bd5eb9f9bc80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact_us`
--

INSERT INTO `contact_us` (`id`, `tgl`, `nama`, `email`, `subject`, `pesan`) VALUES
(21, '2018-01-09 10:06:53', 'Okta alfia noerafifa', 'Okta.alfia17@gmail.com', 'Keluhan', 'Keluhan anda...\r\nTidak ada e-mail masuk tentang pendaftaran berhasil & untuk mengkonfirmasi pembayaran \r\nTerimakasih.'),
(23, '2018-01-09 12:30:39', 'Iklina wardani', 'iklinawardani00@gmail.com', 'Gagal di email', 'Keluhan anda...\r\nEmail nya belum masuk '),
(24, '2018-01-09 12:45:33', 'Iklina wardani', 'iklinawardani00@gmail.com', 'Saya salah masukan e', 'Keluhan anda... saya salah masukan email'),
(28, '2018-01-19 05:59:47', 'Alvina Aulia', 'alvinaaaulia@gmail.com', 'Foto bukti tranfer', 'Saya sudah mengirim foto bukti transfer, tapi berkas/file tidak bisa terkirim'),
(29, '2018-01-26 05:02:12', 'Errin Melliyana Luffiani', 'errinmeliyana@gmail.com', 'Konfirmasi Pembayara', 'Tidak ada kiriman di gmail saya padahal sudah konfirmasi pembayaran'),
(30, '2018-01-28 03:52:51', 'Hanifah Hanan', 'hanifahhanan93@yahoo.com', 'File kosong waktu at', 'Tadi saya sudah transfer uangnya dan waktu kirim bukti mucul tulisan \"File kosong atau file terlalu besar...\" '),
(31, '2018-02-05 10:19:04', 'Putri oktaviani', 'poktaviani731@gmail.com', 'Try out', 'Tidak bisaaa mengirim tanda bukti transfer. '),
(32, '2018-02-08 12:30:06', 'M. Ilham Akbar R.S.', 'rilham5552@gmail.com', 'Bertanya', 'Apakah foto bukti pembayaran saya terkirim? Karena ada notif foto terlalu besar'),
(33, '2018-02-14 12:49:57', 'Khaira Ummah Syafitri', 'imjustira@gmail.com', 'permasalahan transfe', 'Tidak bisa mengirim bukti transfer '),
(34, '2018-02-14 14:11:30', 'Nandhita nur fadjriah ', 'naandhittaaa@gmail.com', 'Bukti pembayaran ', 'Slip pembayaran sudah saya send'),
(35, '2018-02-20 10:11:22', 'Rahmawati Rianjani', 'rahmawatirianjani@gmail.com', 'Bukti transfer', 'bukti transfernya tidak bisa di upload kak'),
(36, '2018-02-20 12:47:25', 'intan seruni', 'intanseruniseruni@yahoo.co.id', 'keperawatan', 'Tidak ada'),
(37, '2018-02-20 12:47:59', 'intan seruni', 'intanseruniseruni@yahoo.co.id', 'keperawatan', 'Gagal mngirim file'),
(38, '2018-02-21 12:12:49', 'Abdullah Nur Azhar', 'abdnurazhar@gmail.com', 'Pendaftaran HFC', 'Assalamualaikum, maaf ini saya dari HFC Pakuan Bogor. Gini kemarin saya ngisi pendaftaran yang hal pertama. Proses nya pun berhasil, nah waktu ngisi hal kedua yg data pemain, saya tidak teruskan karna data pemain blm lengkap. \r\nTadi siang saya mau nerusin form pendaftaran yg hal kedua(ngisi data pemain). Setelah saya buka ternyata gabisa ngelanjutin hal kedua. Krna hrs ngisi dlu hal pertama. Setelah saya isi dengan data baru. Proses nya pun berhasil. Waktu pengisian data pemain, saya salah input data pemain, datanya ketuker semua. Data krs sama nama, foto ga sinkron. Pembayaran sudah saya selesaikan. Jadi gimana ya solusi nya? Hatur nuhun '),
(39, '2018-02-28 08:20:07', 'Mochamad Sofyan Muttaqin ', 'mochamad.sofyan76@gmail.com', 'Gagal di form terakh', 'Pas nge submit ngga ada tulisan berhasil atau gagal,  tetapi malah di suruh ngisi form ya lagi '),
(40, '2018-03-06 13:48:34', 'Satrio Agung Subekti', 'satrioagungsubekti@gmail.com', 'Mau tanya', 'Saya masuk gelombang ke berapa?\r\nBerapa biaya yang harus di bayar?'),
(41, '2018-03-09 13:24:33', 'RAYHAN RAZIF TAUFIQ ', '95rayhan.razif.t@gmail.com', 'Konfirmasi pembayara', 'Saya sudah melakukan pembayaran atas nama RAYHAN RAZIF TAUFIQ no rek atas nama Rosdiani'),
(42, '2018-03-10 04:13:51', 'Ajeng fera', 'ajengfera102@gmail.com', 'Transfer', 'Keluhan anda.. saya tidak memiliki rakening bank & saya tidak memilikinya kartu kredit'),
(43, '2018-03-11 08:47:58', 'Anisa putri', 'anisaputrinabilah@gmail.com', 'Gk bisa ngirim bukti', 'Kak kok saya selalu gagal y klo mau ngrim bukti pembayarannya'),
(44, '2018-03-11 12:56:08', 'Khalia Khairunnisa', 'khaliakhairunnisa058@gmail.com', 'Parsialhimatika@gmai', 'Keluhan anda...foto bukti pembayaran tidak terkirim'),
(45, '2018-03-12 17:55:05', 'Akmal Ramadhan', 'ramadak18@gmail.com', 'Transfer ATM', 'Assalamu\'alaikum Wr. Wb.\r\n\r\nMaaf, kak ingin bertanya, setelah daftar TO SBMPTN, itu kira - kira batas pembayaran nya paling lambat kapan ? Mohon maaf apabila ada kesalahan dalam pengetikan ini, terima kasih kak !\r\n\r\nWassalamu\'alaikum Wr. Wb.'),
(46, '2018-03-16 10:06:41', 'Fahrul rizky', 'Fahrul.risky28@gmail.com', 'Harap ditangani', 'Nomor peserta tak kunjung terkirim'),
(47, '2018-03-16 13:39:55', 'Fahru Robiansyah', 'fahrurobi@gmail.com', 'Konfirmasi Pembayara', 'Keluhan anda...Kak Saya Udah Membayar uang TO nya, tapi saya telat untuk konfirmasi nya, yg JD permasalahan nya boleh tidak saya ikut TO tapi tidak pakai surat undangan tetapi pakai bukti pembayaran??? Tolong jawabannya...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pemain_futsal`
--

CREATE TABLE `data_pemain_futsal` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_pemain` varchar(50) NOT NULL,
  `nama_foto` varchar(300) NOT NULL,
  `size_foto` int(11) NOT NULL,
  `type_foto` varchar(10) NOT NULL,
  `nama_ktm` varchar(300) NOT NULL,
  `size_ktm` int(11) NOT NULL,
  `type_ktm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pemain_futsal`
--

INSERT INTO `data_pemain_futsal` (`id`, `nomor`, `email`, `nama_pemain`, `nama_foto`, `size_foto`, `type_foto`, `nama_ktm`, `size_ktm`, `type_ktm`) VALUES
(15, 1, 'listyorini580@gmail.com', 'Anindito Dwi Apriano', '1-Dito_foto.png', 397104, 'png', '2-Dito_ktm.jpg', 331702, 'jpg'),
(16, 1, 'listyorini580@gmail.com', 'Nur Imad Al Haq', '3-Imad_foto.png', 226162, 'png', '4-Imad_ktm.png', 258437, 'png'),
(17, 1, 'listyorini580@gmail.com', 'Abd Aziz', '5-Aziz_foto.png', 304888, 'png', '6-Aziz_ktm.png', 143786, 'png'),
(18, 1, 'listyorini580@gmail.com', 'Indra Permana', '7-Indra.png', 287442, 'png', '8-Indra_ktm.png', 177153, 'png'),
(19, 2, 'listyorini580@gmail.com', 'Joko Setiyo Lelono', '9-Jose_foto.png', 219333, 'png', '10-Jose_ktm.png', 185961, 'png'),
(20, 2, 'listyorini580@gmail.com', 'Muhammad Taufik', '11-Taufik_foto.png', 163665, 'png', '12-Taufik_ktm.png', 103094, 'png'),
(21, 2, 'listyorini580@gmail.com', 'Bagas Prama Ananta', '13-Bagas_foto.png', 155069, 'png', '14-Bagas_ktm.jpg', 2026187, 'jpg'),
(22, 2, 'listyorini580@gmail.com', 'Yulian Bayu W', '15-Bayu_foto.jpg', 68032, 'jpg', '16-Bayu_ktm.jpg', 93667, 'jpg'),
(23, 3, 'listyorini580@gmail.com', 'Gerry Saefurrohman', '17-Gerry_foto.png', 273238, 'png', '18-Gerry_ktm.png', 198460, 'png'),
(24, 3, 'listyorini580@gmail.com', 'Edon Primindo F T', '19-Edon_foto.jpg', 52760, 'jpg', '20-Edon_ktm.jpg', 155690, 'jpg'),
(25, 3, 'listyorini580@gmail.com', 'Wafi Sabiq Masykuri', 'ipb1.jpg', 10292, 'jpg', 'ipb2.jpg', 239305, 'jpg'),
(26, 3, 'listyorini580@gmail.com', 'Novri Hendri', '23-Dahen_foto.jpg', 86073, 'jpg', '24-Dahen_ktp.jpg', 110430, 'jpg'),
(27, 1, 'jamesriyadi69@gmail.com', 'Muhammad Riyadi', '1-WhatsApp_Image_2018-02-12_at_13.58.29.jpeg', 129416, 'jpeg', '2-WhatsApp_Image_2018-02-12_at_14.19.42.jpeg', 81362, 'jpeg'),
(28, 1, 'jamesriyadi69@gmail.com', 'Fahmi Ayatullah', '3-WhatsApp_Image_2018-02-12_at_14.01.26.jpeg', 106565, 'jpeg', '4-WhatsApp_Image_2018-02-12_at_14.08.05.jpeg', 95614, 'jpeg'),
(29, 1, 'jamesriyadi69@gmail.com', 'Iip Fathurohman', '5-WhatsApp_Image_2018-02-09_at_19.36.46.jpeg', 29342, 'jpeg', '6-WhatsApp_Image_2018-02-12_at_14.19.51.jpeg', 76538, 'jpeg'),
(30, 1, 'jamesriyadi69@gmail.com', 'Muhammad Eko Prastyo', '7-IMG_20170512_222254.jpg', 617493, 'jpg', '8-Untitled.jpg', 67388, 'jpg'),
(31, 2, 'jamesriyadi69@gmail.com', 'Eka Febryana', '9-WhatsApp_Image_2018-02-08_at_22.16.26.jpeg', 133248, 'jpeg', '10-WhatsApp_Image_2018-02-12_at_14.12.16.jpeg', 66711, 'jpeg'),
(32, 2, 'jamesriyadi69@gmail.com', 'Ahmad Syarif Rianto', '11-WhatsApp_Image_2018-02-10_at_09.07.31.jpeg', 96832, 'jpeg', '12-Krs_ka_syariffffff.jpg', 70147, 'jpg'),
(33, 2, 'jamesriyadi69@gmail.com', 'Akhmad Mukhaeris Ayatullah', '13-IMG-20180212-WA0010_1_.jpg', 63787, 'jpg', '14-IMG-20180212-WA0009_1_.jpg', 96133, 'jpg'),
(34, 2, 'jamesriyadi69@gmail.com', 'Mohammad Rio', '15-IMG-20180212-WA0008_1_.jpg', 206011, 'jpg', '16-IMG-20180212-WA0007_1_.jpg', 71479, 'jpg'),
(35, 3, 'jamesriyadi69@gmail.com', 'Yusuf Mulyana', '17-ucup.jpg', 13401, 'jpg', '18-YUSUF.png', 45144, 'png'),
(36, 3, 'jamesriyadi69@gmail.com', 'Naufal Rizqullah', '19-IMG-20180212-WA0014_1_.jpg', 315834, 'jpg', '20-IMG-20180212-WA0013_1_.jpg', 64390, 'jpg'),
(37, 3, 'jamesriyadi69@gmail.com', 'Mastur', '21-IMG-20180212-WA0011_2_.jpg', 175466, 'jpg', '22-IMG-20180212-WA0012_1_.jpg', 90400, 'jpg'),
(38, 3, 'jamesriyadi69@gmail.com', 'Ivan Rivaldi', '23-ivan.jpg', 158483, 'jpg', '24-ivann.jpg', 76694, 'jpg'),
(51, 1, 'ikbalansori86@gmail.com', 'Abdul rachim', '1-1519269577669.jpg', 61570, 'jpg', '2-1519269557917.jpg', 94639, 'jpg'),
(52, 1, 'ikbalansori86@gmail.com', 'Arya panji susilo', '3-1519269589495.jpg', 107048, 'jpg', '4-1519269559475.jpg', 42315, 'jpg'),
(53, 1, 'ikbalansori86@gmail.com', 'Cesar', '5-1519269583528.jpg', 74078, 'jpg', '6-1519269556301.jpg', 76218, 'jpg'),
(54, 1, 'ikbalansori86@gmail.com', 'M iqbal ansori', '7-1519269580037.jpg', 40112, 'jpg', '8-1519269565571.jpg', 150455, 'jpg'),
(55, 2, 'ikbalansori86@gmail.com', 'Irfanto abinowo', '9-1519269924264.jpg', 65903, 'jpg', '10-1519269569362.jpg', 230026, 'jpg'),
(56, 2, 'ikbalansori86@gmail.com', 'Sukma azaiyah', '11-1519269593723.jpg', 70781, 'jpg', '12-1519269591811.jpg', 46246, 'jpg'),
(57, 2, 'ikbalansori86@gmail.com', 'Edy saputra', '13-1519270218075.jpg', 20027, 'jpg', '14-1519270204266.jpg', 120417, 'jpg'),
(58, 1, 'miradz571@gmail.com', 'Abdullah Nur Azhar', '1-IMG-20180203-WA0009.jpg', 33745, 'jpg', '2-Screenshot_2018-02-21-11-51-41-324_cn.wps.moffice_eng.png', 99499, 'png'),
(59, 1, 'miradz571@gmail.com', 'Pajar Nugraha', '3-IMG-20180203-WA0015.jpg', 76728, 'jpg', '4-Screenshot_2018-02-21-11-51-50-560_cn.wps.moffice_eng.png', 90791, 'png'),
(60, 1, 'miradz571@gmail.com', 'Muhamad Harpan Akbar', '5-IMG-20180203-WA0013.jpg', 59996, 'jpg', '6-Screenshot_2018-02-21-11-52-24-985_cn.wps.moffice_eng.png', 90035, 'png'),
(61, 1, 'miradz571@gmail.com', 'Mulyana Syamsudin', '7-IMG-20180203-WA0017.jpg', 111473, 'jpg', '8-Screenshot_2018-02-21-11-52-36-039_cn.wps.moffice_eng.png', 93752, 'png'),
(62, 2, 'miradz571@gmail.com', 'Falih Errahman', '9-IMG-20180203-WA0014.jpg', 61440, 'jpg', '10-Screenshot_2018-02-21-11-52-16-108_cn.wps.moffice_eng.png', 88055, 'png'),
(63, 2, 'miradz571@gmail.com', 'Indra Nurdin ', '11-IMG-20180203-WA0010.jpg', 57157, 'jpg', '12-Screenshot_2018-02-21-11-52-07-241_cn.wps.moffice_eng.png', 88616, 'png'),
(64, 2, 'miradz571@gmail.com', 'Muhammad Abdul Rauf', '13-IMG-20180203-WA0016.jpg', 113155, 'jpg', '14-Screenshot_2018-02-21-11-52-44-863_cn.wps.moffice_eng.png', 98556, 'png'),
(65, 2, 'miradz571@gmail.com', 'Zapar Sidik', '15-IMG-20180203-WA0011.jpg', 80008, 'jpg', '16-IMG-20180222-WA0009.jpg', 377972, 'jpg'),
(66, 3, 'miradz571@gmail.com', 'Puja Aji Raharja', '17-IMG-20180203-WA0012.jpg', 30471, 'jpg', '18-Screenshot_2018-02-21-11-51-57-928_cn.wps.moffice_eng.png', 92249, 'png'),
(67, 3, 'miradz571@gmail.com', 'Taufik Malikul Ihsan', '19-IMG-20180204-WA0001.jpg', 105008, 'jpg', '20-Screenshot_2018-02-21-11-52-56-050_cn.wps.moffice_eng.png', 103719, 'png'),
(73, 1, 'Aldinaalrasyid11@gmail.com', 'akmal sholah ', '1-WhatsApp_Image_2018-02-18_at_17.00.27.jpeg', 95311, 'jpeg', '2-WhatsApp_Image_2018-02-18_at_17.03.09.jpeg', 176327, 'jpeg'),
(74, 1, 'Aldinaalrasyid11@gmail.com', 'imam wicaksono', '3-WhatsApp_Image_2018-02-16_at_19.15.35.jpeg', 50722, 'jpeg', '4-WhatsApp_Image_2018-02-16_at_19.15.36.jpeg', 61833, 'jpeg'),
(75, 1, 'Aldinaalrasyid11@gmail.com', 'asahudin nur hayazie', '5-WhatsApp_Image_2018-02-21_at_17.18.03.jpeg', 244674, 'jpeg', '6-WhatsApp_Image_2018-02-21_at_17.17.04.jpeg', 57708, 'jpeg'),
(76, 1, 'Aldinaalrasyid11@gmail.com', 'muhamad riki mubarok', '7-WhatsApp_Image_2018-02-21_at_15.12.23.jpeg', 49075, 'jpeg', '8-WhatsApp_Image_2018-02-21_at_15.12.23__1_.jpeg', 68431, 'jpeg'),
(77, 2, 'Aldinaalrasyid11@gmail.com', 'wahid saputra', '9-WhatsApp_Image_2018-02-18_at_07.37.23.jpeg', 142260, 'jpeg', '10-WhatsApp_Image_2018-02-18_at_07.36.54.jpeg', 76122, 'jpeg'),
(78, 2, 'Aldinaalrasyid11@gmail.com', 'erik kartono', '11-WhatsApp_Image_2018-02-21_at_16.04.14.jpeg', 83362, 'jpeg', '12-WhatsApp_Image_2018-02-21_at_16.04.50.jpeg', 121281, 'jpeg'),
(79, 2, 'Aldinaalrasyid11@gmail.com', 'rinaldi wiranata', '13-WhatsApp_Image_2018-02-23_at_19.47.50.jpeg', 63827, 'jpeg', '14-WhatsApp_Image_2018-02-23_at_19.47.52.jpeg', 107254, 'jpeg'),
(80, 2, 'Aldinaalrasyid11@gmail.com', 'fachri saputra ', '15-WhatsApp_Image_2018-02-21_at_15.18.16.jpeg', 61832, 'jpeg', '16-WhatsApp_Image_2018-02-21_at_15.15.27.jpeg', 120998, 'jpeg'),
(81, 3, 'Aldinaalrasyid11@gmail.com', 'muhamad arya jaya sena putra P', '19-WhatsApp_Image_2018-02-25_at_14.15.57.jpeg', 95808, 'jpeg', '20-WhatsApp_Image_2018-02-24_at_20.09.58.jpeg', 128168, 'jpeg'),
(82, 3, 'Aldinaalrasyid11@gmail.com', 'aldina al rasyid', '21-WhatsApp_Image_2018-02-24_at_13.06.49.jpeg', 142075, 'jpeg', '22-WhatsApp_Image_2018-02-24_at_13.06.24.jpeg', 72951, 'jpeg'),
(83, 3, 'Aldinaalrasyid11@gmail.com', 'anugerah yuza firdaus', 'IMG-20180304-WA0006.jpg', 71208, 'jpg', 'salamun_fc_no11-1.jpg', 121285, 'jpg'),
(84, 1, 'mikhaelandreas96@gmail.com', 'Muhammad Ilham', '1-IMG-20180225-WA0010.jpg', 98576, 'jpg', '2-IMG-20180225-WA0011.jpg', 96069, 'jpg'),
(85, 1, 'mikhaelandreas96@gmail.com', 'Dimas Ainul Nuriman', '3-IMG-20180226-WA0003.jpg', 103088, 'jpg', '4-IMG-20180226-WA0002.jpg', 107016, 'jpg'),
(86, 1, 'mikhaelandreas96@gmail.com', 'Irsyad Khalid Ilyas', '5-IMG-20180226-WA0005.jpg', 239501, 'jpg', '6-IMG-20180226-WA0006.jpg', 105717, 'jpg'),
(87, 1, 'mikhaelandreas96@gmail.com', 'Faisal Nur Cahya', '7-IMG-20180226-WA0008.jpg', 79905, 'jpg', '8-IMG-20180226-WA0007.jpg', 93852, 'jpg'),
(88, 2, 'mikhaelandreas96@gmail.com', 'Rahmat Zhafran', '9-IMG-20180226-WA0011.jpg', 88363, 'jpg', '10-IMG-20180226-WA0012.jpg', 99001, 'jpg'),
(89, 2, 'mikhaelandreas96@gmail.com', 'Evandy Simbolon', '11-IMG_20180226_175848_964.jpg', 30783, 'jpg', '12-IMG-20180226-WA0009.jpg', 50949, 'jpg'),
(90, 1, 'thariqseven75@gmail.com', 'Tariq mukhlisin', '1-teem.jpg', 66566, 'jpg', '2-Teem.jpg', 279822, 'jpg'),
(91, 1, 'thariqseven75@gmail.com', 'Indra wijaya', '3-indra.jpg', 67489, 'jpg', '4-Indra.jpg', 302903, 'jpg'),
(92, 1, 'thariqseven75@gmail.com', 'Arman fadil maulana', '5-momo.jpg', 576091, 'jpg', '6-Momo.jpg', 385631, 'jpg'),
(93, 1, 'thariqseven75@gmail.com', 'Maulana rizky septiaji', '7-maul.jpg', 737725, 'jpg', '8-Maul.jpg', 355648, 'jpg'),
(94, 2, 'thariqseven75@gmail.com', 'Aziz rachmadji', '9-aji.jpg', 113299, 'jpg', '10-Aji.jpg', 252050, 'jpg'),
(95, 2, 'thariqseven75@gmail.com', 'Tedy zainul muttaqin', '11-tedy.jpg', 866065, 'jpg', '12-Tedy.jpg', 233523, 'jpg'),
(96, 2, 'thariqseven75@gmail.com', 'Ilham akbar ramadhan', '13-ilham.jpg', 603873, 'jpg', '14-Ilham.jpg', 230140, 'jpg'),
(97, 2, 'thariqseven75@gmail.com', 'Anto wijaya', '15-anto.jpg', 63305, 'jpg', '16-Anto.jpg', 382553, 'jpg'),
(98, 3, 'thariqseven75@gmail.com', 'Ibnu rasyid hamidi', '17-ibnu.jpg', 570578, 'jpg', '18-Ibnu.jpg', 364397, 'jpg'),
(99, 3, 'thariqseven75@gmail.com', 'Poltak fathirisi nurlam', '19-poltak.jpg', 650832, 'jpg', '20-poltak.jpg', 899526, 'jpg'),
(100, 3, 'thariqseven75@gmail.com', 'Rahmanda', '21-manda.jpg', 59468, 'jpg', '22-manda.jpg', 650026, 'jpg'),
(101, 1, 'mochamad.sofyan76@gmail.com', 'Mochamad Sofyan Muttaqin ', '1-PicsArt_02-23-07.19.44.jpg', 73942, 'jpg', '2-IMG_20180227_193438.jpg', 1861414, 'jpg'),
(102, 1, 'mochamad.sofyan76@gmail.com', 'Zakaria Savero ', '3-Screenshot_2018-02-27-21-41-54-287_jp.naver.line.android.png', 1045643, 'png', '4-1519778296585.jpg', 90670, 'jpg'),
(103, 1, 'mochamad.sofyan76@gmail.com', 'Roihan Mufli Arjuna ', '5-1519778229935.jpg', 79604, 'jpg', '6-1519778232097.jpg', 101851, 'jpg'),
(104, 1, 'mochamad.sofyan76@gmail.com', 'Ficho aji Wibowo ', '7-1519778237142.jpg', 43519, 'jpg', '8-1519778239377.jpg', 107992, 'jpg'),
(105, 2, 'mochamad.sofyan76@gmail.com', 'Syaiful Syafani ', '9-1519778244225.jpg', 192962, 'jpg', '10-1519778275094.jpg', 215188, 'jpg'),
(106, 2, 'mochamad.sofyan76@gmail.com', 'Uno Aldians Wibowo ', '11-1519778282393.jpg', 7769, 'jpg', '12-1519778285050.jpg', 154274, 'jpg'),
(119, 2, 'mochamad.sofyan76@gmail.com', 'Ifan alriansyah', '13-1519807824152.jpg', 55212, 'jpg', '14-1519807827130.jpg', 130311, 'jpg'),
(120, 2, 'mochamad.sofyan76@gmail.com', 'Novatama Artha Putra', '15-1519807849722.jpg', 96583, 'jpg', '16-1519807851097.jpg', 153542, 'jpg'),
(121, 3, 'mochamad.sofyan76@gmail.com', 'Muhammad Buchori Ramadhan', '17-1519807853477.jpg', 29177, 'jpg', '18-1519807860508.jpg', 103472, 'jpg'),
(122, 3, 'mochamad.sofyan76@gmail.com', 'Hosananta Titus Listyo Putra', '19-1519807863882.jpg', 94678, 'jpg', '20-1519807867271.jpg', 86155, 'jpg'),
(123, 3, 'mochamad.sofyan76@gmail.com', 'Muhammad Ghiffari Raihan', '21-1519807873353.jpg', 6781, 'jpg', '22-1519807870499.jpg', 95711, 'jpg'),
(124, 3, 'mochamad.sofyan76@gmail.com', 'Ummar Dahlan', '23-1519807874942.jpg', 8378, 'jpg', '24-1519807876532.jpg', 57973, 'jpg'),
(125, 1, 'ramazikri01@gmail.com', 'Rizal Asyari ', '1-1519959985147.jpg', 103586, 'jpg', '2-1519959987172.jpg', 148952, 'jpg'),
(126, 1, 'ramazikri01@gmail.com', 'Muhammad Dwiky Ramadhani', '3-1519947272961.jpg', 70898, 'jpg', '4-1519947269518.jpg', 84492, 'jpg'),
(127, 1, 'ramazikri01@gmail.com', 'Mudzakkir Mubarok', '5-1519960093978.jpg', 130229, 'jpg', '6-1519960096679.jpg', 156198, 'jpg'),
(128, 1, 'ramazikri01@gmail.com', 'Yefnanda Purnomo Putra', '7-1519960180633.jpg', 189934, 'jpg', '8-1519960184435.jpg', 590891, 'jpg'),
(129, 2, 'ramazikri01@gmail.com', 'Aldika wahyudi', '9-1519965060805.jpg', 22816, 'jpg', '10-1519965062865.jpg', 279665, 'jpg'),
(130, 2, 'ramazikri01@gmail.com', 'Gusti Ari Zul Ahda ', '11-1519965050352.jpg', 12346, 'jpg', '12-1519965052606.jpg', 46144, 'jpg'),
(131, 1, 'dimasrizki56@gmail.com', 'Alkautsar Anhar ', '1-1519980874651.jpg', 173746, 'jpg', '2-1519980872612.jpg', 40261, 'jpg'),
(132, 1, 'dimasrizki56@gmail.com', 'Fahmi Ramadhan', '3-IMG_20171212_082317.jpg', 1413709, 'jpg', '4-1519980987410.jpg', 172421, 'jpg'),
(133, 1, 'dimasrizki56@gmail.com', 'Agung Pangestu ', '5-1519981976325.jpg', 185322, 'jpg', '6-1519980863377.jpg', 196799, 'jpg'),
(134, 1, 'dimasrizki56@gmail.com', 'Fahrurozi ', '7-1519980870579.jpg', 167703, 'jpg', '8-1519980888205.jpg', 75469, 'jpg'),
(135, 2, 'dimasrizki56@gmail.com', 'Ahmad Rifqi ', '9-1519980876529.jpg', 152532, 'jpg', '10-1519980879665.jpg', 102030, 'jpg'),
(136, 2, 'dimasrizki56@gmail.com', 'Dimas Rizki Fadhillah', '11-IMG_20180115_090936.jpg', 1021487, 'jpg', '12-1519981113928.jpg', 115290, 'jpg'),
(137, 2, 'ramazikri01@gmail.com', 'Abdul Rizal ', '13-1519965275557.jpg', 9615, 'jpg', '14-1519965277246.jpg', 117151, 'jpg'),
(138, 2, 'ramazikri01@gmail.com', 'Ali nursaid', '15-1519969836909.jpg', 82709, 'jpg', '16-1519969847229.jpg', 89161, 'jpg'),
(139, 3, 'ramazikri01@gmail.com', 'Wafid renaldi', '17-1519976569756.jpg', 78684, 'jpg', '18-1519976578100.jpg', 113474, 'jpg'),
(140, 3, 'ramazikri01@gmail.com', 'Muhammad Bagus Dwi Waryudhiansyah', '19-1519992148927.jpg', 25347, 'jpg', '20-1519992613099.jpg', 61395, 'jpg'),
(141, 3, 'ramazikri01@gmail.com', 'Nugraha Pratama Holis ', '21-1519991183616.jpg', 137098, 'jpg', '22-1519991189560.jpg', 122138, 'jpg'),
(142, 3, 'ramazikri01@gmail.com', 'Rais Alhakim', '23-1519991995263.jpg', 85810, 'jpg', '24-1519991997275.jpg', 75673, 'jpg'),
(143, 3, 'thariqseven75@gmail.com', 'Risang Muhammad', 'Image_0da6b26.jpg', 0, '', 'Image_d808a84_ktm.jpg', 0, ''),
(144, 1, 'dafa9aksel2014@gmail.com', 'Zainul', '1-1519966293514.jpg', 331069, 'jpg', '2-1519979849906.jpg', 115544, 'jpg'),
(145, 1, 'dafa9aksel2014@gmail.com', 'Ilham Fauzan', '3-1519979887469.jpg', 67165, 'jpg', '4-1520138752361.jpg', 121297, 'jpg'),
(146, 1, 'dafa9aksel2014@gmail.com', 'Ilham Gunawan', '5-1519966296271.jpg', 58585, 'jpg', '6-1519979872118.jpg', 89601, 'jpg'),
(147, 1, 'dafa9aksel2014@gmail.com', 'Sahid ', '7-1519966252526.jpg', 342647, 'jpg', '8-1519970997663.jpg', 109632, 'jpg'),
(148, 2, 'dafa9aksel2014@gmail.com', 'Farisi', '9-1519966246686.jpg', 282177, 'jpg', '10-1519979863460.jpg', 151008, 'jpg'),
(149, 2, 'dafa9aksel2014@gmail.com', 'Simon', '11-1519966291689.jpg', 447777, 'jpg', '12-1520061863309.jpg', 94471, 'jpg'),
(150, 2, 'dafa9aksel2014@gmail.com', 'Ajay', '13-1519966953584.jpg', 73936, 'jpg', '14-1519966956844.jpg', 162483, 'jpg'),
(151, 2, 'dafa9aksel2014@gmail.com', 'Egi', '15-1519972338678.jpg', 150311, 'jpg', '16-1519972341480.jpg', 114641, 'jpg'),
(152, 3, 'dafa9aksel2014@gmail.com', 'Dafa', '17-1519794382171.jpg', 56483, 'jpg', '18-IMG_20180304_115217.jpg', 1204801, 'jpg'),
(153, 3, 'dafa9aksel2014@gmail.com', 'Faris', '19-1520138754658.jpg', 55200, 'jpg', '20-1519991414768.jpg', 18134, 'jpg'),
(154, 2, 'dimasrizki56@gmail.com', 'Ammar Ichsan ', '13-1519981249383.jpg', 229132, 'jpg', '14-1519981151847.jpg', 290688, 'jpg'),
(155, 2, 'dimasrizki56@gmail.com', 'Akbar Amanda ', '15-1519980868851.jpg', 15873, 'jpg', '16-1519980866433.jpg', 162172, 'jpg'),
(156, 3, 'dimasrizki56@gmail.com', 'Rizki Dwi Nugroho ', '17-1495691076388.jpg', 75858, 'jpg', '18-1519980989593.jpg', 263482, 'jpg'),
(157, 3, 'dimasrizki56@gmail.com', 'Fikriseno ', '19-1519981966304.jpg', 195209, 'jpg', '20-1519981964178.jpg', 234122, 'jpg'),
(158, 3, 'dimasrizki56@gmail.com', 'Reynaldi ', '21-1519981086611.jpg', 91649, 'jpg', '22-1519980984998.jpg', 167314, 'jpg'),
(159, 3, 'dimasrizki56@gmail.com', 'Riyad Assomady', '23-1520165692158.jpg', 28871, 'jpg', '24-1520165711798.jpg', 55135, 'jpg'),
(160, 1, 'wahyusrikuncoro18@gmail.com', 'gema fatin', '1-1520230193273.jpg', 446965, 'jpg', '2-1520230221350.jpg', 408994, 'jpg'),
(161, 1, 'wahyusrikuncoro18@gmail.com', 'fajar', '3-1520230186713.jpg', 42788, 'jpg', '4-1520230183106.jpg', 82966, 'jpg'),
(162, 1, 'wahyusrikuncoro18@gmail.com', 'ervan', '5-1520230170543.jpg', 124070, 'jpg', '6-1520230160272.jpg', 267611, 'jpg'),
(163, 1, 'wahyusrikuncoro18@gmail.com', 'rama putra', '7-1520230237975.jpg', 71770, 'jpg', '8-1520230239208.jpg', 83029, 'jpg'),
(164, 2, 'wahyusrikuncoro18@gmail.com', 'rafi farhan', '9-1520230171690.jpg', 78669, 'jpg', '10-1520230163504.jpg', 70401, 'jpg'),
(165, 2, 'wahyusrikuncoro18@gmail.com', 'fazlurrahman', '11-1520230531027.jpg', 138518, 'jpg', '12-1520230167417.jpg', 86942, 'jpg'),
(166, 1, 'mianovillia64@gmail.com', 'Fahmi', '1-fahmi.jpg', 123587, 'jpg', '2-fahmii.jpg', 169104, 'jpg'),
(167, 1, 'mianovillia64@gmail.com', 'Farhan', '3-farhan.jpg', 142067, 'jpg', '4-farhann.jpg', 114648, 'jpg'),
(168, 1, 'mianovillia64@gmail.com', 'Firman', '5-firman.jpg', 153821, 'jpg', '6-firmann.jpg', 151215, 'jpg'),
(169, 1, 'mianovillia64@gmail.com', 'Iqbal', '7-iqbal_coach.jpg', 119785, 'jpg', '8-iqbal_coachh.jpg', 85636, 'jpg'),
(170, 2, 'mianovillia64@gmail.com', 'yusuf', '9-yusuf.jpg', 20833, 'jpg', '10-yusuff.jpg', 185687, 'jpg'),
(171, 2, 'mianovillia64@gmail.com', 'taufik', '11-taufik.jpg', 93556, 'jpg', '12-taufikk.jpg', 88978, 'jpg'),
(172, 2, 'mianovillia64@gmail.com', 'Riki', '13-riki.jpg', 107054, 'jpg', '14-rikii.jpg', 84945, 'jpg'),
(173, 2, 'mianovillia64@gmail.com', 'tino', '15-tino.jpg', 96769, 'jpg', '16-tinoo.jpg', 82927, 'jpg'),
(174, 3, 'mianovillia64@gmail.com', 'chandra', '17-chandra.jpg', 66054, 'jpg', '18-chandraa.jpg', 78780, 'jpg'),
(175, 3, 'mianovillia64@gmail.com', 'mamun', '19-mamun.jpg', 139278, 'jpg', '20-mamunn.jpg', 81050, 'jpg'),
(176, 1, 'm.ariqyusa5@gmail.com', 'Aldi Purwanto', '1-10491182_759750044089272_8577437692768186646_n.jpg', 57682, 'jpg', '2-Aldi.jpg', 139257, 'jpg'),
(177, 1, 'm.ariqyusa5@gmail.com', 'Chelvian Aroef', '3-1520684143380.jpg', 170156, 'jpg', '4-1519414355579.jpg', 198063, 'jpg'),
(178, 1, 'm.ariqyusa5@gmail.com', 'Andi Maulana', '5-ANDI.jpg', 35824, 'jpg', '6-ANDI_KTM.jpg', 251116, 'jpg'),
(179, 1, 'm.ariqyusa5@gmail.com', 'Muslar Alibasya', '7-BASY.jpg', 133716, 'jpg', '8-BASYA.jpg', 192729, 'jpg'),
(180, 2, 'm.ariqyusa5@gmail.com', 'Kathan Gerry', '9-GERRY.jpg', 59611, 'jpg', '10-GERRY_KTM.jpg', 173697, 'jpg'),
(181, 2, 'm.ariqyusa5@gmail.com', 'Shiddiq Khatomi', '11-IMG_2245.jpeg', 402794, 'jpeg', '12-Shiddiq_ktm.jpg', 134304, 'jpg'),
(182, 2, 'm.ariqyusa5@gmail.com', 'Naufal Khairil', '13-IMG_20180310_182845.jpg', 529388, 'jpg', '14-IMG_20180310_160045.jpg', 1634971, 'jpg'),
(183, 2, 'm.ariqyusa5@gmail.com', 'Fadhil Ghinawan', '15-IMG_20180312_000744.jpg', 370666, 'jpg', '16-IMG_20180312_001030.jpg', 118366, 'jpg'),
(184, 3, 'm.ariqyusa5@gmail.com', 'Alfi Rahmati Zidan', '19-zidan.jpg', 238723, 'jpg', '20-zidan_ktm.jpg', 859897, 'jpg'),
(185, 3, 'm.ariqyusa5@gmail.com', 'Pandu Pratama', '21-PANDU.jpg', 32260, 'jpg', '22-PANDU_KTM.jpg', 60601, 'jpg'),
(186, 3, 'm.ariqyusa5@gmail.com', 'Muhammad Irfan Arsyad Prayitno', '23-irfan.jpg', 18562, 'jpg', '24-irfan_ktm.jpg', 107181, 'jpg'),
(187, 2, 'mikhaelandreas96@gmail.com', 'Muhammad Yasin Rajab', '13-IMG-20180314-WA0009.jpg', 90402, 'jpg', '14-IMG-20180314-WA0008.jpg', 166354, 'jpg'),
(188, 2, 'mikhaelandreas96@gmail.com', 'Muhammad Ardiansyah R', '15-IMG-20180314-WA0010.jpg', 91352, 'jpg', '16-IMG-20180314-WA0011.jpg', 86127, 'jpg'),
(189, 1, 'rahmatagung910@gmail.com', 'deno rudolf', '1-deno_rudolf.jpg', 119410, 'jpg', '2-deno_rudolff.jpg', 67397, 'jpg'),
(190, 1, 'rahmatagung910@gmail.com', 'micael', '3-micael.jpg', 30523, 'jpg', '4-micaell.jpg', 64462, 'jpg'),
(191, 1, 'rahmatagung910@gmail.com', 'dovian', '5-dovian.jpg', 24479, 'jpg', '6-doviann.jpg', 140621, 'jpg'),
(192, 1, 'rahmatagung910@gmail.com', 'mohamad bagus', '7-mohamad_bagus.jpg', 100450, 'jpg', '8-mohamad_baguss.jpg', 144470, 'jpg'),
(193, 2, 'rahmatagung910@gmail.com', 'tomi hardiyanto', '9-tomi_handiyanto.jpg', 116671, 'jpg', '10-tomi_handiyantoo.jpg', 178240, 'jpg'),
(194, 2, 'rahmatagung910@gmail.com', 'irvandi romadhon', '11-irvandi_romadhon.jpg', 126764, 'jpg', '12-irvandi_romadhonn.jpg', 71827, 'jpg'),
(195, 2, 'rahmatagung910@gmail.com', 'rahmat agung', '13-rahmat_agung.jpg', 110643, 'jpg', '14-rahmat_agungg.jpg', 2037996, 'jpg'),
(196, 2, 'rahmatagung910@gmail.com', 'dionaldo', '15-dionaldo.jpg', 90197, 'jpg', '16-dionaldoo.jpg', 125769, 'jpg'),
(197, 3, 'rahmatagung910@gmail.com', 'syamsul', '17-syamsul.jpg', 149320, 'jpg', '18-syamsull.jpg', 50925, 'jpg'),
(198, 3, 'rahmatagung910@gmail.com', 'rizki suparno', '19-rizki_suparno.jpg', 53152, 'jpg', '20-rizki_suparnoo.jpg', 110482, 'jpg'),
(199, 3, 'rahmatagung910@gmail.com', 'gurizki kurniawan', '21-gurizki_kurniawan.jpg', 198461, 'jpg', '22-gurizki_kurniawann.jpg', 60086, 'jpg'),
(200, 3, 'rahmatagung910@gmail.com', 'muna atmadja', '23-munaa.jpg', 35287, 'jpg', '24-muna.jpg', 37112, 'jpg'),
(210, 1, 'diarfadilah98@gmail.com', 'fahrul', 'fahrull.jpg', 210310, 'jpg', 'fahrul.jpg', 170561, 'jpg'),
(211, 1, 'diarfadilah98@gmail.com', 'rachmad', 'rachmad.jpeg', 83601, 'jpeg', 'rachmadd.jpeg', 85542, 'jpeg'),
(212, 1, 'diarfadilah98@gmail.com', 'jalal', 'jalal.jpeg', 64855, 'jpeg', 'jalall.jpeg', 86879, 'jpeg'),
(213, 1, 'diarfadilah98@gmail.com', 'Rifaldi', 'rifaldi.jpeg', 34957, 'jpeg', 'rifaldii.jpeg', 76632, 'jpeg'),
(214, 2, 'diarfadilah98@gmail.com', 'adhi', 'adhi.jpeg', 61500, 'jpeg', 'adhii.png', 74912, 'png'),
(215, 2, 'diarfadilah98@gmail.com', 'bimo', 'bimo.jpeg', 11228, 'jpeg', 'bimoo.jpeg', 1370526, 'jpeg'),
(216, 2, 'diarfadilah98@gmail.com', 'tareq', 'tareq.jpeg', 146140, 'jpeg', 'tareqq.jpeg', 1236520, 'jpeg'),
(217, 3, 'diarfadilah98@gmail.com', 'abdul rozzaq', 'abdul_rozzaq.jpeg', 266182, 'jpeg', 'abdul_rozzaqq.jpeg', 1228724, 'jpeg'),
(218, 3, 'diarfadilah98@gmail.com', 'ilham', 'ilham.jpeg', 235962, 'jpeg', 'ilhamm.jpeg', 1228100, 'jpeg'),
(219, 3, 'diarfadilah98@gmail.com', 'syarif', 'syarif.jpeg', 1198333, 'jpeg', 'syariff.jpeg', 1286793, 'jpeg'),
(220, 1, 'mhmmd.rzzq@icloud.com', 'Wahyu', '1-wahyu.jpeg', 26925, 'jpeg', '2-wahyuu.jpeg', 107235, 'jpeg'),
(221, 1, 'mhmmd.rzzq@icloud.com', 'Danu', '3-danu.jpeg', 107206, 'jpeg', '4-danuu.jpeg', 112527, 'jpeg'),
(222, 1, 'mhmmd.rzzq@icloud.com', 'Naufal', '5-naufal.jpeg', 18611, 'jpeg', '6-naufall.jpeg', 112664, 'jpeg'),
(223, 1, 'mhmmd.rzzq@icloud.com', 'Rizky', '7-rizky.jpeg', 31486, 'jpeg', '8-rizkyy.jpeg', 101231, 'jpeg'),
(224, 2, 'mhmmd.rzzq@icloud.com', 'Ryan', '9-ryan.jpeg', 68881, 'jpeg', '10-ryann.jpeg', 99504, 'jpeg'),
(225, 2, 'mhmmd.rzzq@icloud.com', 'Ivan', '11-ivan.jpeg', 57471, 'jpeg', '12-ivann.jpeg', 105208, 'jpeg'),
(226, 2, 'mhmmd.rzzq@icloud.com', 'Fatur', '13-fatur.jpeg', 138639, 'jpeg', '14-faturr.jpeg', 114295, 'jpeg'),
(227, 2, 'mhmmd.rzzq@icloud.com', 'Syamsi', '15-syamsi.jpeg', 24278, 'jpeg', '16-syamsii.jpeg', 108166, 'jpeg'),
(228, 3, 'mhmmd.rzzq@icloud.com', 'Ganung', '17-ganung.jpeg', 95990, 'jpeg', '18-ganungg.jpeg', 102111, 'jpeg'),
(229, 3, 'mhmmd.rzzq@icloud.com', 'Rudi', '19-rudi.jpeg', 79121, 'jpeg', '20-rudii.jpeg', 97541, 'jpeg'),
(230, 1, 'dannyoga9aks2011@gmail.com', 'danny', '1-bsnsnsm_180317_0026.jpg', 30034, 'jpg', '2-bsnsnsm_180317_0025.jpg', 471033, 'jpg'),
(231, 1, 'dannyoga9aks2011@gmail.com', 'akmal', '3-bsnsnsm_180317_0001.jpg', 309766, 'jpg', '4-bsnsnsm_180317_0007.jpg', 154891, 'jpg'),
(232, 1, 'dannyoga9aks2011@gmail.com', 'adam', '5-bsnsnsm_180317_0006.jpg', 528558, 'jpg', '6-bsnsnsm_180317_0010.jpg', 109962, 'jpg'),
(233, 1, 'dannyoga9aks2011@gmail.com', 'lintang', '7-bsnsnsm_180317_0005.jpg', 275420, 'jpg', '8-bsnsnsm_180317_0008.jpg', 80496, 'jpg'),
(234, 2, 'dannyoga9aks2011@gmail.com', 'ryan', '9-bsnsnsm_180317_0016.jpg', 73743, 'jpg', '10-bsnsnsm_180317_0015.jpg', 126303, 'jpg'),
(235, 2, 'dannyoga9aks2011@gmail.com', 'diaz', '11-bsnsnsm_180317_0011.jpg', 144849, 'jpg', '12-bsnsnsm_180317_0017.jpg', 107160, 'jpg'),
(236, 1, 'aliftito.sa@gmail.com', 'vika', '1-bsnsnsm_180317_0009.jpg', 147165, 'jpg', '2-bsnsnsm_180317_0012.jpg', 777952, 'jpg'),
(237, 1, 'aliftito.sa@gmail.com', 'Alif tito', '3-bsnsnsm_180317_0002.jpg', 191746, 'jpg', '4-41870.jpg', 160405, 'jpg'),
(238, 1, 'aliftito.sa@gmail.com', 'rayhan', '5-bsnsnsm_180317_0023.jpg', 94336, 'jpg', '6-bsnsnsm_180317_0020.jpg', 114289, 'jpg'),
(239, 1, 'aliftito.sa@gmail.com', 'reza', '7-bsnsnsm_180317_0004.jpg', 111918, 'jpg', '8-bsnsnsm_180317_0021.jpg', 144998, 'jpg'),
(240, 2, 'aliftito.sa@gmail.com', 'fathu', '9-bsnsnsm_180317_0013.jpg', 79880, 'jpg', '10-bsnsnsm_180317_0014.jpg', 99090, 'jpg'),
(241, 2, 'aliftito.sa@gmail.com', 'adrian', '11-bsnsnsm_180317_0019.jpg', 98377, 'jpg', '12-28164.jpg', 105920, 'jpg'),
(242, 2, 'dannyoga9aks2011@gmail.com', 'alfi', '13-41865.jpg', 98245, 'jpg', '14-41864.jpg', 89763, 'jpg'),
(243, 2, 'dannyoga9aks2011@gmail.com', 'yazid', '15-256623.jpg', 867958, 'jpg', '16-bsnsnsm_180317_0018.jpg', 50900, 'jpg'),
(244, 3, 'dannyoga9aks2011@gmail.com', 'harris', '17-bsnsnsm_180317_0003.jpg', 156585, 'jpg', '18-41881.jpg', 94994, 'jpg'),
(245, 2, 'aliftito.sa@gmail.com', 'gery', '13-195033.jpg', 92038, 'jpg', '14-195031.jpg', 67694, 'jpg'),
(246, 2, 'aliftito.sa@gmail.com', 'farras', '15-bsnsnsm_180317_0024.jpg', 27557, 'jpg', '16-bsnsnsm_180317_0022.jpg', 93928, 'jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_peserta_singcomp`
--

CREATE TABLE `data_peserta_singcomp` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomor` int(2) NOT NULL,
  `nama_peserta` varchar(32) NOT NULL,
  `posisi` varchar(25) NOT NULL,
  `nama_foto` varchar(100) NOT NULL,
  `size_foto` int(11) NOT NULL,
  `type_foto` varchar(10) NOT NULL,
  `nama_ktm` varchar(100) NOT NULL,
  `size_ktm` int(11) NOT NULL,
  `type_ktm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_peserta_singcomp`
--

INSERT INTO `data_peserta_singcomp` (`id`, `email`, `nomor`, `nama_peserta`, `posisi`, `nama_foto`, `size_foto`, `type_foto`, `nama_ktm`, `size_ktm`, `type_ktm`) VALUES
(5, 'nafia.zahra16@gmail.com', 1, 'Raden Nafia Az-Zahra', 'Solo Vocal', 'IMG20171117114938.jpg', 1291986, 'jpg', '20171231_232055-1.jpg', 1528595, 'jpg'),
(12, 'salamatjhonny@gmail.com', 1, 'SALAMAT JHONNY', 'Solo Vocal', 'IMG-20180104-WA0008.jpg', 130884, 'jpg', '1514688120237.jpg', 379083, 'jpg'),
(13, 'd3nikus@gmail.com', 1, 'Deni Kusmayadi', 'Solo Vocal', 'foto_uin.jpg', 174128, 'jpg', 'IMG_20180113_125508.jpg', 266177, 'jpg'),
(14, 'ongky_muntazarmahdi@yahoo.co.id', 1, 'M Rahmat Muntazar Mahdi ', 'Solo Vocal', 'IMG-20170626-WA0005.jpeg', 706908, 'jpeg', 'IMG-20170716-WA0005.jpg', 88408, 'jpg'),
(15, 'chikafalencia@gmail.com', 1, 'Cantika Auereal Falencia ', 'Solo Vocal', 'E37E028F-FABA-4284-92FD-9BBA77555CE8.jpeg', 189423, 'jpeg', 'image.jpg', 1173925, 'jpg'),
(16, 'nialstn@gmail.com', 1, 'Nia Listiani Aprilliani', 'Solo Vocal', '20171210_122344-1.jpg', 1184216, 'jpg', 'CV_KARTU_IDENTITAS_NIA_LISTIANI_APRILLIANI.docx', 165705, 'docx'),
(17, 'sikahseisabila96@gmail.com', 1, 'Runi Sikah Seisabila', 'Solo Vocal', 'IMG-20170604-WA0058.jpg', 72248, 'jpg', '1517026182121.jpg', 0, 'jpg'),
(18, 'feliagraciella12@gmail.com', 1, 'Kapucho Maximiliano Pinem', 'Solo Vocal', '20180113_172956.jpg', 356354, 'jpg', 'logo_voice.jpg', 146024, 'jpg'),
(19, 'aegis1705@gmail.com', 1, 'Ishomullah', 'Vocal ', '1-IMG-20180212-WA0036.jpg', 55858, 'jpg', '2-IMG-20180213-WA0014.jpg', 287740, 'jpg'),
(20, 'aegis1705@gmail.com', 1, 'Assyifa chumayrota', 'Vocal & pianika ', '3-IMG-20180212-WA0030.jpg', 250203, 'jpg', '4-IMG-20180212-WA0026.jpg', 90196, 'jpg'),
(21, 'aegis1705@gmail.com', 1, 'M. Gaungaliza . P', 'Gitar & vocal', '5-IMG-20180212-WA0023.jpg', 70671, 'jpg', '6-IMG-20180212-WA0027.jpg', 106004, 'jpg'),
(22, 'aegis1705@gmail.com', 2, 'Nur najmi lail', 'Cajon', '7-IMG-20180212-WA0024.jpg', 129651, 'jpg', '8-IMG-20180212-WA0025.jpg', 104674, 'jpg'),
(23, 'aegis1705@gmail.com', 2, 'Abd aziz aza', 'Jimbe', '9-IMG-20180213-WA0003.jpg', 148822, 'jpg', '10-IMG-20180213-WA0002.jpg', 90562, 'jpg'),
(24, 'aegis1705@gmail.com', 2, 'Ahmad rury amanda', 'Gitar', '11-IMG-20180213-WA0015.jpg', 112692, 'jpg', '12-IMG-20180213-WA0016.jpg', 159366, 'jpg'),
(25, 'swagbebi@gmail.com', 1, 'FItry Auliaallah', 'Vocal', '1-IMG-20180218-WA0005.jpg', 40373, 'jpg', '2-KTM.jpg', 1861614, 'jpg'),
(26, 'swagbebi@gmail.com', 1, 'Arif', 'Gitar', '3-Arif.jpg', 59402, 'jpg', '4-KTP_Arip.jpg', 140198, 'jpg'),
(27, 'okkyhendrawan14@gmail.com', 1, 'Okky Hendrawan', 'Solo Vocal', 'C27AF841-C10D-4691-9F81-AD5F606509FD.jpg', 694813, 'jpg', 'IMG_8529.JPG', 0, 'JPG'),
(28, 'diahftmh0603@gmail.com', 1, 'Huan Mahatir', 'Solo Vocal', 'image.jpeg', 70895, 'jpeg', 'image.jpeg', 70895, 'jpeg'),
(29, 'jihanriqqy@gmail.com', 1, 'Jihan Riqqy Fuadah ', 'Solo Vocal', 'E3DDE05B-E236-4756-83C1-4B9E924A535E.jpeg', 64404, 'jpeg', 'image-1.jpg', 0, 'jpg'),
(30, 'putrimeliatiara@gmail.com', 1, 'Tiara melia putri', 'Solo Vocal', '20161018_091025.jpg', 423069, 'jpg', '1519607855244128394815.jpg', 2065185, 'jpg'),
(31, 'yyushifa49@gmail.com', 1, 'Annisa Ghalda Rahmawati', 'Solo Vocal', 'image-1.jpg', 241952, 'jpg', 'image-1.jpg', 1577485, 'jpg'),
(32, 'keziasubandy@gmail.com', 1, 'Kezia Subandy', 'Solo Vocal', 'BeautyPlus_20170814114933_save.jpg', 765492, 'jpg', 'IMG20170119222742.jpg', 0, 'jpg'),
(33, 'lailanitias12@gmail.com', 1, 'Tias Suci Lailani', 'Solo Vocal', 'DSC_0034_-_Copy.jpg', 1236169, 'jpg', 'KTM_TIAS_SUCI_LAILANI.JPG', 94494, 'JPG'),
(34, 'finnirosya25@gmail.com', 1, 'Nabila andisi', 'Penyanyi', '1-image.jpeg', 87867, 'jpeg', '2-image.jpeg', 87867, 'jpeg'),
(35, 'finnirosya25@gmail.com', 1, 'Caroline', 'Penyanyi', '3-image.jpeg', 331535, 'jpeg', '4-image.jpeg', 331535, 'jpeg'),
(36, 'finnirosya25@gmail.com', 1, 'Serina eki', 'Penyanyi', '5-image.jpeg', 298848, 'jpeg', '6-image.jpeg', 298848, 'jpeg'),
(37, 'finnirosya25@gmail.com', 2, 'Laxmi Lazuardi', 'Penyanyi', '7-image.jpeg', 54034, 'jpeg', '8-image.jpeg', 54034, 'jpeg'),
(38, 'finnirosya25@gmail.com', 2, 'Jonathan Yudistira', 'Pemain Piano', '9-image.jpeg', 75018, 'jpeg', '10-image.jpeg', 75018, 'jpeg'),
(39, 'fiqihhy@gmail.com', 1, 'Fiqih Hardana Yuwanza', 'Solo Vocal', 'IMG-20180227-WA0008.jpg', 130831, 'jpg', 'IMG-20180227-WA0007.jpg', 102198, 'jpg'),
(40, 'nungkykusumawati01@gmail.com', 1, 'Anggun Setianingrum', '1', '1-IMG-20180228-WA0014.jpg', 150851, 'jpg', '2-IMG-20180228-WA0000.jpg', 96026, 'jpg'),
(41, 'nungkykusumawati01@gmail.com', 1, 'Nurul Aini', '2', '3-IMG-20180228-WA0012.jpg', 90830, 'jpg', '4-IMG-20180228-WA0013.jpg', 133741, 'jpg'),
(42, 'nungkykusumawati01@gmail.com', 1, 'Mutiara Febrahesti', '3', '5-IMG-20180228-WA0009.jpg', 173541, 'jpg', '6-IMG-20180228-WA0007.jpg', 111984, 'jpg'),
(43, 'nungkykusumawati01@gmail.com', 2, 'Nungky Kusumawati', '4', '7-IMG-20180228-WA0008.jpg', 282184, 'jpg', '8-IMG-20180227-WA0003.jpg', 77494, 'jpg'),
(44, 'indahnoviyanto089@gmail.com', 1, 'Indah Noviyanto', 'Solo Vocal', 'TMPDOODLE1519826492170.jpg', 399403, 'jpg', 'TMPDOODLE1519826500413.jpg', 315100, 'jpg'),
(45, 'ricofloew831@gmail.com', 1, 'M Riko Julianda', 'Solo Vocal', '2018-02-28_23.30.29.png', 598357, 'png', '20180301_000600.jpg', 1804979, 'jpg'),
(46, 'puay1304@gmail.com', 1, 'Ratu Nur Intan ', 'penyanyi dan gitaris', '1-IMG_20171116_183917_617.jpg', 327385, 'jpg', '2-20180228_173128.jpg', 1720905, 'jpg'),
(47, 'puay1304@gmail.com', 1, 'Aghnina Auliani', 'penyanyi', '3-Screenshot_2018-02-28-17-27-02-1.png', 827656, 'png', '4-20180228_173103.jpg', 1732592, 'jpg'),
(48, 'puay1304@gmail.com', 1, 'Dita Amalia', 'penyanyi', '5-IMG-20180228-WA0032.jpg', 73754, 'jpg', '6-20180228_183956.jpg', 1451765, 'jpg'),
(49, 'puay1304@gmail.com', 2, 'Ellysa Kartika', 'penyanyi', '7-IMG-20180301-WA0002.jpg', 65330, 'jpg', '8-IMG-20180301-WA0003.jpg', 130869, 'jpg'),
(50, 'puay1304@gmail.com', 2, 'Rahman Fauzi', 'penyanyi', '9-IMG-20180228-WA0044.jpg', 117015, 'jpg', '10-IMG-20180228-WA0035.jpg', 85747, 'jpg'),
(51, 'puay1304@gmail.com', 2, 'Zafran Nabil', 'penyanyi', '11-IMG-20180228-WA0033.jpg', 100031, 'jpg', '12-IMG-20180228-WA0034.jpg', 91866, 'jpg'),
(52, 'arthahutabarat10@gmail.com', 1, 'Arthanauli', 'Solo Vocal', 'overseasjd_id_avatar.jpg', 27383, 'jpg', 'CYMERA_20171121_134623.jpg', 591501, 'jpg'),
(53, 'julietasiicancer@gmail.com', 1, 'Julieta', 'Solo Vocal', 'PhotoGrid_1480220282813.png', 417727, 'png', 'Screenshot_2018-03-01-20-07-37-1.png', 85312, 'png'),
(54, 'endah.nr1398@gmail.com', 1, 'Muhammad Alfurqon', 'Vokal', '1-IMG_20170516_200512_356.jpg', 317868, 'jpg', '2-Business_Cards_1.jpg', 320227, 'jpg'),
(55, 'endah.nr1398@gmail.com', 1, 'Nur Endah Rahmawati', 'Vokal', '3-306653.jpg', 26021, 'jpg', '4-306639.jpg', 142346, 'jpg'),
(56, 'endah.nr1398@gmail.com', 1, 'Ramadhan', 'Cajon', '5-665.jpg', 72631, 'jpg', '6-668.jpg', 46534, 'jpg'),
(57, 'endah.nr1398@gmail.com', 2, 'Talitha Kenzia PA', 'Keyboard', '7-ACC34150-BA2A-4117-94A1-0FE8E4C538FC.jpg', 119136, 'jpg', '8-306262.jpg', 102012, 'jpg'),
(58, 'endah.nr1398@gmail.com', 2, 'Fauzan Febrianto', 'Gitar', '9-331398.jpg', 18877, 'jpg', '10-331397.jpg', 145042, 'jpg'),
(59, 'endah.nr1398@gmail.com', 2, 'Rizkika Angger Kusumo', 'Gitar', '11-S__7716871.jpg', 237132, 'jpg', '12-S__7708736.jpg', 330085, 'jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expired`
--

CREATE TABLE `expired` (
  `id` int(11) NOT NULL,
  `nama_content` varchar(25) NOT NULL,
  `expired` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expired`
--

INSERT INTO `expired` (`id`, `nama_content`, `expired`) VALUES
(1, 'Futsal', 1),
(2, 'Try Out SBMPTN', 0),
(3, 'Olimpiade', 1),
(4, 'Singcomp', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `futsal_parsial`
--

CREATE TABLE `futsal_parsial` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_daftar` date NOT NULL,
  `nama_team` varchar(50) NOT NULL,
  `universitas` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `official` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `futsal_parsial`
--

INSERT INTO `futsal_parsial` (`id`, `time`, `tgl_daftar`, `nama_team`, `universitas`, `fakultas`, `jurusan`, `official`, `email`, `no_hp`, `kategori`, `pembayaran`) VALUES
(24, '2017-12-18 15:58:15', '2017-12-18', 'Guma FC', 'Institut Pertanian Bogor', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 'Matematika', 'Wafi Sabiq Masykuri', 'listyorini580@gmail.com', '082114832086', 'IKAHIMATIKA', 'Lunas'),
(25, '2017-12-24 10:37:45', '2017-12-24', 'Fikom Mercu', 'Universitas mercu buana', 'ilmu komunikasi ', 'public relation ', 'agus', 'Firdham22@gmail.com', '+62895323568801', 'Mahasiswa Umum', ''),
(28, '2018-01-01 15:33:39', '2018-01-01', 'Dakwah Platinum', 'UIN Jkt', 'Dakwah', 'Kpi', 'Zhaki', 'mabdulzhaki@gmail.com', '087781614569', 'Mahasiswa Umum', ''),
(30, '2018-01-05 09:39:49', '2018-01-05', 'UVFC', 'Upn Veteran Jakarta', 'Teknik', 'Teknik Perkapalan', 'Djalu', 'abydjalu@gmail.com', '0895332191680', 'Mahasiswa Umum', ''),
(31, '2018-01-31 04:37:10', '2018-01-31', 'Unindra', 'Indraprasta PGRI', 'IPPS', 'Pendidikan Ekonomi', 'Pemain', 'eigge24.ep@gmail.com', '089509840419', 'Mahasiswa Umum', ''),
(33, '2018-02-08 06:01:56', '2018-02-08', 'Maba. Fc', 'Stie bp ', 'Ekonomi ', 'Manajemen ', 'Guna', 'ikbalansori86@gmail.com', '081280932627', 'Mahasiswa Umum', ''),
(34, '2018-02-08 11:35:21', '2018-02-08', 'HIMATIKA UNTIRTA FC', 'SULTAN AGENG TIRTAYASA', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Matematika', 'Mastur', 'jamesriyadi69@gmail.com', '089611430651', 'IKAHIMATIKA', 'Lunas'),
(35, '2018-02-16 04:44:40', '2018-02-16', 'Unindra', 'Unindra (universitas indraprasta pgri)', 'FTMIPA', 'Pendidikan Matematika', 'Gitang', 'rahmatagung910@gmail.com', '085720934844', 'IKAHIMATIKA', 'Lunas'),
(36, '2018-02-16 13:16:29', '2018-02-16', 'Salamun fc', 'Universitas indraprasta pgri', 'FTMIPA', 'Pendidikan Matematika', 'aldina', 'Aldinaalrasyid11@gmail.com', '085887927370', 'IKAHIMATIKA', 'Lunas'),
(37, '2018-02-19 03:29:30', '2018-02-19', 'HIMATIKA UIN JAKARTA', 'UIN SYARIFHIDAYATULLAH JAKARTA', 'SAINS DAN TEKNOLOGI', 'MATEMATIKA', 'ALIF TITO', 'aliftito.sa@gmail.com', '089631644993', 'IKAHIMATIKA', ''),
(40, '2018-02-19 07:03:55', '2018-02-19', 'UPN Veteran ', 'Universitas Pembangunan Nasional Veteran Jakarta', 'FIK ', 'IT', 'Muhammad ahsyim alwi', 'uvfc17@gmail.com', '??+62 878 87240', 'Mahasiswa Umum', ''),
(41, '2018-02-20 06:38:07', '2018-02-20', 'HFC', 'Universitas Pakuan', 'MIPA', 'Matematika', 'Miradz SA Munggara', 'miradz571@gmail.com', '085883413812', 'IKAHIMATIKA', 'Lunas'),
(45, '2018-02-22 03:19:37', '2018-02-22', 'HIMATIKA UIN JAKARTA', 'UIN JAKARTA', 'SAINS DAN TEKNOLOGI', 'MATEMATIKA', 'NINDITA NADILLIA', 'dannyoga9aks2011@gmail.com', '085771436606', 'IKAHIMATIKA', ''),
(46, '2018-02-22 11:41:39', '2018-02-22', 'Fisip', 'UIN', 'FISIP', 'Ilmu Politik, Sosiologi dan HI', 'M Fajar', 'wahyusrikuncoro18@gmail.com', '087767275288', 'Mahasiswa Umum', ''),
(47, '2018-02-22 13:53:37', '2018-02-22', 'AFINITAS FC', 'Universitas Indraprasta PGRI', 'FTMIPA', 'Pendidikan Matematika', 'Henggar Prameningtyas', 'mianovillia64@gmail.com', '089624791243', 'IKAHIMATIKA', 'Lunas'),
(49, '2018-02-23 15:41:52', '2018-02-23', 'Futsal psikologi', 'UIN Jakarta', 'Psikologi', 'Psikologi', 'Adif', 'faizramdhani77@gmail.com', '085693061834', 'Mahasiswa Umum', ''),
(50, '2018-02-24 02:59:18', '2018-02-24', 'FEB UIN ', 'UIN', 'FEB', 'Ekonomi', 'Rama', 'ramazikri01@gmail.com', '089531135657', 'Mahasiswa Umum', ''),
(51, '2018-02-24 05:49:57', '2018-02-24', 'Kalkulus fc', 'Uhamka', 'Fkip', 'Pendidikan matematika', 'Rozzaq', 'mhmmd.rzzq@icloud.com', '081311016106', 'IKAHIMATIKA', 'Lunas'),
(52, '2018-02-24 06:09:47', '2018-02-24', 'Sigma fc', 'Uhamka', 'Fkip', 'Pendidikan matematika', 'Diar', 'diarfadilah98@gmail.com', '087874692305', 'IKAHIMATIKA', 'Lunas'),
(53, '2018-02-25 11:27:59', '2018-02-25', 'NFC', 'UNJ', 'MIPA', 'Matematika', 'Dimas Ainul Nuriman', 'mikhaelandreas96@gmail.com', '082298966522', 'IKAHIMATIKA', 'Lunas'),
(54, '2018-02-25 12:25:39', '2018-02-25', 'Blekbois Fc', 'UIN Syarif Hidayatullah Jakarta', 'Sains dan Teknologi', 'Agribisnis', 'Ahmad akbar', 'dafa9aksel2014@gmail.com', '085898602214', 'Mahasiswa Umum', ''),
(55, '2018-02-26 11:24:20', '2018-02-26', 'Futsal tazkia', 'STEI TAZKIA', 'Ekonomi', 'Bisnis manajemen', 'Tedy', 'thariqseven75@gmail.com', '082295125520', 'Mahasiswa Umum', 'Lunas'),
(56, '2018-02-26 15:46:05', '2018-02-26', 'MJFC', 'Indonesia', 'FIB', 'BIPA', 'UI', 'takumi.itaya@gmail.com', '?082213326664??', 'Mahasiswa Umum', ''),
(57, '2018-02-27 12:15:30', '2018-02-27', 'Jarpul', 'Upnvj ', 'Ilmu Komputer ', 'Ti,Si, Mi', 'Upnvj', 'mochamad.sofyan76@gmail.com', '0895392679119', 'Mahasiswa Umum', 'Lunas'),
(58, '2018-02-28 06:16:01', '2018-02-28', 'SSC', 'UIN Syarif Hidayatullah Jakarta', 'Sains dan Teknologi', 'Agribisnis', 'Arga', 'awalun17davy@gmail.com', '085777390825', 'Mahasiswa Umum', ''),
(60, '2018-03-01 04:54:36', '2018-03-01', 'Sastranesia', 'UIN', 'FITK', 'PBSI', 'Hardi Kurniawan', 'ariefrifaldi13@gmail.com', '087781880836', 'Mahasiswa Umum', ''),
(62, '2018-03-01 10:30:13', '2018-03-01', 'Math UI', 'Universitas Indonesia', 'Matematika dan Ilmu Pengetahuan Alam', 'Matematika', 'Muhammad Ariq Yusaputra Bahar', 'm.ariqyusa5@gmail.com', '081288678736', 'IKAHIMATIKA', ''),
(63, '2018-03-01 13:17:45', '2018-03-01', 'Syariahboy', 'Uin Jakarta', 'Syariah dan Hukum', 'Hukum', 'Dimas', 'dimasrizki56@gmail.com', '081398149797', 'Mahasiswa Umum', ''),
(64, '2018-03-02 08:02:35', '2018-03-02', 'UBS', 'UNISADHUGUNA BUSINESS SCHOOL', 'MANAJEMEN', 'MANAJEMEN', 'Tompel', 'muhamadmarsel507@gmail.com', '0895392958487', 'Mahasiswa Umum', ''),
(65, '2018-03-04 08:56:49', '2018-03-04', 'FAH Sport', 'UIN Jakarta', 'Adab & Humaniora', 'Pacarnya Citra', 'SultanBintangRSS', 'paultibbit123@gmail.com', '081287109180', 'Mahasiswa Umum', ''),
(67, '2018-03-18 19:17:58', '2018-03-19', 'Hhh', 'Hhh', 'Hhh', 'Hhh', 'Hhh', 'gjjp@h', '99', 'Mahasiswa Umum', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_tryout_sbmptn`
--

CREATE TABLE `hasil_tryout_sbmptn` (
  `id` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `id` int(11) NOT NULL,
  `waktu_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama_content` varchar(20) NOT NULL,
  `pilihan` int(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(32) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_size` int(20) NOT NULL,
  `file_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`id`, `waktu_upload`, `nama_content`, `pilihan`, `email`, `pemilik_rekening`, `file_name`, `file_size`, `file_type`) VALUES
(28, '2018-01-02 06:11:32', 'tryout_sbmptn', 2, 'febryauliasavira2001@gmail.com', 'Yuliawati MZ', '3A695733-3A70-47F7-973F-BB39BE93A98B.jpeg', 98518, 'jpeg'),
(29, '2018-01-03 05:12:17', 'tryout_sbmptn', 1, 'naufalronaldo26@gmail.com', 'purwanto', 'IMG-20180103-WA0007.jpg', 57435, 'jpg'),
(31, '2018-01-10 00:23:25', 'tryout_sbmptn', 2, 'nurkhoirunnisa09@gmail.com', 'Legimin Kerto', 'IMG-20180109-WA0017.jpeg', 943959, 'jpeg'),
(32, '2018-01-10 12:46:06', 'tryout_sbmptn', 1, 'sabillaaulia0202@gmail.com', 'Napsiah', 'IMG-20180110-WA0008.jpg', 79716, 'jpg'),
(33, '2018-01-11 04:52:45', 'tryout_sbmptn', 1, 'larasati.bzaina@gmail.com', 'Larasati Buzaina', 'IMG_20180111_114942.jpg', 195676, 'jpg'),
(34, '2018-01-11 05:32:17', 'tryout_sbmptn', 1, 'larasatidewip@gmail.com', 'Larasati Dewi Pangestu', '1515648559753847079974.jpg', 1468769, 'jpg'),
(35, '2018-01-11 05:34:08', 'tryout_sbmptn', 1, 'Elisyani969@gmail.com', 'Listriyani', 'IMG-20180111-WA0006.jpeg', 1666941, 'jpeg'),
(36, '2018-01-11 07:21:42', 'tryout_sbmptn', 1, 'erikadeliana27@gmail.com', 'Erika Deliana', '20180111_135112.jpg', 1836008, 'jpg'),
(37, '2018-01-11 10:01:10', 'tryout_sbmptn', 1, 'adiarfauzan@gmail.com', 'Adiar Fauzan Ramadhani', 'IMG_20180111_162427_HDR.jpg', 1217011, 'jpg'),
(38, '2018-01-11 12:44:39', 'tryout_sbmptn', 1, 'liakhoerussholiha00@gmail.com', 'Muhamad iqbal burhani', 'IMG-20180111-WA0043.jpg', 57246, 'jpg'),
(39, '2018-01-12 08:50:51', 'tryout_sbmptn', 1, 'Gwati90@gmail.com', 'Mat Ali', 'IMG-20180112-WA0000.jpeg', 1612731, 'jpeg'),
(40, '2018-01-12 12:46:59', 'tryout_sbmptn', 1, 'vinnaadhe@gmail.com', 'Mat Ali', 'IMG-20180112-WA0009.jpg', 133220, 'jpg'),
(41, '2018-01-12 14:46:56', 'tryout_sbmptn', 1, 'raychanabyqafariza@gmail.com', 'Rendy Fahriza', 'IMG-20180112-WA0007.jpg', 109002, 'jpg'),
(42, '2018-01-12 22:46:08', 'tryout_sbmptn', 1, 'alfinadamaiii@gmail.com', 'MAT ALI', 'IMG_20180113_054348.jpg', 1150893, 'jpg'),
(43, '2018-01-14 10:06:42', 'tryout_sbmptn', 1, 'ahmadruhulqisti@gmail.com', 'Hansen Saputra', '1515924178029.jpg', 88738, 'jpg'),
(44, '2018-01-14 11:20:20', 'tryout_sbmptn', 2, 'nurhayatiseptiyana@gmail.com', 'Sutiyah', 'IMG_3004.JPG', 1681931, 'JPG'),
(45, '2018-01-14 11:39:59', 'tryout_sbmptn', 1, 'elsaoktaviani321@gmail.com', 'Sudianto', 'IMG-20180114-WA0035.jpg', 77621, 'jpg'),
(46, '2018-01-14 11:53:29', 'tryout_sbmptn', 2, 'fazriahputri@gmail.com', 'Sutiyah', 'IMG-20180114-WA0011.jpeg', 1254759, 'jpeg'),
(47, '2018-01-14 12:43:38', 'tryout_sbmptn', 1, 'hansensaputra90@gmail.com', 'Hansen Vilosevic Saputra', 'DSC_1257.JPG', 1267903, 'JPG'),
(48, '2018-01-14 13:44:19', 'tryout_sbmptn', 1, 'raysyanurfikriana5@gmail.com', 'Rohana', 'IMG-20180114-WA0016.jpg', 79287, 'jpg'),
(49, '2018-01-15 07:08:42', 'tryout_sbmptn', 2, 'nurmaulidya14@gmail.com', 'Nova Kurnia Dewi', 'Bukti_Transfer_Nur_Maulidya.jpg', 212366, 'jpg'),
(50, '2018-01-15 07:19:29', 'tryout_sbmptn', 2, 'pandutw11@gmail.com', 'an.pandu tilu.w', 'Screenshot_2018-01-15-14-17-42-283_com.whatsapp.png', 681796, 'png'),
(51, '2018-01-15 07:28:56', 'tryout_sbmptn', 1, 'rahmahalfiyatur8@gmail.com', 'Rizki dini febri anggraini', 'IMG-20180115-WA0000.jpg', 57230, 'jpg'),
(52, '2018-01-15 23:59:35', 'tryout_sbmptn', 2, 'slaestilestari19@gmail.com', 'Slamet', 'IMG-20180116-WA0004.jpg', 83033, 'jpg'),
(53, '2018-01-16 00:14:27', 'tryout_sbmptn', 2, 'septianalestari27@gmail.com', 'Slamet', 'IMG-20180116-WA0004-1.jpg', 83033, 'jpg'),
(56, '2018-01-16 10:36:59', 'tryout_sbmptn', 1, 'aqmarinasbl@gmail.com', 'Sdri nuansa maulida retfa', 'IMG_20180116_173026.jpg', 1735795, 'jpg'),
(57, '2018-01-16 14:18:21', 'tryout_sbmptn', 1, 'pintaning20ts@gmail.com', 'edi purwanto', 'TRF.jpeg', 59955, 'jpeg'),
(58, '2018-01-17 05:35:34', 'tryout_sbmptn', 1, 'aulnuzamhtr@gmail.com', 'Yayan Rudiyana', 'IMG_6301.PNG', 30103, 'PNG'),
(59, '2018-01-17 11:12:26', 'tryout_sbmptn', 1, 'nurinardana11@yahoo.com', 'Sri Widya Lestari', 'IMG-20180117-WA0001.jpg', 25322, 'jpg'),
(60, '2018-01-17 11:17:24', 'tryout_sbmptn', 2, 'saridamayanti220@gmail.com', 'Sri Widya Lestari', 'IMG-20180117-WA0000.jpg', 26141, 'jpg'),
(61, '2018-01-17 11:21:00', 'tryout_sbmptn', 1, 'salwaseroja18@gmail.com', 'Annisa Oktaviani', 'IMG-20180116-WA0000.jpg', 52956, 'jpg'),
(62, '2018-01-18 06:08:56', 'tryout_sbmptn', 1, 'salsafadilah19@gmail.com', 'Abdul Haris', 'FD176E90-6459-4B4A-8A59-8EAA8EBD25CA.jpeg', 141603, 'jpeg'),
(63, '2018-01-18 07:06:01', 'tryout_sbmptn', 2, 'asyafarihaaa@gmail.com', 'Fatimah', '7F7FCC46-97ED-4A78-B146-837A36EC7F5E.jpeg', 1219996, 'jpeg'),
(64, '2018-01-18 12:24:49', 'tryout_sbmptn', 2, 'alifyaasmiasti10@gmail.com', 'Suwarno', '1516275407240-191478060.jpg', 1979663, 'jpg'),
(65, '2018-01-19 05:47:06', 'tryout_sbmptn', 2, 'fitrianidwirmdhni25@gmail.com', 'HAMIDI', 'IMG-20180119-WA0007.jpg', 93477, 'jpg'),
(67, '2018-01-19 06:45:26', 'tryout_sbmptn', 1, 'belaagustin725@gmail.com', 'BELA AGUSTIN ', 'IMG_20180119_133021.jpg', 1130065, 'jpg'),
(68, '2018-01-19 07:05:45', 'tryout_sbmptn', 1, 'wiwijaryanti@gmail.com', 'Lokasi Pratiwi', 'IMG-20180119-WA0002.jpg', 67571, 'jpg'),
(69, '2018-01-19 10:00:55', 'tryout_sbmptn', 2, 'bita.shaheer@gmail.com', 'Tsabita Farras', 'IMG-20180119-WA0000.jpg', 69038, 'jpg'),
(70, '2018-01-20 01:01:15', 'tryout_sbmptn', 1, 'alvinaaaulia@gmail.com', 'HAMIDI', 'IMG-20180120-WA0000.jpg', 75207, 'jpg'),
(71, '2018-01-22 07:59:27', 'tryout_sbmptn', 1, 'faranova21@gmail.com', 'Fernani V', '1516607823167-1041110836.jpg', 163819, 'jpg'),
(72, '2018-01-22 11:38:30', 'tryout_sbmptn', 1, 'meyda.nurulcahyani07@gmail.com', 'Memed', 'P_20180122_183435_BF_p.jpg', 173090, 'jpg'),
(73, '2018-01-22 11:56:40', 'tryout_sbmptn', 2, 'soyadinda@gmail.com', 'EKA YASMIRAH', 'IMG-20180122-WA0018.jpeg', 1055646, 'jpeg'),
(74, '2018-01-22 12:22:55', 'tryout_sbmptn', 2, 'worocahyaayu77@gmail.com', 'RINDA', 'DD872EF6-FC39-45C5-95E7-B046CA3ACBE5.jpeg', 337656, 'jpeg'),
(75, '2018-01-22 12:25:56', 'tryout_sbmptn', 1, 'salsabilah.sitinur@gmail.com', 'Satria', 'IMG_0888.PNG', 420428, 'PNG'),
(76, '2018-01-22 12:30:54', 'tryout_sbmptn', 1, 'desisuciramadhani.dsr@gmail.com', 'Memed', 'IMG_20180122_192818.png', 495700, 'png'),
(77, '2018-01-23 06:17:46', 'tryout_sbmptn', 1, 'rafiadnan336@gmail.com', 'Wahyudi', 'img072.jpg', 115306, 'jpg'),
(78, '2018-01-23 14:25:31', 'tryout_sbmptn', 1, 'anisanurliani1001@gmail.com', 'Annisa Nurliani ', 'Screenshot_2018-01-23-19-43-05.png', 87323, 'png'),
(79, '2018-01-24 13:05:13', 'tryout_sbmptn', 1, 'sasqaazahra@gmail.com', 'Ayu devita yusuf', 'IMG-20180124-WA0006.jpg', 51626, 'jpg'),
(80, '2018-01-25 14:08:11', 'tryout_sbmptn', 2, 'Zalzabilakhairunnisa123@gmail.com', 'Alimah', 'IMG_20180125_204816_HDR_1516889178073.jpg', 160616, 'jpg'),
(81, '2018-01-25 14:09:59', 'tryout_sbmptn', 1, 'amrullohkhsy@gmail.com', 'Robbi Hilaludin', 'IMG_20180125_210142.jpg', 596373, 'jpg'),
(82, '2018-01-25 14:12:06', 'tryout_sbmptn', 2, 'zalfaputri20@gmail.com', 'Robbi Hilaludin', 'IMG_20180125_210142-1.jpg', 596373, 'jpg'),
(83, '2018-01-25 14:14:13', 'tryout_sbmptn', 2, 'nurulamalia3058@gmail.com', 'Robbi Hilaludin', 'IMG_20180125_210142-2.jpg', 596373, 'jpg'),
(84, '2018-01-25 14:20:42', 'tryout_sbmptn', 1, 'aulialintangsinawang@gmail.com', 'Robbi Hilaludin', 'IMG_20180125_210142-3.jpg', 596373, 'jpg'),
(85, '2018-01-25 14:39:09', 'tryout_sbmptn', 1, 'errinmeliyana@gmail.com', 'Robbi Hilaludin', 'IMG-20180125-WA0013.jpg', 46472, 'jpg'),
(86, '2018-01-25 14:44:06', 'tryout_sbmptn', 1, 'nurlatiffayuli@gmail.com', 'ROHINAH', 'IMG-20180125-WA0020.jpeg', 357191, 'jpeg'),
(87, '2018-01-25 15:03:27', 'tryout_sbmptn', 2, 'Debby_aprilliani@yahoo.co.id', 'Debby putri aprilliani', 'Screenshot_2018-01-25-22-01-23-72.png', 126899, 'png'),
(88, '2018-01-25 15:41:39', 'tryout_sbmptn', 2, 'Halimahtussakdiah78858@gmail.com', 'Halimah tussakdiah', 'IMG-20180125-WA0005.jpg', 60902, 'jpg'),
(89, '2018-01-26 04:18:05', 'tryout_sbmptn', 2, 'Addinakhairussyifa@gmail.com', 'Addina khairussyifa', 'IMG-20180126-WA0004.jpg', 69215, 'jpg'),
(90, '2018-01-26 04:19:09', 'tryout_sbmptn', 2, 'muthia.silvia@gmail.com', 'Addina khairussyifa', 'IMG-20180126-WA0004-1.jpg', 69215, 'jpg'),
(91, '2018-01-26 04:20:11', 'tryout_sbmptn', 2, 'pitslay1209@gmail.com', 'Addina khairussyifa', 'IMG-20180126-WA0004-2.jpg', 69215, 'jpg'),
(92, '2018-01-26 06:20:00', 'tryout_sbmptn', 2, 'mita.yulianti26@gmail.com', 'arif hidayat', 'IMG-20180126-WA0003.jpg', 86526, 'jpg'),
(93, '2018-01-26 07:25:10', 'tryout_sbmptn', 2, 'aliaadiba51@gmail.com', 'Askha', 'IMG-20180125-WA0034.jpg', 140142, 'jpg'),
(94, '2018-01-26 09:11:02', 'tryout_sbmptn', 2, 'arasy.baihaqi@gmail.com', 'Muhammad Akbar Sighab', '1516946956304.jpg', 128223, 'jpg'),
(95, '2018-01-26 11:24:36', 'tryout_sbmptn', 1, 'mellyanapuspita1808@gmail.com', 'Rizki Febri Anggraini ', 'IMG-20180124-WA0004.jpg', 121838, 'jpg'),
(96, '2018-01-26 12:05:02', 'tryout_sbmptn', 2, 'maulidyarizkita15@gmail.com', 'MAULIDIYA RIZKITA PUTRI', '20180126_190218-1.jpg', 1575081, 'jpg'),
(97, '2018-01-26 12:47:09', 'tryout_sbmptn', 1, 'annisaulfa146@gmail.com', '(Transferlangsung)', '1516774204667-1.jpg', 9468, 'jpg'),
(98, '2018-01-26 13:20:11', 'tryout_sbmptn', 1, 'nisaokt272@gmail.com', 'Transfertanparekening', 'IMG-20180124-WA0001.jpg', 121838, 'jpg'),
(99, '2018-01-26 13:21:04', 'tryout_sbmptn', 2, 'Nadajidzrustsiqoh@gmail.com', 'Maulidiya Rizikita Putri', 'IMG-20180126-WA0012.jpg', 66163, 'jpg'),
(100, '2018-01-26 13:29:19', 'tryout_sbmptn', 1, 'hasrikurnia6@gmail.com', 'riski dini febi anggraini', 'IMG-20180124-WA0001-1.jpg', 121838, 'jpg'),
(101, '2018-01-26 14:08:55', 'tryout_sbmptn', 1, 'tahlia.angelina@gmail.com', ' Tahlia angelina', '1516922799673.jpg', 26186, 'jpg'),
(102, '2018-01-27 01:33:56', 'tryout_sbmptn', 1, 'deliyanti2012@gmail.com', 'Rizki Febri Anggraini ', 'IMG-20180124-WA0004-1.jpg', 121838, 'jpg'),
(103, '2018-01-27 01:56:06', 'tryout_sbmptn', 2, 'olivyajuha05@gmail.com', 'Rizki Dini Febri A', 'IMG-20180125-WA0000.jpg', 56607, 'jpg'),
(104, '2018-01-27 01:58:12', 'tryout_sbmptn', 2, 'tsanianurfadilla36@gmail.com', 'RIZKI DINI FEBRI A', 'IMG-20180127-WA0002.jpg', 56607, 'jpg'),
(105, '2018-01-27 02:14:16', 'tryout_sbmptn', 2, 'deraparadita97@gmail.com', 'Rizki deni febri a.', 'IMG-20180127-WA0000.jpg', 56607, 'jpg'),
(106, '2018-01-27 10:45:26', 'tryout_sbmptn', 2, 'shesyifanurul@gmail.com', 'Endang Marini', '2018-01-26_17.00.31.jpg', 75477, 'jpg'),
(107, '2018-01-27 15:04:37', 'tryout_sbmptn', 2, 'ridhavidiah32@gmail.com', 'Ririn rosmawati', 'IMG-20180127-WA0010.jpg', 89181, 'jpg'),
(108, '2018-01-28 03:59:34', 'tryout_sbmptn', 2, 'hanifahhanan93@yahoo.com', 'Sri Rejeki Ningsih', 'Screenshot_20180128-105622.png', 666112, 'png'),
(109, '2018-01-28 10:23:41', 'tryout_sbmptn', 2, 'kurniawatiayu5@gmail.com', 'tanparekening', 'WhatsApp_Image_2018-01-28_at_10.35.53.jpeg', 121838, 'jpeg'),
(110, '2018-01-28 13:56:37', 'tryout_sbmptn', 1, 'fathun.nada19@gmail.com', 'Mursidah', 'IMG-20180128-WA0056.jpg', 57173, 'jpg'),
(111, '2018-01-28 15:22:14', 'tryout_sbmptn', 2, 'Aulyafebrinti23@gmail.com', 'Tri wahyuni', 'IMG-20180128-WA0005.jpg', 73728, 'jpg'),
(112, '2018-01-29 08:19:51', 'tryout_sbmptn', 2, 'nurwulandari01091999@gmail.com', 'Muhammad Reza', 'IMG-20180129-WA0001.jpg', 118090, 'jpg'),
(113, '2018-01-29 08:21:56', 'tryout_sbmptn', 2, 'septiandavid42@gmail.com', 'Muhammad Reza', 'IMG-20180129-WA0002.jpg', 142637, 'jpg'),
(114, '2018-01-29 08:42:02', 'tryout_sbmptn', 2, 'mustikazega99@gmail.com', 'Mustika Ramadani Zega', 'IMG_20180129_153528_HHT.jpg', 1324815, 'jpg'),
(115, '2018-01-29 09:52:55', 'tryout_sbmptn', 1, 'nahdiyarahma14@gmail.com', 'Nahdiyah Rachmania', 'IMG-20180124-WA0000.jpg', 121838, 'jpg'),
(116, '2018-01-29 13:06:30', 'tryout_sbmptn', 2, 'nadayuliaputri13@gmail.com', 'ISMAWATI', 'IMG-20180129-WA0005.jpg', 173248, 'jpg'),
(117, '2018-01-29 13:08:13', 'tryout_sbmptn', 2, 'sabrinaafivaa@gmail.com', 'Ismawati', '1517224041802.jpg', 202329, 'jpg'),
(118, '2018-01-29 13:16:26', 'tryout_sbmptn', 2, 'nabilahdwiyanti23@gmail.com', 'Ismawati', 'image.jpeg', 191382, 'jpeg'),
(119, '2018-01-29 13:19:14', 'tryout_sbmptn', 2, 'Salmanursaadah62@gmail.com', 'WAHYONO', 'IMG-20180129-WA0019.jpg', 77983, 'jpg'),
(120, '2018-01-30 02:41:12', 'tryout_sbmptn', 1, 'cinditrifs@gmail.com', 'gumilang/suwondo', 'TMPDOODLE1517279877994.jpg', 299516, 'jpg'),
(121, '2018-01-30 03:22:21', 'tryout_sbmptn', 1, 'ffhwulandari@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002.jpg', 124189, 'jpg'),
(122, '2018-01-30 03:23:49', 'tryout_sbmptn', 2, 'fauzanluthfi.102@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-1.jpg', 124189, 'jpg'),
(123, '2018-01-30 03:24:46', 'tryout_sbmptn', 2, 'altaajja096@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-2.jpg', 124189, 'jpg'),
(124, '2018-01-30 03:25:31', 'tryout_sbmptn', 1, 'majidmuslich@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-3.jpg', 124189, 'jpg'),
(125, '2018-01-30 04:03:50', 'tryout_sbmptn', 2, 'alfiafahrani@yahoo.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-4.jpg', 124189, 'jpg'),
(126, '2018-01-30 04:04:36', 'tryout_sbmptn', 1, 'dandheyxx@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-5.jpg', 124189, 'jpg'),
(127, '2018-01-30 04:05:16', 'tryout_sbmptn', 1, 'winawulandari05@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-6.jpg', 124189, 'jpg'),
(128, '2018-01-30 04:06:21', 'tryout_sbmptn', 1, '994stagram@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-7.jpg', 124189, 'jpg'),
(129, '2018-01-30 04:06:53', 'tryout_sbmptn', 1, 'rinifriatin09@gmail.com', 'Afifah Wulandari ', 'IMG-20180130-WA0002-8.jpg', 124189, 'jpg'),
(130, '2018-01-30 04:53:09', 'tryout_sbmptn', 1, 'ratihsunsun31@gmail.com', 'Ratih Sundari', 'IMG-20180130-WA0004.jpg', 67087, 'jpg'),
(131, '2018-01-30 05:15:03', 'tryout_sbmptn', 2, 'wewewtri12@gmail.com', 'Tri QQ Uddin', '20180130_114850.jpg', 1156296, 'jpg'),
(132, '2018-01-30 05:16:18', 'tryout_sbmptn', 2, 'Rahmawatiasri123@gmail.com', 'Tri QQ Uddin', '20180130_114850-1.jpg', 1156296, 'jpg'),
(133, '2018-01-30 05:40:28', 'tryout_sbmptn', 1, 'feb.andini19@gmail.com', 'Gumilang/Suwondo', 'TMPDOODLE1517290719458.jpg', 299516, 'jpg'),
(134, '2018-01-30 05:41:46', 'tryout_sbmptn', 1, 'fitriarahmadhania@gmail.com', 'Gumilang/Suwondo', '1517278771841.jpg', 87593, 'jpg'),
(135, '2018-01-30 05:43:07', 'tryout_sbmptn', 1, 'rodhihana@gmail.com', 'Gumilang/Suwondo', '1517278771841-1.jpg', 87593, 'jpg'),
(136, '2018-01-30 05:44:13', 'tryout_sbmptn', 1, 'hikmah.azzahro@gmail.com', 'Gumilang/Suwondo', '1517278771841-2.jpg', 87593, 'jpg'),
(137, '2018-01-30 05:44:59', 'tryout_sbmptn', 1, 'arisyapr@gmail.com', 'Gumilang/Suwondo', '1517278771841-3.jpg', 87593, 'jpg'),
(138, '2018-01-30 05:45:50', 'tryout_sbmptn', 1, 'endririanti3@gmail.com', 'Gumilang/Suwondo', '1517278771841-4.jpg', 87593, 'jpg'),
(139, '2018-01-30 05:46:41', 'tryout_sbmptn', 1, 'tikaatikah26@gmail.com', 'Gumilang/Suwondo', '1517278771841-5.jpg', 87593, 'jpg'),
(140, '2018-01-30 05:47:55', 'tryout_sbmptn', 1, 'candadfs@gmail.com', 'Gumilang/Suwondo', '1517278771841-6.jpg', 87593, 'jpg'),
(141, '2018-01-30 06:06:39', 'tryout_sbmptn', 1, 'gitagumpita@gmail.com', 'gumilang/suwondo', '1517278771841-7.jpg', 87593, 'jpg'),
(142, '2018-01-30 06:08:31', 'tryout_sbmptn', 1, 'nadyamaharani255@yahoo.co.id', 'Gumilang/Suwondo', '1517278771841-8.jpg', 87593, 'jpg'),
(143, '2018-01-30 06:09:58', 'tryout_sbmptn', 1, 'mittafadellia29@gmail.com', 'Gumilang/Suwondo', '1517278771841-9.jpg', 87593, 'jpg'),
(145, '2018-01-31 04:44:28', 'tryout_sbmptn', 2, 'shafa12366@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002.jpg', 103485, 'jpg'),
(146, '2018-01-31 04:45:04', 'tryout_sbmptn', 2, 'ahelfiana@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-1.jpg', 103485, 'jpg'),
(147, '2018-01-31 04:45:32', 'tryout_sbmptn', 1, 'davernanda07@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-2.jpg', 103485, 'jpg'),
(148, '2018-01-31 04:46:02', 'tryout_sbmptn', 2, 'wildan.sabiq07@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-3.jpg', 103485, 'jpg'),
(149, '2018-01-31 04:48:10', 'tryout_sbmptn', 1, 'agungpangestu0262@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-4.jpg', 103485, 'jpg'),
(150, '2018-01-31 07:12:45', 'tryout_sbmptn', 1, 'windyrosiana17@gmail.com', 'Dyah Pitaloka', 'IMG-20180131-WA0022.jpeg', 905232, 'jpeg'),
(151, '2018-01-31 10:22:57', 'tryout_sbmptn', 1, 'gitayesi1@gmail.com', 'Sidik', 'IMG-20180131-WA0009.jpg', 93675, 'jpg'),
(152, '2018-01-31 11:16:57', 'tryout_sbmptn', 1, 'syafiqahazzahra40@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-5.jpg', 103485, 'jpg'),
(153, '2018-01-31 11:17:30', 'tryout_sbmptn', 1, 'habibatuladawiyah93@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-6.jpg', 103485, 'jpg'),
(154, '2018-01-31 11:18:01', 'tryout_sbmptn', 2, 'auzan19062000@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-7.jpg', 103485, 'jpg'),
(155, '2018-01-31 11:18:28', 'tryout_sbmptn', 1, 'nisyaaulia28@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-8.jpg', 103485, 'jpg'),
(156, '2018-01-31 11:20:02', 'tryout_sbmptn', 1, 'kinyang14b@gmail.com', 'Afifah Wulandari ', 'IMG-20180131-WA0002-9.jpg', 103485, 'jpg'),
(157, '2018-01-31 11:23:40', 'tryout_sbmptn', 2, 'syahdahh@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0012.jpg', 62950, 'jpg'),
(158, '2018-01-31 11:31:18', 'tryout_sbmptn', 1, 'salwamauludi@gmail.com', 'Sidik', 'IMG-20180131-WA0008.jpg', 93313, 'jpg'),
(159, '2018-01-31 11:34:13', 'tryout_sbmptn', 2, 'agoypratama93@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0014.jpg', 62950, 'jpg'),
(160, '2018-01-31 11:38:52', 'tryout_sbmptn', 2, 'halimahtussad@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0002-10.jpg', 62950, 'jpg'),
(161, '2018-01-31 11:44:45', 'tryout_sbmptn', 2, 'ahmad.huda11.an@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180131-WA0001.jpg', 62950, 'jpg'),
(162, '2018-01-31 11:50:12', 'tryout_sbmptn', 2, 'nurkholisahnur@gmail.com', 'Robiyatul Adhawiyah', '20180131_175943.jpg', 590005, 'jpg'),
(163, '2018-01-31 11:50:43', 'tryout_sbmptn', 2, 'vinaariyanti99@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0001-1.jpg', 62950, 'jpg'),
(164, '2018-01-31 11:58:30', 'tryout_sbmptn', 2, 'Hafifahindah.sy@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0000.jpg', 41112, 'jpg'),
(165, '2018-01-31 11:59:33', 'tryout_sbmptn', 2, 'isfanrifqi@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0001-2.jpg', 62950, 'jpg'),
(166, '2018-01-31 12:17:46', 'tryout_sbmptn', 2, 'nabilarasyeed@gmail.com', 'Robiyatul Adhawiyah', 'SAVE_20180131_191545.jpeg', 62950, 'jpeg'),
(167, '2018-01-31 12:20:00', 'tryout_sbmptn', 2, 'zahrotulislamiyah580@gmail.com', 'Robiyatul adhawiyah ', 'IMG-20180131-WA0009-1.jpg', 62950, 'jpg'),
(168, '2018-01-31 12:29:28', 'tryout_sbmptn', 2, 'Alikaputriutami7@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180131-WA0017.jpg', 62950, 'jpg'),
(169, '2018-01-31 12:43:20', 'tryout_sbmptn', 2, 'zieqalv18@gmail.com', 'ROBIYATUL ADHAWIYAH', 'IMG-20180131-WA0000-1.jpg', 62950, 'jpg'),
(170, '2018-01-31 13:34:02', 'tryout_sbmptn', 2, 'adjie.rosyed@gmail.com', 'robiyatul adhawiyah', 'IMG-20180131-WA0025.jpg', 62950, 'jpg'),
(171, '2018-01-31 14:18:07', 'tryout_sbmptn', 2, 'santikaafqia@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180131-WA0000-2.jpg', 62950, 'jpg'),
(172, '2018-01-31 14:27:00', 'tryout_sbmptn', 2, 'nadanaila77@gmail.com', 'Rizki Febri dini a', 'IMG-20180131-WA0000-3.jpg', 62950, 'jpg'),
(173, '2018-01-31 14:30:42', 'tryout_sbmptn', 2, 'ismiauliasabrina.yahoo.co.id@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0000-4.jpg', 62950, 'jpg'),
(174, '2018-01-31 14:34:41', 'tryout_sbmptn', 2, 'ayunitarahim@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0005.jpg', 62950, 'jpg'),
(175, '2018-01-31 14:39:38', 'tryout_sbmptn', 2, 'laila.ihda@gmail.com', 'Robiyatul Adhawiyah ', 'IMG-20180131-WA0005-1.jpg', 62950, 'jpg'),
(176, '2018-01-31 14:58:54', 'tryout_sbmptn', 2, 'regita3424@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0007.jpg', 62950, 'jpg'),
(177, '2018-01-31 16:07:33', 'tryout_sbmptn', 2, 'imtasyatriutami@gmail.com', 'Bambang Suryo Sularso', 'IMG-20180131-WA0005-2.jpg', 47104, 'jpg'),
(178, '2018-02-01 04:14:51', 'tryout_sbmptn', 1, 'Oktaviona1404@gmail.com', 'Silvi damayanti ', 'IMG-20180201-WA0003.jpg', 60129, 'jpg'),
(179, '2018-02-01 04:21:13', 'tryout_sbmptn', 2, 'silvidamayanti2906@gmail.com', 'silvi damayanti', 'TMPDOODLE1517458738598.jpg', 293694, 'jpg'),
(180, '2018-02-01 04:30:39', 'tryout_sbmptn', 2, 'nadifamhra@gmail.com', 'Robiyatul Adhawiyah', 'IMG_20180201_112657.jpg', 48908, 'jpg'),
(181, '2018-02-01 05:20:56', 'tryout_sbmptn', 1, 'Almadinasnas@gmail.com', 'silvi damayanti', 'IMG-20180201-WA0010.jpg', 60129, 'jpg'),
(182, '2018-02-01 08:06:30', 'tryout_sbmptn', 2, 'ahmadalfinsyah8@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0005-3.jpg', 62950, 'jpg'),
(183, '2018-02-01 10:42:44', 'tryout_sbmptn', 2, 'Hadisti16@gmail.com', 'osa onasisca', 'IMG-20180201-WA0011.jpg', 197375, 'jpg'),
(184, '2018-02-01 11:42:06', 'tryout_sbmptn', 1, 'yohannaa.11.yr@gmail.com', 'Widyana', '19d35a59-fb59-4c5a-b015-a81a05fe2bf6.jpg', 93593, 'jpg'),
(185, '2018-02-01 11:48:34', 'tryout_sbmptn', 1, 'anggitprass15@gmail.com', 'widyana', 'IMG_20180201_181614.jpg', 1944221, 'jpg'),
(186, '2018-02-01 12:44:51', 'tryout_sbmptn', 2, 'farhanfirdaus925@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180131-WA0069.jpg', 62950, 'jpg'),
(187, '2018-02-01 13:12:08', 'tryout_sbmptn', 2, 'Bimbimbap18@gmail.Com', 'FLIPTECH LENTERA IP IT', 'IMG-20180201-WA0010-1.jpg', 47678, 'jpg'),
(188, '2018-02-01 13:16:01', 'tryout_sbmptn', 2, 'fira232425@gmail.com', 'FLIPTECH LENTERA IP IT', 'IMG-20180201-WA0010-2.jpg', 47678, 'jpg'),
(189, '2018-02-02 01:41:24', 'tryout_sbmptn', 2, 'iyainiyayahyakk@gmail.com', 'KHAIRUNNISA', 'IMG-20180202-WA0000.jpg', 73825, 'jpg'),
(190, '2018-02-02 02:06:30', 'tryout_sbmptn', 2, 'rezkasalsabilaa@gmail.com', 'KHAIRUNNISA', 'IMG-20180202-WA0004.jpg', 73825, 'jpg'),
(191, '2018-02-02 06:33:26', 'tryout_sbmptn', 1, 'nabilaaryanti23@gmail.com', 'RAHMAT RAHMADAN', 'IMG-20180202-WA0002.jpg', 87182, 'jpg'),
(192, '2018-02-02 10:55:20', 'tryout_sbmptn', 2, 'annisha.damayanti14@gmail.com', 'Sumarni', 'IMG-20180202-WA0001.jpg', 39582, 'jpg'),
(193, '2018-02-02 10:55:42', 'tryout_sbmptn', 1, 'oktaalfianoerafifa@gmail.com', 'Sumarni', 'IMG-20180202-WA0001-1.jpg', 39582, 'jpg'),
(194, '2018-02-02 11:13:52', 'tryout_sbmptn', 1, 'sriitikaa@gmail.com', 'Syafrinaldi', 'IMG-20180202-WA0005.jpg', 67733, 'jpg'),
(195, '2018-02-02 12:36:36', 'tryout_sbmptn', 2, 'raihan.azzahra2003@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180202-WA0035.jpg', 62950, 'jpg'),
(196, '2018-02-02 13:05:42', 'tryout_sbmptn', 2, 'damalia700@gmail.com', 'Robiyatul Adawiyah', 'IMG-20180131-WA0014-1.jpg', 62950, 'jpg'),
(197, '2018-02-02 23:15:10', 'tryout_sbmptn', 1, 'alfamyariztriamanda@gmail.com', 'Alfamya Riztriamanda', 'FA8FB39F-9F2A-4137-A49E-90475C006A8B.png', 117504, 'png'),
(198, '2018-02-03 01:03:42', 'tryout_sbmptn', 2, 'nabilabalqistghina@gmail.com', 'USADA', 'IMG-20180202-WA0025.jpg', 101242, 'jpg'),
(199, '2018-02-03 04:41:53', 'tryout_sbmptn', 1, 'iklinawardani00@gmail.com', 'Sumarni', 'IMG-20180202-WA0002-1.jpg', 39582, 'jpg'),
(200, '2018-02-03 05:52:40', 'tryout_sbmptn', 1, 'ainialli123@gmail.com', 'Yunni Alli Shafira', 'IMG-20180203-WA0000.jpg', 66137, 'jpg'),
(201, '2018-02-03 06:46:02', 'tryout_sbmptn', 2, 'muhammadnabil.ramadhan007@gmail.com', 'Robiyatul Adhawiyah', 'IMG-20180131-WA0003.jpg', 62950, 'jpg'),
(202, '2018-02-03 07:44:05', 'tryout_sbmptn', 1, 'aizzahalasalsabilla@gmail.com', 'A\'izzah a\'la sabila', 'IMG-20180203-WA0016.jpeg', 1034523, 'jpeg'),
(203, '2018-02-03 07:51:03', 'tryout_sbmptn', 2, 'chintyaagnesta14@gmail.com', 'Ayurahayu', '15176440390331213051897.jpg', 2079157, 'jpg'),
(204, '2018-02-03 07:53:19', 'tryout_sbmptn', 2, 'albarokalaula@gmail.com', 'Ayurahayu', 'IMG-20180203-WA0003.jpg', 77185, 'jpg'),
(205, '2018-02-03 08:22:51', 'tryout_sbmptn', 2, 'badriyahsiti909@gmail.com', 'Ilham kholid ', 'IMG-20180203-WA0008.jpeg', 959415, 'jpeg'),
(206, '2018-02-03 08:32:50', 'tryout_sbmptn', 2, 'nabilaastuti20@gmail.com', 'ilham kholid ', 'IMG-20180203-WA0023.jpg', 70012, 'jpg'),
(208, '2018-02-03 11:38:11', 'tryout_sbmptn', 1, '91nurhasanahdd@gmail.com', 'Arman', 'IMG-20180203-WA0024.jpg', 76814, 'jpg'),
(209, '2018-02-03 14:28:14', 'tryout_sbmptn', 2, 'fildzah.ibnati@gmail.com', 'Eti Rosmiyati', 'IMG_20180203_211429_1517667293106.jpg', 133861, 'jpg'),
(210, '2018-02-03 15:27:27', 'tryout_sbmptn', 2, 'Chessiazizah@gmail.com', 'Muhamad Lani', 'IMG-20180203-WA0014.jpg', 69818, 'jpg'),
(211, '2018-02-04 02:17:54', 'tryout_sbmptn', 1, 'farhanirimawati@yahoo.co.id', 'Syafrinaldi', 'IMG-20180202-WA0018.jpg', 67733, 'jpg'),
(212, '2018-02-04 04:08:15', 'tryout_sbmptn', 2, 'wardahfadilah851@gmail.com', 'Ayurahayu', 'IMG-20180203-WA0011.jpg', 77185, 'jpg'),
(213, '2018-02-04 07:34:18', 'tryout_sbmptn', 2, 'Azzahraismail14@gmail.com', 'Gunawan', 'IMG20180203194356.jpg', 1628643, 'jpg'),
(214, '2018-02-04 07:53:57', 'tryout_sbmptn', 1, 'minatonamikaze616@gmail.com', 'Transfer langsung', 'image-1.jpeg', 121838, 'jpeg'),
(215, '2018-02-04 13:08:08', 'tryout_sbmptn', 1, 'zahraar947@gmail.com', 'Ferry akbar', 'IMG-20180203-WA0008.jpg', 114732, 'jpg'),
(216, '2018-02-04 13:11:29', 'tryout_sbmptn', 1, 'annasmiftahulfallah6@gmail.com', 'Sunarto', 'IMG-20180204-WA0002.jpg', 111515, 'jpg'),
(217, '2018-02-05 00:19:13', 'tryout_sbmptn', 1, 'zanassukma@gmail.com', 'Budi Sukmadi', 'B612_20180204_132209.jpg', 542418, 'jpg'),
(218, '2018-02-05 02:00:21', 'tryout_sbmptn', 2, 'desynoviani26@gmail.com', 'Robiyatul adhawiyah', 'IMG-20180131-WA0006.jpg', 62950, 'jpg'),
(219, '2018-02-05 03:42:07', 'tryout_sbmptn', 1, 'zenithchaerani@gmail.com', 'Pramita evanda', 'ED01C294-3FC1-41D7-969E-07C62AFA1844.jpeg', 86103, 'jpeg'),
(220, '2018-02-05 03:48:30', 'tryout_sbmptn', 2, 'fitriayunitan@gmail.com', 'Pramita evanda', 'IMG-20180205-WA0007.jpg', 58757, 'jpg'),
(221, '2018-02-05 04:57:10', 'tryout_sbmptn', 1, 'andikabai41@gmail.com', 'Budi sukmadi', '1517726105021.jpg', 43158, 'jpg'),
(222, '2018-02-05 06:35:06', 'tryout_sbmptn', 2, 'cyrusmodd@gmail.com', 'Rudy Hermawan', 'IMG-20180205-WA0005.jpg', 56163, 'jpg'),
(223, '2018-02-05 08:42:03', 'tryout_sbmptn', 1, 'ariqahdini@gmail.com', 'Sumarni', 'IMG-20180205-WA0001.jpg', 39582, 'jpg'),
(224, '2018-02-05 10:01:16', 'tryout_sbmptn', 1, 'Dafiqtw34@gmail.com', 'Murtiyati', 'IMG_3012.JPG', 94656, 'JPG'),
(225, '2018-02-05 11:03:56', 'tryout_sbmptn', 2, 'elviradmynti@gmail.com', 'Azhari', 'TMPDOODLE1517828451649.jpg', 254845, 'jpg'),
(226, '2018-02-05 11:34:10', 'tryout_sbmptn', 2, 'aghninad@gmail.com', 'Azhari', 'IMG-20180205-WA0041.jpg', 67214, 'jpg'),
(227, '2018-02-05 12:46:49', 'tryout_sbmptn', 2, 'indirahmap@gmail.com', 'Syamsuddin', 'IMG_20180205_194052.jpg', 1158767, 'jpg'),
(228, '2018-02-05 14:53:25', 'tryout_sbmptn', 1, 'salmamilda123@gmail.com', 'Aripah Rosyidah', 'IMG-20180205-WA0026.jpeg', 647618, 'jpeg'),
(229, '2018-02-05 16:23:44', 'tryout_sbmptn', 2, 'aldawhyfbrn@gmail.com', 'yusuf', 'IMG-20180205-WA0012.jpg', 23257, 'jpg'),
(230, '2018-02-05 22:42:28', 'tryout_sbmptn', 1, 'sisilauliarahma1996@gmail.com', 'Aripah rosyidah', 'IMG-20180205-WA0004.jpg', 41098, 'jpg'),
(231, '2018-02-05 22:57:20', 'tryout_sbmptn', 2, 'salwaadinda3@gmail.com', 'aripah rosyidah', 'IMG-20180205-WA0008.jpg', 41098, 'jpg'),
(232, '2018-02-06 02:04:47', 'tryout_sbmptn', 1, 'gpshafira@gmail.com', 'M. Adenan Palamani', 'S80206-09010971.jpg', 122764, 'jpg'),
(233, '2018-02-06 04:37:13', 'tryout_sbmptn', 2, 'serinaindah27878@gmail.com', 'Nova Kurnia Dewi', 'WhatsApp_Image_2018-02-05_at_5.35.39_PM.jpeg', 185056, 'jpeg'),
(234, '2018-02-06 07:05:39', 'tryout_sbmptn', 1, 'rhonda.anindya@gmail.com', 'Dedi Tjahyadi', 'image-2.jpeg', 84119, 'jpeg'),
(235, '2018-02-06 08:17:51', 'tryout_sbmptn', 2, 'yuniafaridayuni5455@gmail.com', 'Azhari', 'IMG-20180206-WA0003.jpg', 41621, 'jpg'),
(236, '2018-02-06 08:18:47', 'tryout_sbmptn', 2, 'anisalfiana26@gmail.com', 'Azhari', 'IMG-20180206-WA0003-1.jpg', 41621, 'jpg'),
(237, '2018-02-06 12:51:26', 'tryout_sbmptn', 1, 'Novitasri50505@gmail.com', 'erni sri wahyuningsih', 'IMG-20180206-WA0001.jpeg', 564511, 'jpeg'),
(238, '2018-02-06 13:00:37', 'tryout_sbmptn', 1, 'fajriaturrohmah6@gmail.com', 'Erni sri wahyuningsih', '1517921839653.jpg', 86536, 'jpg'),
(239, '2018-02-06 13:09:33', 'tryout_sbmptn', 1, 'poktaviani731@gmail.com', 'Sumarni', 'Screenshot_2018-02-05-17-11-49-12.png', 139130, 'png'),
(241, '2018-02-06 14:07:41', 'tryout_sbmptn', 1, 'aliefahalena24@gmail.com', 'PERILI YASHINTA', 'udah_jadi_uy-min.jpg', 885568, 'jpg'),
(242, '2018-02-06 14:09:54', 'tryout_sbmptn', 1, 'demaxevil@gmail.com', 'Zulkifli', 'IMG-20180205-WA0015.jpeg', 1103995, 'jpeg'),
(243, '2018-02-06 14:39:47', 'tryout_sbmptn', 1, 'Novitasari123122@gmail.com', 'Karnawi karnawi', '1517927922493..jpg', 1799699, 'jpg'),
(245, '2018-02-06 22:25:33', 'tryout_sbmptn', 1, 'lilirahma52@gmail.com', 'Erni sri wahyuningsih', 'IMG-20180206-WA0008.jpg', 91420, 'jpg'),
(246, '2018-02-06 23:54:52', 'tryout_sbmptn', 2, 'errayftw@yahoo.com', 'Putri oktaviani', 'IMG-20180207-WA0002.jpeg', 758056, 'jpeg'),
(247, '2018-02-07 03:52:30', 'tryout_sbmptn', 1, 'widyapermatasari922@yahoo.com', 'Widyana', 'IMG-20180207-WA0002.jpg', 69320, 'jpg'),
(248, '2018-02-07 03:52:30', 'tryout_sbmptn', 1, 'Luthfimutoinah18@gmail.com', 'Widyana', 'IMG-20180207-WA0001.jpg', 73469, 'jpg'),
(249, '2018-02-07 03:55:21', 'tryout_sbmptn', 1, 'nancyazr17@gmail.com', 'Widyana', 'IMG-20180207-WA0000.jpg', 69320, 'jpg'),
(250, '2018-02-07 06:59:11', 'tryout_sbmptn', 1, 'anisaftrni1@gmail.com', 'Syamsuddin', 'IMG_20180205_194104.jpg', 1207328, 'jpg'),
(251, '2018-02-07 07:01:42', 'tryout_sbmptn', 1, 'shafa25priasmoro@gmail.com', 'Priyanto', 'IMG-20180206-WA0004.jpg', 54229, 'jpg'),
(252, '2018-02-07 09:54:03', 'tryout_sbmptn', 1, 'aldilamuly75@gmail.com', 'Widyana', '6076a376-a006-4c09-ae49-75a8ffa53d75.jpg', 69320, 'jpg'),
(253, '2018-02-07 11:49:07', 'tryout_sbmptn', 2, 'kinantisyadilanurye@gmail.com', 'Rusli', 'IMG_8443.JPG', 1979329, 'JPG'),
(254, '2018-02-07 12:58:04', 'tryout_sbmptn', 1, 'rafibatam2@gmail.com', 'E Caroline Seconda', 'IMG-20180207-WA0008.jpeg', 1578759, 'jpeg'),
(255, '2018-02-07 13:09:14', 'tryout_sbmptn', 2, 'nabilasyavanaa@gmail.com', 'Rohmat', 'IMG-20180207-WA0000-1.jpg', 188439, 'jpg'),
(256, '2018-02-07 13:10:24', 'tryout_sbmptn', 1, 'nadaa.dwi99@gmail.com', 'Rohmat', 'IMG-20180207-WA0000-2.jpg', 188439, 'jpg'),
(257, '2018-02-07 14:07:49', 'tryout_sbmptn', 1, 'rizkaoliviapark@gmail.com', 'annas sobirin', 'IMG-20180207-WA0016.jpg', 54923, 'jpg'),
(258, '2018-02-08 00:14:44', 'tryout_sbmptn', 1, 'anggiaulia750@gmail.com', 'Widyana', '547f5c40-649a-4ff4-b729-02330145aeb7.jpg', 73469, 'jpg'),
(259, '2018-02-08 00:42:58', 'tryout_sbmptn', 2, 'indahriskiani2000@gmail.com', 'Rohmat', 'IMG-20180208-WA0000.jpg', 261095, 'jpg'),
(260, '2018-02-08 03:58:49', 'tryout_sbmptn', 2, 'Menikindahsari01@gmail.com', '089621815771', '1518062200997.jpg', 122372, 'jpg'),
(261, '2018-02-08 09:37:23', 'tryout_sbmptn', 2, 'raihanibnusina99@gmail.com', 'Hikmah wati', '1518082410370-1628485417.jpg', 2069497, 'jpg'),
(262, '2018-02-08 12:41:11', 'tryout_sbmptn', 1, 'rilham5552@gmail.com', 'Moch. Edi Santoso', 'IMG-20180208-WA0033.jpg', 67981, 'jpg'),
(263, '2018-02-08 12:53:02', 'tryout_sbmptn', 1, 'ariniayuardianti@gmail.com', 'Arizky tazillah', 'C269C951-E9B8-447B-B9BB-73559BF89DC2.jpeg', 67623, 'jpeg'),
(264, '2018-02-08 13:04:25', 'tryout_sbmptn', 2, 'smagfiroh3@gmail.com', 'Syahrul Maqfiroh', '15180949455201123066470.jpg', 1748179, 'jpg'),
(265, '2018-02-08 15:23:56', 'tryout_sbmptn', 1, 'maulidinarahayu21@gmail.com', 'Rohmat', '1518103015958.jpg', 188439, 'jpg'),
(266, '2018-02-09 13:54:08', 'futsal', 0, 'listyorini580@gmail.com', 'Bagas Prama Ananta', '788864.jpg', 86363, 'jpg'),
(268, '2018-02-14 00:09:16', 'tryout_sbmptn', 2, 'siti.mulyaningsih79@icloud.com', 'Harwati', '13E9C996-0088-439E-A53B-004AA898FBB9.jpeg', 447884, 'jpeg'),
(269, '2018-02-14 00:11:41', 'tryout_sbmptn', 2, 'rizkidaffa25222610@icloud.com', 'Harwati', '763D9D0A-EFD9-4698-8DC3-8667B04F003D.jpeg', 447884, 'jpeg'),
(270, '2018-02-14 06:01:47', 'tryout_sbmptn', 2, 'chaelanisalsabila@gmail.com', 'Totok Firhandoko Sugiharto', 'image.jpg', 1102863, 'jpg'),
(271, '2018-02-14 07:03:24', 'tryout_sbmptn', 1, 'iviannurperdania@gmail.com', 'Heny sahara', 'IMG-20180211-WA0004.jpg', 86161, 'jpg'),
(272, '2018-02-14 07:22:36', 'tryout_sbmptn', 1, 'mutiaradewi57@yahoo.com', 'Mutiara Dewi', 'IMG_1604.PNG', 104013, 'PNG'),
(273, '2018-02-14 07:23:07', 'tryout_sbmptn', 1, 'farhan982015@gmail.com', 'LASTRI HIDAYAT', 'IMG-20180213-WA0000.jpg', 120016, 'jpg'),
(274, '2018-02-14 07:23:30', 'tryout_sbmptn', 1, 'putriesa250@gmail.com', 'Mutiara Dewi', 'IMG_1604-1.PNG', 104013, 'PNG'),
(276, '2018-02-14 10:00:26', 'tryout_sbmptn', 2, 'aldirafanisa@gmail.com', 'Aldira Fanisa', 'Screenshot_2018-02-12-12-58-23.png', 98170, 'png'),
(277, '2018-02-14 11:33:35', 'tryout_sbmptn', 2, 'nurhidayah0617@gmail.com', 'Saparuddin', 'LINE_1518607560169.png', 186819, 'png'),
(278, '2018-02-14 11:34:59', 'tryout_sbmptn', 2, 'nurhdyh817@gmail.com', 'Saparuddin', 'LINE_1518607560169-1.png', 186819, 'png'),
(279, '2018-02-14 12:54:43', 'tryout_sbmptn', 2, 'imjustira@gmail.com', 'KHAIRA UMMAH SYAFITRI', 'IMG_20180214_194145_1518612875801.jpg', 187720, 'jpg'),
(280, '2018-02-14 13:23:17', 'tryout_sbmptn', 1, 'akmalhanan75@gmail.com', 'Melisa Indriyani', 'IMG-20180213-WA0004.jpg', 79848, 'jpg'),
(281, '2018-02-14 13:49:19', 'tryout_sbmptn', 2, 'Sayyidah973@gmail.com', 'Komariah', 'IMG-20180214-WA0000.jpg', 67811, 'jpg'),
(282, '2018-02-14 14:04:26', 'tryout_sbmptn', 2, 'basmahffahria@gmail.com', 'NAPIAH', '20180214_205452.jpg', 2057674, 'jpg'),
(283, '2018-02-14 14:09:50', 'tryout_sbmptn', 2, 'luthfiatunisaaa@gmail.com', 'Rizki dini febri anggrai', 'IMG-20180214-WA0025.jpg', 60351, 'jpg'),
(284, '2018-02-14 14:10:35', 'tryout_sbmptn', 2, 'naandhittaaa@gmail.com', 'Istiqomah', 'PicsArt_02-14-09.09.55.jpg', 377296, 'jpg'),
(285, '2018-02-14 14:24:40', 'tryout_sbmptn', 2, 'ssekararum33@gmail.com', 'Putri retno syafitri', '20180211_202626.jpg', 1015254, 'jpg'),
(286, '2018-02-14 14:30:10', 'tryout_sbmptn', 1, 'shintaoktaviananda14@gmail.com', 'Pramita evanda', 'IMG-20180206-WA0007.jpg', 58780, 'jpg'),
(287, '2018-02-14 14:51:23', 'tryout_sbmptn', 2, 'vanesyazhafira@gmail.com', 'Uun Nurlina', 'IMG-20180214-WA0000-1.jpg', 102287, 'jpg'),
(288, '2018-02-15 02:47:20', 'tryout_sbmptn', 2, 'afifahptranj@gmail.com', 'Yani Mulyani', '56374733-61EC-483A-8FA0-2B9C665E863D.jpeg', 73479, 'jpeg'),
(289, '2018-02-15 03:32:07', 'tryout_sbmptn', 2, 'shafirafrdb16@gmail.com', 'Sella & shafira', 'IMG-20180215-WA0003.jpg', 136207, 'jpg'),
(290, '2018-02-15 03:35:19', 'tryout_sbmptn', 2, 'sella.fazeriati@gmail.com', 'Sella&shafira', 'IMG-20180215-WA0000.jpg', 136207, 'jpg'),
(291, '2018-02-15 07:09:09', 'tryout_sbmptn', 2, 'fina.13.fs@gmail.com', 'MARYO', 'IMG-20180210-WA0001.jpg', 100394, 'jpg'),
(292, '2018-02-15 07:46:38', 'tryout_sbmptn', 2, 'amirayustisia14@gmail.com', 'Komariah', 'IMG-20180215-WA0008.jpg', 67943, 'jpg'),
(293, '2018-02-15 07:49:06', 'tryout_sbmptn', 2, 'riaanggiani99@gmail.com', 'Komariah', 'IMG-20180215-WA0009.jpg', 67811, 'jpg'),
(294, '2018-02-15 07:50:49', 'tryout_sbmptn', 2, 'nurafifah.yani@gmail.com', 'Komariah', 'IMG-20180215-WA0009-1.jpg', 67811, 'jpg'),
(295, '2018-02-15 10:24:43', 'tryout_sbmptn', 2, 'arifsyarifuddinnaib@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0017.jpg', 323721, 'jpg'),
(296, '2018-02-15 10:25:50', 'tryout_sbmptn', 2, 'dewilanuralifa@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0009-2.jpg', 323721, 'jpg'),
(297, '2018-02-15 10:26:04', 'tryout_sbmptn', 2, 'maulidafadilah11@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0000-1.jpg', 323721, 'jpg'),
(298, '2018-02-15 10:26:08', 'tryout_sbmptn', 2, 'alfafirdaus@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0000-2.jpg', 323721, 'jpg'),
(299, '2018-02-15 10:26:53', 'tryout_sbmptn', 2, 'safitriamelia1509@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0002.jpg', 323721, 'jpg'),
(300, '2018-02-15 10:29:09', 'tryout_sbmptn', 2, 'jibranrere@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0001.jpg', 323721, 'jpg'),
(301, '2018-02-15 10:33:05', 'tryout_sbmptn', 2, 'robiatula2000@gmail.com', 'Daud Yusuf S Ag', 'P_20180215_170331_1.jpg', 2063919, 'jpg'),
(302, '2018-02-15 10:35:30', 'tryout_sbmptn', 2, 'claudia.nahda@gmail.com', 'Daud yusuf S AG', 'IMG-20180215-WA0009-3.jpg', 323721, 'jpg'),
(303, '2018-02-15 10:37:41', 'tryout_sbmptn', 2, 'muhamadriyan0305@gmail.com', 'Daud Yusuf S Ag', 'TMPDOODLE1518691042960.jpg', 837380, 'jpg'),
(304, '2018-02-15 10:46:33', 'tryout_sbmptn', 2, 'hilmannudin66@gmail.com', 'Daud yusuf s.ag', 'IMG-20180215-WA0006.jpg', 323721, 'jpg'),
(305, '2018-02-15 11:11:36', 'tryout_sbmptn', 2, 'aramadhan052@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0003-1.jpg', 323721, 'jpg'),
(306, '2018-02-15 11:29:49', 'tryout_sbmptn', 2, 'maratifjrn@gmail.com', 'Atiatus sangadah', 'IMG-20180215-WA0033.jpg', 63701, 'jpg'),
(307, '2018-02-15 11:35:41', 'tryout_sbmptn', 2, 'buntungbuaya637@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0003-2.jpg', 323721, 'jpg'),
(308, '2018-02-15 11:54:12', 'tryout_sbmptn', 2, 'adityaibnu28@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0002-1.jpg', 323721, 'jpg'),
(309, '2018-02-15 12:05:24', 'tryout_sbmptn', 2, 'atikahumi3@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0017-1.jpg', 323721, 'jpg'),
(311, '2018-02-15 12:19:09', 'tryout_sbmptn', 2, 'sgtsrtina@gmajl.com', 'daud yusuf s ag', 'IMG-20180215-WA0000-3.jpg', 323721, 'jpg'),
(312, '2018-02-15 12:33:54', 'tryout_sbmptn', 2, 'nurma.oneng@gmail.com', 'Atiatus sangadah', 'IMG-20180215-WA0033-1.jpg', 63701, 'jpg'),
(313, '2018-02-15 12:37:50', 'tryout_sbmptn', 2, 'endangfitriyani1@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0008-1.jpg', 323721, 'jpg'),
(314, '2018-02-15 12:43:09', 'tryout_sbmptn', 2, 'aisyahaamalia@gmail.com', 'putri retno syafitri', 'IMG-20180215-WA0009-4.jpg', 76087, 'jpg'),
(315, '2018-02-15 13:49:28', 'tryout_sbmptn', 2, 'ricaalviani99@gmail.com', 'Siti Rukayah', 'IMG-20180215-WA0016.jpeg', 538041, 'jpeg'),
(316, '2018-02-15 13:59:16', 'tryout_sbmptn', 2, 'Ega.safitri3167@gmail.com', 'Daud yusuf S Ag', 'IMG-20180215-WA0007.jpg', 323721, 'jpg'),
(317, '2018-02-15 14:05:21', 'tryout_sbmptn', 1, 'salma.naf82@gmail.com', 'Giyanto', 'IMG-20180215-WA0001-1.jpg', 51765, 'jpg'),
(318, '2018-02-15 14:07:52', 'tryout_sbmptn', 1, '96ananovita05@gmail.com', 'Giyanto', 'IMG-20180215-WA0001-2.jpg', 51765, 'jpg'),
(320, '2018-02-15 14:16:36', 'tryout_sbmptn', 1, '98putrinitamirahayu@gmail.com', 'Giyanto', 'IMG-20180215-WA0001-3.jpg', 51765, 'jpg'),
(321, '2018-02-15 15:14:00', 'tryout_sbmptn', 2, 'dhiyafikriyah@gmail.com', 'Moelyadi S', 'IMG-20180215-WA0010.jpg', 84186, 'jpg'),
(322, '2018-02-15 15:14:02', 'tryout_sbmptn', 2, 'bagusalghazali10@gmail.com', 'Daud yusuf s ag', 'IMG-20180215-WA0009-5.jpg', 323721, 'jpg'),
(323, '2018-02-15 15:20:14', 'tryout_sbmptn', 2, 'michailfadhil17@gmail.com', 'Moelyadi S', 'IMG-20180215-WA0002-2.jpg', 76135, 'jpg'),
(324, '2018-02-15 15:26:51', 'tryout_sbmptn', 2, 'alifthaauliaputri@gmail.com', 'Yamanurdin', 'image-3.jpeg', 83498, 'jpeg'),
(326, '2018-02-16 02:26:25', 'tryout_sbmptn', 2, 'yolaismisalsabila@gmail.com', 'Iwan Sofyan', 'IMG-20180207-WA0001_1_.jpg', 52635, 'jpg'),
(327, '2018-02-16 04:48:20', 'tryout_sbmptn', 2, 'urmayessi98@gmail.com', 'Daud yusuf S Ag', 'IMG-20180216-WA0004.jpg', 323721, 'jpg'),
(328, '2018-02-16 04:49:54', 'tryout_sbmptn', 2, 'aldityacommbank56@gmail.com', 'Dwi alditia aryanda', '1518756541199-351019552.jpg', 1914842, 'jpg'),
(329, '2018-02-16 06:07:09', 'tryout_sbmptn', 2, 'Faraansya@gmail.com', 'Iwan Sofyan', '1518242424990.jpg', 45224, 'jpg'),
(330, '2018-02-16 09:34:43', 'tryout_sbmptn', 2, 'sabdanurwasilah56@gmail.com', 'Sabda Nurwasilah', 'IMG-20180216-WA0011.jpg', 69515, 'jpg'),
(331, '2018-02-16 10:29:39', 'tryout_sbmptn', 2, 'yuliafirlidayanti30@gmail.com', 'Alfia Nurhasanah', '1518776867995550454794.jpg', 571450, 'jpg'),
(332, '2018-02-16 11:10:39', 'tryout_sbmptn', 1, 'intansari210699@gmail.com', 'Bahri', 'IMG-20180207-WA0034.jpeg', 611988, 'jpeg'),
(333, '2018-02-16 12:59:59', 'tryout_sbmptn', 1, 'dwitita2000@gmail.com', 'Dwi tita', 'IMG_20180216_151744.jpg', 1710521, 'jpg'),
(334, '2018-02-16 13:02:24', 'tryout_sbmptn', 1, 'erlyfebrianaa@gmail.com', 'Erly febriana', 'bb1347cb-b4cc-45d7-baf2-591dae2db875.jpg', 71927, 'jpg'),
(335, '2018-02-16 13:10:10', 'tryout_sbmptn', 1, 'roviaturrosidah31@gmail.com', 'rovi aturrosidah', 'IMG-20180216-WA0032.jpg', 78211, 'jpg'),
(336, '2018-02-16 13:19:27', 'tryout_sbmptn', 1, 'sfajriyantiagustin@gmail.com', 'SILVIA NUR RIZKI', 'image.png', 743850, 'png'),
(337, '2018-02-16 13:25:56', 'tryout_sbmptn', 1, 'snurulazizah123@gmail.com', 'Siti Nur Azizah', 'IMG_1635.JPG', 108503, 'JPG'),
(338, '2018-02-16 14:42:36', 'singcomp', 0, 'chikafalencia@gmail.com', 'Sulastri', 'IMG-20180216-WA0003.jpg', 149884, 'jpg'),
(339, '2018-02-17 03:30:27', 'tryout_sbmptn', 1, 'mamahmartinah@gmail.com', 'Siti fajriyanti A', 'IMG-20180217-WA0009.jpg', 69946, 'jpg'),
(340, '2018-02-17 21:14:00', 'tryout_sbmptn', 2, 'dinahanifah30@gmail.com', 'Komariah', 'IMG-20180218-WA0000.jpg', 67943, 'jpg'),
(341, '2018-02-17 23:06:51', 'tryout_sbmptn', 2, 'nursellafauziah@gmail.com', 'Alfia Nurhasanah', 'TMPDOODLE1518908779889.jpg', 151209, 'jpg'),
(342, '2018-02-18 01:41:43', 'tryout_sbmptn', 2, 'raniwulandari8@gmail.com', 'Rizki Dini Febri A', 'IMG-20180218-WA0001.jpg', 135884, 'jpg'),
(343, '2018-02-18 06:31:26', 'tryout_sbmptn', 2, 'nelyisnaeni30@gmail.com', 'Yamanurdin', 'IMG-20180218-WA0002.jpg', 79328, 'jpg'),
(344, '2018-02-18 06:34:30', 'singcomp', 0, 'swagbebi@gmail.com', 'Kurniawan Harjasasmita', 'IMG-20180218-WA0012.jpg', 70648, 'jpg'),
(345, '2018-02-18 06:34:57', 'tryout_sbmptn', 2, 'lailanurazizahhh@gmail.com', 'Yamanurdin', '1518935597507.jpg', 76296, 'jpg'),
(346, '2018-02-18 07:42:49', 'tryout_sbmptn', 2, 'suhaininurhayati21@gmail.com', 'suhaeni nurhayati', 'IMG-20180218-WA0041.jpg', 73507, 'jpg'),
(347, '2018-02-18 08:15:56', 'tryout_sbmptn', 2, 'witriwawa23@gmail.com', 'Yamanurdin', '1518941692764.jpg', 76296, 'jpg'),
(348, '2018-02-18 13:30:07', 'tryout_sbmptn', 2, 'nabila.ayun@gmail.com', 'Rizki Dini Febri A', 'IMG-20180218-WA0001-1.jpg', 135884, 'jpg'),
(349, '2018-02-19 11:24:42', 'tryout_sbmptn', 2, 'Septid07@gmail.com', 'Yamanurdin', '1519039380573.jpg', 76296, 'jpg'),
(350, '2018-02-19 14:25:42', 'tryout_sbmptn', 2, 'putriayufalis99@gmail.com', 'Hanifafebiani', '1519049596378.jpg', 69062, 'jpg'),
(351, '2018-02-19 14:28:31', 'tryout_sbmptn', 2, 'Hanifa972015@gmail.com', 'Hanifafebiani', '1519049596378-1.jpg', 69062, 'jpg'),
(352, '2018-02-20 08:16:49', 'tryout_sbmptn', 2, 'salmanurul2611@gmail.com', 'Khaira Ummah Syafitri', '_20180220_151531.jpg', 759479, 'jpg'),
(354, '2018-02-20 10:34:42', 'tryout_sbmptn', 2, 'rahmawatirianjani@gmail.com', 'akhmad Munawir', 'IMG-20180220-WA0009.jpg', 74011, 'jpg'),
(355, '2018-02-20 11:22:12', 'tryout_sbmptn', 2, 'Alfinanurulhuda01@gmail.com', 'Akhmad Munawir', 'IMG-20180220-WA0003-1.jpg', 74011, 'jpg'),
(356, '2018-02-20 12:23:16', 'tryout_sbmptn', 1, 'indira030200@gmail.com', 'Yusup Subakat AS', 'IMG-20180220-WA0041.jpg', 72356, 'jpg'),
(357, '2018-02-20 22:42:18', 'tryout_sbmptn', 2, 'syifafajriah7@gmail.com', 'Moelyadi S', 'IMG-20180214-WA0001-1.jpg', 94625, 'jpg'),
(358, '2018-02-21 02:04:21', 'tryout_sbmptn', 2, 'ichsanmuhammad874@gmail.com', 'Yamanurdin', '1519178588436.jpg', 76296, 'jpg'),
(359, '2018-02-21 02:05:34', 'tryout_sbmptn', 2, 'syabanmuhammad444@gmail.com', 'Yamanurdin', '1519178640556.jpg', 76296, 'jpg'),
(360, '2018-02-21 02:12:57', 'tryout_sbmptn', 2, 'ichakhairunnisa02@gmail.com', 'Yamanurdin', '1518935597507-1.jpg', 76296, 'jpg'),
(361, '2018-02-21 02:13:44', 'tryout_sbmptn', 2, 'pebrianinadila@gmail.com', 'Yamanurdin', '1518935597507-2.jpg', 76296, 'jpg'),
(362, '2018-02-21 08:05:58', 'tryout_sbmptn', 2, 'alyfiamuhassonah@gmail.com', 'Akhmad munawir', 'IMG-20180220-WA0003-2.jpg', 131663, 'jpg'),
(363, '2018-02-21 09:08:23', 'tryout_sbmptn', 2, 'aqilafdhy@gmail.com', 'Yamanurdin', '1519203993337.jpg', 76296, 'jpg'),
(364, '2018-02-22 07:17:09', 'tryout_sbmptn', 2, 'sandraikhawati@gmail.com', 'Sandra Ikhawati', 'Screenshot_2018-02-22-14-16-07_com.whatsapp.png', 439760, 'png'),
(365, '2018-02-22 07:38:52', 'tryout_sbmptn', 2, 'almaarz19@gmail.com', 'Edi Haryanto', '20180222_133527.jpg', 1263942, 'jpg'),
(366, '2018-02-22 09:50:00', 'tryout_sbmptn', 2, 'syifauziahhh06@gmail.com', 'Yamanurdin', 'IMG-20180222-WA0000.jpg', 76296, 'jpg'),
(367, '2018-02-22 12:16:44', 'tryout_sbmptn', 2, 'baroniahmad@gmail.com', 'Yamanurdin', '1519178720886.jpg', 76296, 'jpg'),
(368, '2018-02-22 12:20:59', 'futsal', 0, 'miradz571@gmail.com', 'Syafira Aulia', 'IMG-20180221-WA0013.jpg', 515972, 'jpg'),
(369, '2018-02-23 09:23:49', 'tryout_sbmptn', 1, 'marisanrbt@gmail.com', 'Khumayah', 'IMG_20180223_160928777_HDR_2.jpg', 1117324, 'jpg'),
(370, '2018-02-23 09:24:04', 'tryout_sbmptn', 1, 'rizky0tabuchi@gmail.com', 'Khumayah', '1519377749027.jpg', 319315, 'jpg'),
(371, '2018-02-23 09:38:13', 'tryout_sbmptn', 1, 'msirajkamil@gmail.com', 'KHUMAYAH', '1519378513359.jpg', 319315, 'jpg'),
(372, '2018-02-23 09:41:45', 'tryout_sbmptn', 1, 'dwiputrisinagaii@gmail.com', 'Khumayah', '1519378851041.jpg', 319315, 'jpg'),
(373, '2018-02-23 09:57:25', 'tryout_sbmptn', 1, 'Sanitacrnns@gmail.com', 'Khumayah', '1519377811086.jpg', 319315, 'jpg'),
(374, '2018-02-23 10:17:54', 'tryout_sbmptn', 1, 'salsabilaauliay@gmail.com', 'Khumayah', '1519380854307.jpg', 319315, 'jpg'),
(375, '2018-02-23 10:31:11', 'tryout_sbmptn', 1, 'cahyasaintika@gmail.com', 'khumayah', 'LINE_1519381773854.png', 319315, 'png'),
(376, '2018-02-23 10:38:08', 'tryout_sbmptn', 1, 'darknegataros@gmail.com', 'Khumayah', '1519382243460.jpg', 319315, 'jpg'),
(377, '2018-02-23 11:32:23', 'tryout_sbmptn', 1, 'nad.dhitaa@gmail.com', 'Khumayah', 'image-4.jpeg', 481993, 'jpeg'),
(378, '2018-02-23 11:35:50', 'tryout_sbmptn', 1, 'zidanezorro66@gmail.com', 'Khumayah', 'bukti.jpg', 319315, 'jpg'),
(379, '2018-02-23 11:58:36', 'tryout_sbmptn', 1, 'pipit.tf@gmail.com', 'Khumayah', '1519379402452.jpg', 319315, 'jpg'),
(380, '2018-02-23 11:59:22', 'tryout_sbmptn', 1, 'gre.bimaputra@gmail.com', 'Khumayah', 'IMG-20180223-WA0000.jpg', 90985, 'jpg'),
(381, '2018-02-23 14:51:39', 'tryout_sbmptn', 1, 'ayunurkhasanahh@gmail.com', 'Khumayah', '1519397422541.jpg', 319315, 'jpg'),
(382, '2018-02-24 00:39:51', 'tryout_sbmptn', 1, 'jasminelly16@gmail.com', 'KHUMAYAH', 'AA7A9094-7015-4BE7-8E8E-5DC2AADEA010.jpeg', 326658, 'jpeg'),
(383, '2018-02-24 01:02:42', 'tryout_sbmptn', 1, 'kwonrayhfi@gmail.com', 'Edi purwanto', '1519434081210-1189288771.jpg', 1965397, 'jpg'),
(384, '2018-02-24 02:55:31', 'tryout_sbmptn', 2, 'sansandra1007@gmail.com', 'Maria Anjani', 'TMPDOODLE1519440861200.jpg', 224291, 'jpg'),
(385, '2018-02-24 03:02:06', 'tryout_sbmptn', 1, 'CindyManuela45@gmail.com', 'Khumayah', '1519441246715.jpg', 319315, 'jpg'),
(386, '2018-02-24 03:40:41', 'tryout_sbmptn', 1, 'cutraudhaatulz@gmail.com', 'sri hartanto', 'IMG-20180224-WA0004.jpg', 75995, 'jpg'),
(387, '2018-02-24 08:51:00', 'tryout_sbmptn', 2, 'zhafarinafildzah@ymail.com', 'Ellya Magdalena', 'IMG-20180224-WA0004-1.jpg', 77098, 'jpg'),
(388, '2018-02-24 11:49:35', 'tryout_sbmptn', 1, 'nawrarifa1505@gmail.com', 'Iis indrawati', '1519472935765.jpg', 94701, 'jpg'),
(390, '2018-02-24 13:04:00', 'tryout_sbmptn', 1, 'firdarhmwt9@gmail.com', 'ety ratnaningsih', 'IMG_20180224_200249.jpg', 101306, 'jpg'),
(391, '2018-02-24 13:22:21', 'tryout_sbmptn', 2, 'cici1505@gmail.com', 'ety ratnaningsih', 'Screenshot_2018-02-24-20-10-01.png', 367423, 'png'),
(392, '2018-02-24 13:27:07', 'tryout_sbmptn', 1, 'latifah0141@gmail.com', 'Iis Indrawati', 'IMG-20180224-WA0012-1.jpg', 84802, 'jpg'),
(393, '2018-02-24 18:10:09', 'futsal', 0, 'Aldinaalrasyid11@gmail.com', 'rukiyah', 'WhatsApp_Image_2018-02-25_at_00.53.51.jpeg', 79620, 'jpeg'),
(394, '2018-02-25 02:02:05', 'tryout_sbmptn', 2, 'difafauziah57@gmail.com', 'Adin rohmadin', 'IMG-20180223-WA0010.jpg', 35625, 'jpg'),
(395, '2018-02-25 02:57:50', 'singcomp', 0, 'jihanriqqy@gmail.com', 'Jihan Riqqy Fuadah', 'image.jpg', 1273974, 'jpg'),
(396, '2018-02-26 00:35:20', 'tryout_sbmptn', 2, 'alyssanurrahma@gmail.com', 'Ety ratnaningsih', 'IMG_20180226_073437.jpg', 78586, 'jpg'),
(397, '2018-02-26 12:16:34', 'tryout_sbmptn', 1, 'kusnadidrs1015@gmail.com', 'KUSNADI DRS', 'BUKTI_BAYAR_TO_UIN_17_MARET18.pdf', 281465, 'pdf'),
(398, '2018-02-27 00:40:57', 'tryout_sbmptn', 1, 'adlyismiati@gmail.com', 'Maryati', 'IMG-20180227-WA0000.jpg', 70750, 'jpg'),
(399, '2018-02-27 06:32:30', 'singcomp', 0, 'dhimazaryo@gmail.com', 'birman', 'TMPDOODLE1519713155415.jpg', 240086, 'jpg'),
(400, '2018-02-27 08:50:12', 'singcomp', 0, 'diahftmh0603@gmail.com', 'Kintan syifa darmawan', 'image.jpeg', 243043, 'jpeg'),
(401, '2018-02-27 10:43:56', 'singcomp', 0, 'finnirosya25@gmail.com', 'Kintan syifa darmawan', 'image-1.jpeg', 243043, 'jpeg'),
(402, '2018-02-27 14:30:53', 'singcomp', 0, 'yyushifa49@gmail.com', 'Siti Rokayah', 'IMG_0793.JPG', 1677876, 'JPG'),
(403, '2018-02-27 17:18:07', 'futsal', 0, 'thariqseven75@gmail.com', 'TEDY ZAINUL MUT', '1519750441505.jpg', 77417, 'jpg'),
(404, '2018-02-28 00:00:04', 'singcomp', 0, 'nabilakusuma.ws1@gmail.com', 'Agus Setyawan', 'IMG-20180227-WA0003.jpg', 74857, 'jpg'),
(405, '2018-02-28 02:26:55', 'singcomp', 0, 'ongky_muntazarmahdi@yahoo.co.id', 'M. Rahmat Muntazar Ma', 'IMG-20180228-WA0002.jpg', 58884, 'jpg'),
(406, '2018-02-28 03:56:33', 'tryout_sbmptn', 1, 'elshafitria20@gmail.com', 'ELSHA FITRIA', '1519790091541..jpg', 1669343, 'jpg'),
(407, '2018-02-28 04:07:54', 'tryout_sbmptn', 2, 'meliyyanasafitri18@gmail.com', 'Rizki Dini Febri Anggraini', 'IMG-20180228-WA0000.jpg', 122569, 'jpg'),
(408, '2018-02-28 05:13:33', 'tryout_sbmptn', 2, 'fadhilaaniisaa@gmail.com', 'Elsha Fitria', 'IMG-20180228-WA0000-1.jpg', 122569, 'jpg'),
(409, '2018-02-28 06:29:10', 'tryout_sbmptn', 2, 'zidafabialyustisianif@gmail.com', 'Moch. Zida fabial Y', 'IMG-20180228-WA0038.jpeg', 1177254, 'jpeg'),
(410, '2018-02-28 07:16:18', 'tryout_sbmptn', 1, 'ajrina345@gmail.com', 'Ajrina Salsabila ', 'IMG20180228141125.jpg', 2091888, 'jpg'),
(411, '2018-02-28 08:27:04', 'futsal', 0, 'mochamad.sofyan76@gmail.com', 'Umar Dahlan ', 'PicsArt_02-28-03.26.09.jpg', 348726, 'jpg');
INSERT INTO `konfirmasi_pembayaran` (`id`, `waktu_upload`, `nama_content`, `pilihan`, `email`, `pemilik_rekening`, `file_name`, `file_size`, `file_type`) VALUES
(412, '2018-02-28 10:16:28', 'singcomp', 0, 'arfaakusumo@gmail.com', 'DIAH MARDIAH', '820399A5-8C2D-47E6-B103-AF76158FF639.jpeg', 1249966, 'jpeg'),
(413, '2018-02-28 11:56:40', 'tryout_sbmptn', 1, 'nazlilamaysifa25@gmail.com', 'Abdul nafidar', 'IMG-20180228-WA0005.jpg', 81216, 'jpg'),
(414, '2018-02-28 12:14:30', 'tryout_sbmptn', 1, 'rivakanzf@gmail.com', 'khumayah', '1519819982303.jpg', 319315, 'jpg'),
(415, '2018-02-28 12:37:19', 'tryout_sbmptn', 1, 'aufasanisafa@yahoo.com', 'Khumayah', 'IMG_8902.JPG', 326653, 'JPG'),
(416, '2018-02-28 15:10:15', 'tryout_sbmptn', 2, 'kurniawatiniken1@gmail.com', 'Juli wahyu wulandari', 'P_20180228_220847.jpg', 1646558, 'jpg'),
(417, '2018-03-01 04:15:15', 'singcomp', 0, 'okkyhendrawan14@gmail.com', 'suhaemi', 'WhatsApp_Image_2018-02-28_at_20.20.48.jpeg', 156505, 'jpeg'),
(418, '2018-03-01 06:46:06', 'tryout_sbmptn', 2, 'sholla.noer@gmail.com', 'Yamanurdin', '1519260942791.jpg', 76296, 'jpg'),
(419, '2018-03-01 07:23:36', 'singcomp', 0, 'puay1304@gmail.com', 'Dita Amalia', 'IMG-20180301-WA0034.jpg', 126741, 'jpg'),
(420, '2018-03-01 09:48:35', 'tryout_sbmptn', 2, 'luluhuda52@gmail.com', 'Erwin Susilo', 'IMG-20180301-WA0002.jpg', 70885, 'jpg'),
(421, '2018-03-01 10:27:05', 'tryout_sbmptn', 2, 'nishanurul9@gmail.com', 'Abdul nafidar', 'IMG-20180301-WA0015.jpg', 81216, 'jpg'),
(422, '2018-03-01 11:04:02', 'singcomp', 0, 'fiqihhy@gmail.com', 'FIQIH HARDANA YUWANZA', 'Screenshot_2018-03-01-18-02-19.png', 77596, 'png'),
(423, '2018-03-01 12:16:15', 'tryout_sbmptn', 2, 'farrasparkyu@gmail.com', 'Putri Farras', 'IMG_20180301_191023.JPG', 1874457, 'JPG'),
(424, '2018-03-01 12:55:25', 'tryout_sbmptn', 2, 'diazlazuardi99@gmail.com', 'Yamanurdin', '1519260942791-1.jpg', 76296, 'jpg'),
(425, '2018-03-01 13:38:37', 'singcomp', 0, 'nafia.zahra16@gmail.com', 'Siti Nurlaelati Syarifah', 'IMG-20180301-WA0030.jpg', 35460, 'jpg'),
(426, '2018-03-01 15:16:21', 'singcomp', 0, 'indahnoviyanto089@gmail.com', 'Indah noviyanto', 'TMPDOODLE1519917355346.jpg', 399864, 'jpg'),
(427, '2018-03-01 15:56:44', 'singcomp', 0, 'julietasiicancer@gmail.com', 'julieta cardova', 'WhatsApp_Image_2018-03-01_at_22.24.27.jpeg', 90793, 'jpeg'),
(428, '2018-03-02 01:02:28', 'tryout_sbmptn', 1, 'rafidasyah22@gmail.com', 'Dewi Ratnasari', 'IMG-20180302-WA0000.jpeg', 1162822, 'jpeg'),
(429, '2018-03-02 01:27:02', 'tryout_sbmptn', 2, 'farihaatul99@gmail.com', 'Gunawan ', 'IMG-20180302-WA0005.jpg', 101664, 'jpg'),
(430, '2018-03-02 06:58:56', 'singcomp', 0, 'reginamaria1918@gmail.com', 'Diah Mardiah', 'IMG-20180302-WA0003.jpg', 72176, 'jpg'),
(431, '2018-03-02 11:35:23', 'futsal', 0, 'rahmatagung910@gmail.com', 'Rahmat', '1519990394515.jpg', 53617, 'jpg'),
(432, '2018-03-02 11:37:56', 'futsal', 0, 'mianovillia64@gmail.com', 'yusuf', '1519989957868.jpg', 96008, 'jpg'),
(433, '2018-03-02 11:39:35', 'futsal', 0, 'mhmmd.rzzq@icloud.com', 'Abdul', '1519990020326.jpg', 99741, 'jpg'),
(434, '2018-03-02 11:40:09', 'futsal', 0, 'diarfadilah98@gmail.com', 'Abdul', '1519990020326-1.jpg', 99741, 'jpg'),
(435, '2018-03-02 11:42:52', 'tryout_sbmptn', 2, 'inggridmerryana@gmail.com', 'Inggrid Merryana Putri', '20180302_184037.jpg', 137716, 'jpg'),
(436, '2018-03-02 11:43:02', 'futsal', 0, 'mikhaelandreas96@gmail.com', 'Ainul', '1519990020326-2.jpg', 99741, 'jpg'),
(437, '2018-03-02 12:08:07', 'singcomp', 0, 'arthahutabarat10@gmail.com', 'Octarianti arthanauli', '1519992408973..jpg', 1405988, 'jpg'),
(438, '2018-03-02 15:34:43', 'tryout_sbmptn', 1, 'auliaqathrun20@gmail.com', 'MUHAMAD FADLI', 'IMG-20180302-WA0000.jpg', 85949, 'jpg'),
(439, '2018-03-04 01:54:36', 'tryout_sbmptn', 1, 'adefitria202@gmail.com', 'Bpk.murdih', 'IMG-20180304-WA0000.jpg', 74983, 'jpg'),
(440, '2018-03-04 03:46:47', 'tryout_sbmptn', 1, 'winasybr@gmail.com', 'Tia kusumawati', 'image-1.jpg', 1683799, 'jpg'),
(441, '2018-03-04 07:29:38', 'tryout_sbmptn', 2, 'megadwi.bernadeta@gmail.com', 'Linda Margaretta Tris K', 'IMG-20180304-WA0008.jpg', 41223, 'jpg'),
(443, '2018-03-05 09:37:49', 'workshop', 0, 'hellytirta@gmail.com', 'Helly Tirta Sumitra', 'IMG_20180305_163630.jpg', 216953, 'jpg'),
(444, '2018-03-06 06:59:11', 'workshop', 0, 'idajumarida@gmail.com', 'Ida jumarida', 'IMG_20180306_134821_HDR_1520319428834.jpg', 109376, 'jpg'),
(445, '2018-03-06 07:05:30', 'workshop', 0, 'innaseptiani64@gmail.com', 'asep saepudin', 'IMG-20180306-WA0031.jpg', 100003, 'jpg'),
(446, '2018-03-06 12:07:40', 'tryout_sbmptn', 2, 'Bagusfarhansyah8@gmail.com', 'Wahyu Suharto', 'IMG_20180306_190645.JPG', 76106, 'JPG'),
(447, '2018-03-06 14:39:52', 'workshop', 0, 'ruthjessicaharyanto07@gmail.com', 'Kus Haryanto', 'IMG-20180306-WA0013.jpg', 170447, 'jpg'),
(448, '2018-03-07 15:44:33', 'tryout_sbmptn', 1, 'wuslatunnimah28@gmail.com', 'Wuslatun Ni\'mah', 'IMG_20180307_224131.jpg', 1839287, 'jpg'),
(449, '2018-03-07 21:39:38', 'tryout_sbmptn', 2, 'salmasalsabila827@gmail.com', 'Azi sopian', 'IMG-20180308-WA0001.jpg', 73249, 'jpg'),
(450, '2018-03-07 22:33:19', 'tryout_sbmptn', 2, '99argithaniamf@gmail.com', 'Rizki Dini Febri Anggraini', 'TMPDOODLE1520461962485.jpg', 225405, 'jpg'),
(453, '2018-03-09 10:25:51', 'tryout_sbmptn', 1, 'nadiraruby@gmail.com', 'Nadira Ruby Irianto', 'Screenshot_2018-03-09-17-24-21-59.png', 127574, 'png'),
(454, '2018-03-09 10:38:23', 'tryout_sbmptn', 1, 'Hasnaadiba98@gmail.com', 'Asna9923', 'IMG_7122.PNG', 43814, 'PNG'),
(455, '2018-03-09 12:28:56', 'olimpiade', 0, 'yvetteaviani@gmail.com', 'josep', 'Untitled.jpg', 94775, 'jpg'),
(456, '2018-03-09 13:09:51', 'tryout_sbmptn', 1, '95rayhan.razif.t@gmail.com', 'Rosdiani', 'IMG_20180309_200835.jpg', 1298671, 'jpg'),
(457, '2018-03-09 14:21:15', 'tryout_sbmptn', 2, 'uchiha.nino80@gmail.com', 'TATI HARYATI', 'IMG-20180309-WA0021.jpg', 60717, 'jpg'),
(458, '2018-03-10 01:03:07', 'tryout_sbmptn', 1, 'vidaayuninda@gmail.com', 'Firman halomoan', '572e2763-cf76-47bd-8559-ff11aefe620b.jpg', 52148, 'jpg'),
(460, '2018-03-10 07:37:04', 'olimpiade', 0, 'puspitasariintan1717@gmail.com', 'Sukarti', '1520666739942-1471947473.jpg', 902294, 'jpg'),
(461, '2018-03-10 10:50:23', 'tryout_sbmptn', 1, 'mahirah.afladhanti@gmail.com', 'Wenny Sanwani', 'FullSizeRender_10_.jpg', 1320027, 'jpg'),
(462, '2018-03-10 12:10:47', 'olimpiade', 0, 'armeliaramand@gmail.com', 'Alfin Seftian', '20180310_190924.jpg', 684663, 'jpg'),
(463, '2018-03-10 13:34:18', 'olimpiade', 0, 'machffud.thv@gmail.com', 'RIZKI FEBRI ANGGRAINI', 'IMG-20180310-WA0017.jpg', 109401, 'jpg'),
(464, '2018-03-10 14:50:44', 'olimpiade', 0, 'vaniadisa@gmail.com', 'Tri Skriptiadi Agustianto', 'P_20180307_154708_1.jpg', 613814, 'jpg'),
(465, '2018-03-11 02:44:20', 'olimpiade', 0, 'hadisahh@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003.jpg', 75838, 'jpg'),
(466, '2018-03-11 02:45:52', 'olimpiade', 0, 'aziispahr@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003-1.jpg', 75838, 'jpg'),
(467, '2018-03-11 02:46:43', 'olimpiade', 0, 'nariomah@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003-2.jpg', 75838, 'jpg'),
(468, '2018-03-11 02:47:37', 'olimpiade', 0, 'pitriyulianti1@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003-3.jpg', 75838, 'jpg'),
(469, '2018-03-11 02:48:57', 'olimpiade', 0, 'rizkievita.alstar@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003-4.jpg', 75838, 'jpg'),
(470, '2018-03-11 02:55:13', 'workshop', 0, 'putra.gemanusa13@mhs.uinjkt.ac.id', 'Putra Gema Nusa', 'Screenshot_2018-03-11-09-50-36.png', 257969, 'png'),
(471, '2018-03-11 03:08:08', 'futsal', 0, 'jamesriyadi69@gmail.com', 'Riyadi', 'bukti_untirta.jpg', 75283, 'jpg'),
(472, '2018-03-11 04:26:36', 'tryout_sbmptn', 1, 'khaliakhairunnisa058@gmail.com', 'Samsudin Rifai', '1520742330555-1464796009.jpg', 1723409, 'jpg'),
(473, '2018-03-11 05:09:10', 'tryout_sbmptn', 1, 'nabilasyarifah123@gmail.com', 'Nabila Syarifah', 'IMG-20180311-WA0017.jpg', 65562, 'jpg'),
(474, '2018-03-11 08:23:33', 'tryout_sbmptn', 1, 'vidtiyaekaputri1@gmail.com', 'Roy pratama', 'IMG-20180311-WA0007.jpg', 57369, 'jpg'),
(475, '2018-03-11 08:53:19', 'tryout_sbmptn', 1, 'anisaputrinabilah@gmail.com', 'Ahmad fauzi', '20180311_154945-1-1.jpg', 2051230, 'jpg'),
(476, '2018-03-11 11:28:55', 'tryout_sbmptn', 1, 'mutiarafadhilla12@gmail.com', 'Dedi tjahyadi', 'IMG-20180311-WA0050.jpg', 32450, 'jpg'),
(478, '2018-03-12 02:18:37', 'workshop', 0, 'princesszbina23@gmail.com', 'Agus Syamsu', 'IMG-20180308-WA0000.jpg', 79330, 'jpg'),
(479, '2018-03-12 02:56:47', 'olimpiade', 0, 'Indrirahman291@gmail.com', 'ILHAM ARIESANDI ', '1520823057758.jpg', 151690, 'jpg'),
(480, '2018-03-12 04:06:39', 'tryout_sbmptn', 2, 'desilestari030600@gmail.com', 'Komariah', 'IMG-20180312-WA0001.jpg', 67943, 'jpg'),
(481, '2018-03-12 05:38:38', 'tryout_sbmptn', 2, 'akbarpiss83@gmail.com', 'Putri Lestari', 'IMG-20180308-WA0023-1.jpg', 85294, 'jpg'),
(482, '2018-03-12 05:38:57', 'tryout_sbmptn', 2, 'nuriyaah10@gmail.com', 'Harwati', 'IMG-20180312-WA0024.jpg', 75115, 'jpg'),
(483, '2018-03-12 06:54:09', 'olimpiade', 0, 'catoserik@gmail.com', 'Ilham Ariesandi', '1520837496088.jpg', 151690, 'jpg'),
(484, '2018-03-12 07:12:15', 'workshop', 0, 'ahmadpermail@gmail.com', 'AHMAD TRIAWAN', 'Screenshot_2018-03-12-14-10-47-513_com.BDI.mobile.png', 102322, 'png'),
(485, '2018-03-12 07:34:35', 'tryout_sbmptn', 1, 'dewipekerti@gmail.com', 'Indra Rudyta Ruben', '4efa1c5d-bedd-4fb4-8c4f-7f48415c6636.jpg', 59563, 'jpg'),
(486, '2018-03-12 07:57:09', 'olimpiade', 0, 'nabilaamaliakinanti09@gmail.com', 'ILHAM ARIESANDI', '1520823022310.jpg', 151690, 'jpg'),
(487, '2018-03-12 09:33:30', 'olimpiade', 0, 'nabilalarasarum55@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006.jpg', 76351, 'jpg'),
(488, '2018-03-12 09:36:14', 'olimpiade', 0, 'puanhaliza04@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-1.jpg', 76351, 'jpg'),
(489, '2018-03-12 09:37:36', 'olimpiade', 0, 'adhitdn11@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-2.jpg', 76351, 'jpg'),
(490, '2018-03-12 09:39:16', 'olimpiade', 0, 'desian95@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-3.jpg', 76351, 'jpg'),
(491, '2018-03-12 09:40:35', 'olimpiade', 0, 'erikodarmawan1@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-4.jpg', 76351, 'jpg'),
(492, '2018-03-12 09:42:12', 'olimpiade', 0, 'gifariilman79@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-5.jpg', 76351, 'jpg'),
(493, '2018-03-12 09:43:44', 'olimpiade', 0, 'sintiacatur7@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-6.jpg', 76351, 'jpg'),
(494, '2018-03-12 09:45:11', 'olimpiade', 0, 'Ghoz.D.alif@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-7.jpg', 76351, 'jpg'),
(495, '2018-03-12 09:46:54', 'olimpiade', 0, 'ainunmardhiyyah08@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-8.jpg', 76351, 'jpg'),
(496, '2018-03-12 09:48:10', 'olimpiade', 0, 'adoniar14@gmail.com', 'adhitya dwi nugraha', 'IMG-20180312-WA0006-9.jpg', 76351, 'jpg'),
(497, '2018-03-12 11:33:09', 'olimpiade', 0, 'rubens.juristanto@gmail.com', 'Josep', '1520774345219.jpg', 94616, 'jpg'),
(498, '2018-03-12 12:38:16', 'olimpiade', 0, 'nabil.fajari.rabbani@gmail.com', 'Ilham Ariesandi', 'Screenshot_20180312-193544.jpg', 660172, 'jpg'),
(499, '2018-03-12 13:14:58', 'tryout_sbmptn', 2, 'fanyamany@gmail.com', '0509-01-045951-50-1', 'IMG-20180312-WA0009.jpg', 74078, 'jpg'),
(500, '2018-03-12 23:27:23', 'tryout_sbmptn', 2, 'shofiatulafkar31@gmail.com', 'Yamanurdin', '1519039380573-1.jpg', 76296, 'jpg'),
(501, '2018-03-12 23:29:20', 'tryout_sbmptn', 2, 'putrinurhayat.pn@gmail.com', 'Yamanurdin', '1519039380573-2.jpg', 76296, 'jpg'),
(502, '2018-03-13 00:49:55', 'tryout_sbmptn', 2, 'prasetyoaji108@gmail.com', 'Rizki Dini Febri Anggraini', 'IMG-20180312-WA0004.jpg', 289834, 'jpg'),
(503, '2018-03-13 02:40:21', 'tryout_sbmptn', 2, 'janishylll13@gmail.com', 'siti rukayah', 'a758c480-12ea-42ed-9f89-cbff520d9814.jpg', 57438, 'jpg'),
(504, '2018-03-13 02:55:49', 'tryout_sbmptn', 2, 'salsabila.nursyifa@yahoo.com', 'Aisyah agna putri', 'IMG-20180313-WA0003.jpg', 59393, 'jpg'),
(505, '2018-03-13 08:23:06', 'olimpiade', 0, 'agungwk404@gmail.com', 'Ilham Ariesandi', 'Screenshot_20180312-193544-1.jpg', 660172, 'jpg'),
(506, '2018-03-13 10:31:04', 'tryout_sbmptn', 1, 'Snurjanahfirmansyah@gmail.com', 'Suryansyah', 'IMG-20180313-WA0000.jpg', 73775, 'jpg'),
(507, '2018-03-13 10:32:03', 'tryout_sbmptn', 1, 'fbbydh124@gmail.com', 'Suryansyah', 'IMG-20180313-WA0007.jpg', 73775, 'jpg'),
(508, '2018-03-13 10:33:28', 'tryout_sbmptn', 1, 'renisahnuricha@gmail.com', 'Suryansyah', 'IMG-20180313-WA0001.jpg', 73775, 'jpg'),
(509, '2018-03-13 10:56:53', 'tryout_sbmptn', 2, 'gustimayapangesti03@gmail.com', 'Eka setiawan', 'IMG_20180313_175524.jpg', 1561175, 'jpg'),
(510, '2018-03-13 11:31:06', 'tryout_sbmptn', 2, 'ps_ajeng@yahoo.com', 'Ajeng Putriafni S.', '1520940516479.jpg', 65330, 'jpg'),
(511, '2018-03-13 12:00:11', 'tryout_sbmptn', 1, 'rinda.10vo@gmail.com', 'Suryansyah', 'bukti_pembayaran', 73775, ''),
(512, '2018-03-13 12:16:28', 'tryout_sbmptn', 2, 'Izzahashabi@gmail.com', 'Slamet', 'Screenshot_2018-03-13-19-15-17-72.png', 453868, 'png'),
(513, '2018-03-13 12:35:27', 'tryout_sbmptn', 2, 'aulia061199@gmail.com', 'rizki aulia', '20180313_192708.jpg', 1997246, 'jpg'),
(514, '2018-03-13 13:13:10', 'tryout_sbmptn', 2, 'alifianna28@gmail.com', 'suryansyah', 'IMG-20180313-WA0002.jpg', 73775, 'jpg'),
(515, '2018-03-13 13:13:50', 'tryout_sbmptn', 1, 'maylisacorry35@gmail.com', 'Suryansyah', '208AF2C7-E201-47D4-A8FB-8AE291B6971F.jpeg', 73775, 'jpeg'),
(516, '2018-03-13 14:06:21', 'tryout_sbmptn', 1, 'fahmr710@gmail.com', 'Robbi Hilaludin', 'IMG-20180313-WA0020.jpg', 84972, 'jpg'),
(517, '2018-03-13 15:55:13', 'tryout_sbmptn', 1, 'ramadak18@gmail.com', 'Akmal Ramadhan', 'IMG_20180313_224458.jpg', 1770764, 'jpg'),
(518, '2018-03-13 21:30:58', 'tryout_sbmptn', 2, 'nisaamalia900@gmail.com', 'Robiyatul adawiyah', 'LINE_1518328055535.png', 27342, 'png'),
(519, '2018-03-13 22:51:04', 'tryout_sbmptn', 2, 'nailanattya00@gmail.com', 'Farid novel', 'IMG-20180314-WA0001.jpg', 48124, 'jpg'),
(520, '2018-03-14 00:38:26', 'olimpiade', 0, 'tistaimamriyadi@gmail.com', 'sman 1 jakarta hilyatul', 'IMG-20180307-WA0000.jpg', 30569, 'jpg'),
(521, '2018-03-14 14:29:10', 'tryout_sbmptn', 2, 'gkaifas18@gmail.com', 'Annisa Nurliani', '1521037227545.jpg', 40069, 'jpg'),
(522, '2018-03-14 15:19:32', 'tryout_sbmptn', 2, 'Knur9443@gmail.com', 'Slamet', 'IMG-20180116-WA0004-2-1.jpg', 83033, 'jpg'),
(523, '2018-03-14 15:24:14', 'tryout_sbmptn', 2, 'Jeilabilla@gmail.com', 'Ayurahayu', 'IMG-20180203-WA0006-1.jpg', 77185, 'jpg'),
(524, '2018-03-14 15:27:15', 'tryout_sbmptn', 1, 'ameliarismafauji87@gmail.com', 'Erni sri wahyuningsih', '1517922054387-1.jpg', 87003, 'jpg'),
(525, '2018-03-14 22:47:12', 'tryout_sbmptn', 1, 'sucifadilah70@gmail.com', 'Apriani', 'TMPDOODLE1521065413523.jpg', 267279, 'jpg'),
(526, '2018-03-15 04:14:10', 'tryout_sbmptn', 1, 'aidanurulasni@gmail.com', 'Transfertanparekening', 'IMG-20180315-WA0000.jpg', 121838, 'jpg'),
(527, '2018-03-15 07:24:26', 'tryout_sbmptn', 1, 'putrinuralia75@gmail.com', 'Fatimah rahma asari', 'IMG-20180315-WA0030.jpg', 78581, 'jpg'),
(528, '2018-03-15 09:47:39', 'tryout_sbmptn', 1, 'leearin24@gmail.com', 'apriani', 'IMG-20180314-WA0000.jpg', 140712, 'jpg'),
(529, '2018-03-15 10:43:52', 'tryout_sbmptn', 2, 'reihannazilla1@gmail.com', 'rusdi', 'TMPDOODLE1521110580063.jpg', 353601, 'jpg'),
(530, '2018-03-15 10:54:17', 'tryout_sbmptn', 1, 'hanidahafifah@gmail.com', 'Jumartaleni', '1521110962361.jpg', 92883, 'jpg'),
(531, '2018-03-15 12:55:24', 'tryout_sbmptn', 1, 'rahmatpratama90@yahoo.com', 'Siti Arini ', '1578.jpg', 75398, 'jpg'),
(532, '2018-03-15 14:28:56', 'tryout_sbmptn', 1, 'syifamaulidap03@gmail.com', 'Dul Wahid', '655C6488-7A6B-402A-BE7D-3E05D4E3E244.jpeg', 129836, 'jpeg'),
(533, '2018-03-15 14:43:34', 'tryout_sbmptn', 1, 'Nazlila.maysifa20@gmail.com', 'Dul Wahid', '9CF3B86B-F0B8-4DFD-82A1-5B587C4F5E2C.jpeg', 129836, 'jpeg'),
(534, '2018-03-15 14:57:10', 'tryout_sbmptn', 2, 'nblhpk@gmail.com', 'Wigiyanti', 'IMG-20180210-WA0017-1.jpeg', 776720, 'jpeg'),
(535, '2018-03-15 15:02:34', 'tryout_sbmptn', 2, 'nurainiwidad17@gmail.com', 'Daud Yusuf S Ag', 'IMG-20180215-WA0003-3-1.jpg', 323721, 'jpg'),
(536, '2018-03-16 02:46:09', 'tryout_sbmptn', 2, 'farhanwalker106@gmail.com', 'Muhamad riyan anwar syah', 'IMG-20180315-WA0022.jpg', 48268, 'jpg'),
(537, '2018-03-16 03:47:33', 'tryout_sbmptn', 2, 'rorojihan038@gmail.com', 'Henry Dwi A', 'IMG-20180312-WA0013.jpg', 56496, 'jpg'),
(538, '2018-03-16 05:42:22', 'tryout_sbmptn', 1, 'hzaningsih1203@gmail.com', 'agus winarto', 'IMG-20180316-WA0036.jpg', 50016, 'jpg'),
(539, '2018-03-16 05:59:50', 'tryout_sbmptn', 1, 'yennithashya66792@gmail.com', 'Apriani', 'IMG-20180316-WA0002.jpg', 146235, 'jpg'),
(540, '2018-03-16 07:16:00', 'tryout_sbmptn', 2, 'anggioktafia06@gmail.com', 'Rizki dini febri angraeni', 'IMG-20180316-WA0026.jpg', 134087, 'jpg'),
(541, '2018-03-16 07:18:54', 'tryout_sbmptn', 1, 'hana.huwai@gmail.com', 'Nena Kurnia Ningrum', 'IMG_20180316_141721.jpg', 82321, 'jpg'),
(542, '2018-03-16 07:38:12', 'tryout_sbmptn', 1, 'khansamuthiah23@gmail.com', 'Marlis', '1521185742233-1129460023.jpg', 839407, 'jpg'),
(543, '2018-03-16 08:02:22', 'tryout_sbmptn', 2, 'maulana2906@gmail.com', 'Rizki Dini Febri Anggraeni', 'IMG-20180316-WA0001.jpg', 134087, 'jpg'),
(544, '2018-03-16 08:04:33', 'tryout_sbmptn', 2, 'Fahrul.risky28@gmail.com', 'Rizki dini febri anggraeni', 'SAVE_20180316_150313.jpeg', 183659, 'jpeg'),
(545, '2018-03-16 08:06:53', 'tryout_sbmptn', 2, 'qorifebrianto@gmail.com', 'Qori Febrianto', 'IMG-20180316-WA0001-1.jpg', 134087, 'jpg'),
(546, '2018-03-16 08:09:15', 'tryout_sbmptn', 1, 'ilhampauji56@gmail.com', 'Ilham pauji', 'IMG-20180316-WA0009.jpg', 169234, 'jpg'),
(547, '2018-03-16 08:50:48', 'tryout_sbmptn', 1, 'Vckalkahfi@gmail.com', 'Vicky alkahfi', 'AA7E275A-8A09-4E25-B3FC-85AEB5586E7E.jpeg', 119320, 'jpeg'),
(548, '2018-03-16 08:51:44', 'tryout_sbmptn', 2, 'gilangkuy070199@gmail.com', 'Gilang ramadhan', '09E06DBF-1549-495E-8163-00BFA8AC6541.jpeg', 114834, 'jpeg'),
(549, '2018-03-16 09:42:13', 'tryout_sbmptn', 2, 'alyashabr@gmail.com', 'Suryansyah', 'IMG-20180313-WA0007-1.jpg', 73775, 'jpg'),
(550, '2018-03-16 21:23:06', 'olimpiade', 0, 'kinantiaulia72@gmail.com', 'Muhammad irfan nazih', 'IMG-20180311-WA0006.jpg', 88924, 'jpg'),
(551, '2018-03-16 21:24:53', 'olimpiade', 0, 'dimavadya@gmail.com', 'Muhammad irfan nazih', 'IMG-20180311-WA0006-1.jpg', 88924, 'jpg'),
(552, '2018-03-16 21:26:00', 'olimpiade', 0, 'litaaisyah0@gmail.com', 'Muhammad irfan nazih', 'IMG-20180311-WA0006-2.jpg', 88924, 'jpg'),
(553, '2018-03-16 21:27:35', 'olimpiade', 0, 'pujiastuti.prast@gmail.com', 'Muhammad irfan nazih', 'IMG-20180311-WA0006-3.jpg', 88924, 'jpg'),
(554, '2018-03-16 21:32:11', 'olimpiade', 0, 'aisyah.rachman@yahoo.com', 'Bank Central Asia Customer', 'IMG-20180312-WA0009.jpg', 95690, 'jpg'),
(555, '2018-03-16 21:40:40', 'olimpiade', 0, 'angelicasoraya171@gmail.com', 'Hilyatul Luthfiyah', 'IMG-20180307-WA0000-1.jpg', 30569, 'jpg'),
(556, '2018-03-16 21:42:25', 'olimpiade', 0, 'edwinario02@gmail.com', 'Hilyatul Luthfiyah', 'IMG-20180307-WA0000-2.jpg', 30569, 'jpg'),
(557, '2018-03-16 21:43:44', 'olimpiade', 0, 'kurniawansantoso123@gmail.com', 'Hilyatul Luthfiyah', 'IMG-20180307-WA0000-3.jpg', 30569, 'jpg'),
(558, '2018-03-18 02:51:14', 'olimpiade', 0, 'ajitubagusmaulana.alstar36@gmail.com', 'Yuli Yulianti', 'IMG-20180307-WA0003__1_.jpg', 75838, 'jpg'),
(559, '2018-03-20 10:34:08', 'workshop', 0, 'iffahsilmi30@gmail.com', 'Ari Maryadi', 'IMG-20180320-WA0050.jpg', 157571, 'jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `olimpiade_parsial`
--

CREATE TABLE `olimpiade_parsial` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_daftar` date NOT NULL,
  `nama` varchar(32) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `sekolah` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `nama_pemb` varchar(32) NOT NULL,
  `no_hp_pemb` varchar(15) NOT NULL,
  `file_name` varchar(32) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_type` varchar(32) NOT NULL,
  `pembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `olimpiade_parsial`
--

INSERT INTO `olimpiade_parsial` (`id`, `time`, `tgl_daftar`, `nama`, `tempat_lahir`, `tgl_lahir`, `alamat`, `sekolah`, `email`, `no_hp`, `nama_pemb`, `no_hp_pemb`, `file_name`, `file_size`, `file_type`, `pembayaran`) VALUES
(9, '2018-01-15 11:53:16', '2018-01-15', 'Rosita Nurcahyati', 'Bekasi', '2000-05-29', 'Kp.Lemah abang', 'MAN 1 Bekasi', 'rositanurcahyati66@gmail.com', '089666196872', 'Milda saputra', '+6282111677897', '', 0, '', ''),
(10, '2018-02-01 07:33:21', '2018-02-01', 'Ervina Setyani', 'Jakarta', '2001-03-31', 'Jalan Kesehatan 6 dalam RT.007/011 No. 8, kecamatan Pesanggrahan, Kelurahan Bintaro', 'SMK AVERUS', 'setianiervina059@gmail.com', '083876940457', 'Vemia Indah Manidar, S.Pd.', '081294325251', '', 0, '', ''),
(11, '2018-02-28 08:30:58', '2018-02-28', 'EDWIN ARIO', 'JAKARTA', '2002-06-27', 'JL. PASAR GAPLOK NO 67C', 'SMAN 1 JAKARTA ', 'edwinario02@gmail.com', '08988377835', 'Tista Imam ', '085782717931', 'IMG-20180316-WA0000-1.jpg', 152003, 'jpg', 'Lunas'),
(12, '2018-02-28 08:35:02', '2018-02-28', 'ANGELINE CALYSTA', 'TANGERANG', '2002-10-26', 'JL.KH HASYIM ASHARI NO 140A', 'SMAN 1 JAKARTA', 'tistaimamriyadi@gmail.com', '081318885472', 'Tista Imam', '085782717931', 'IMG_20180314_065206.jpg', 0, 'jpg', 'Lunas'),
(13, '2018-02-28 08:39:43', '2018-02-28', 'ANGELICA SORAYA', 'JAKARTA', '2001-07-01', 'JL KEBON KOSONG X NO 172', 'SMAN 1 JAKARTA', 'angelicasoraya171@gmail.com', '081314916901', 'Tista Imam', '085782717931', 'IMG-20180316-WA0000.jpg', 152003, 'jpg', 'Lunas'),
(14, '2018-03-03 12:15:34', '2018-03-03', 'Nurhadisah', 'Depok', '2001-01-22', 'Jl.PLN Raya Rt11/05', 'SMK AL HIDAYAH LESTARI', 'hadisahh@gmail.com', '081386135707', 'Pitri Yulianti', '089683958144', 'IMG-20180308-WA0004.jpg', 97224, 'jpg', 'Lunas'),
(15, '2018-03-03 12:21:29', '2018-03-03', 'Azis Pahrudin', 'Sukabumi', '2001-05-13', 'Jl.H.Irin Lebak Bulus', 'SMK AL HIDAYAH LESTARI', 'Aziispahr@gmail.com', '085886207535', 'Pitri Yulianti', '089683958144', 'IMG-20180308-WA0004-1.jpg', 97224, 'jpg', 'Lunas'),
(16, '2018-03-03 12:22:55', '2018-03-03', 'Nurdiansyah', 'Jakarta', '2000-11-18', 'Jl.Kubus III Pondok Cabe', 'SMK AL HIDAYAH LESTARI', 'nariomah@gmail.com', '0895410564260', 'Yuli Yulianti', '089643572817', 'IMG-20180308-WA0004-2.jpg', 97224, 'jpg', 'Lunas'),
(17, '2018-03-03 12:28:16', '2018-03-03', 'Widya Rahma', 'Jakarta', '2002-08-30', 'Jl.Talas III Gg.labu Pondok Cabe Liir', 'SMK AL HIDAYAH LESTARI', 'pitriyulianti1@gmail.com', '085692166801', 'Yuli Yulianti', '089643572817', 'IMG-20180308-WA0004-3.jpg', 97224, 'jpg', 'Lunas'),
(18, '2018-03-03 12:32:28', '2018-03-03', 'Rizki Evita', 'Tangerang', '2000-09-10', 'cireundeu', 'SMK AL HIDAYAH LESTARI', 'Rizkievita.alstar@gmail.com', '089628709127', 'Pitri Yulianti', '089683958144', 'IMG-20180308-WA0004-4.jpg', 97224, 'jpg', 'Lunas'),
(19, '2018-03-04 10:44:22', '2018-03-04', 'ACHMAD HANIF MUSLIM', 'TRENGGALEK', '0000-00-00', 'RT 09 RW 03 DS/KEC GANDUSARI TRENGGALEK', 'SMAN 1 TRENGGALEK', 'HANIFAHM240@GMAIL.COM', '0857312956', 'SETIYARINI', '085735294321', '', 0, '', ''),
(20, '2018-03-06 08:21:07', '2018-03-06', 'Yvette celia aviani', 'Bekasi', '2001-11-15', 'Pesona anggrek d4 no 4', 'Sman 4 bekasi', 'yvetteaviani@gmail.com', '089658291407', 'Risma', '081808678506', '170375.jpg', 71994, 'jpg', 'Lunas'),
(21, '2018-03-06 10:45:33', '2018-03-06', 'Nabila Amalia Kinanti', 'Purbalingga', '2002-09-09', 'Jalan KS Tubun Gg Mawar No. 85', 'SMAN 4 Kota Tangerang', 'nabilaamaliakinanti09@gmail.com', '081316174909', 'Ilham Ariesandi, S. Si', '08176562576', '1520823296944.jpg', 219536, 'jpg', 'Lunas'),
(22, '2018-03-06 10:48:10', '2018-03-06', 'Indri Rahman', 'Tangerang', '2002-06-29', 'KP. Galeong RT 002/007', 'SMAN 4 Kota Tangerang', 'indrirahman291@gmail.com', '081383452707', 'Ilham Ariesandi, S. Si', '08176562576', '1520823055519.jpg', 219536, 'jpg', 'Lunas'),
(23, '2018-03-06 10:52:06', '2018-03-06', 'Nabil Fajari Rabbani', 'Tangerang', '2002-06-09', 'Jl. Puri 2 Blok B11 No.26 Kotabumi', 'SMAN 4 Kota Tangerang', 'nabil.fajari.rabbani@gmail.com', '081289704347', 'Ilham Ariesandi, S. Si', '08176562576', 'Screenshot_20180312-193659.jpg', 809134, 'jpg', 'Lunas'),
(24, '2018-03-06 10:54:33', '2018-03-06', 'Agung Wahyu Kusuma ', 'Lumajang', '2002-02-14', 'Villa Regency 1 NB 12 No. 11 RW 17 RT 03, Gerbang Raya Periuk', 'SMAN 4 Kota Tangerang', 'agungwk404@gmail.com', '089653441502', 'Ilham Ariesandi, S. Si', '08176562576', 'Screenshot_20180312-193659-1.jpg', 809134, 'jpg', 'Lunas'),
(25, '2018-03-06 10:55:41', '2018-03-06', 'Erik Catos Lawijaya', 'Tangerang', '2001-12-02', 'Jalan Benteng Jaya No. 67 Tangerang', 'SMAN 4 Kota Tangerang', 'catoserik@gmail.com', '087888740921', 'Ilham Ariesandi, S. Si', '08176562576', '1520837495081.jpg', 219536, 'jpg', 'Lunas'),
(26, '2018-03-06 12:49:34', '2018-03-06', 'Rubens Juristanto', 'bekasi', '2002-09-04', 'Alinda Kencana 2 blok c2 no 15', 'sman 4 bekasi', 'rubens.juristanto@gmail.com', '081295785550', 'risma agdayant', '081808678506', 'IMG_20180312_183108.jpg', 0, 'jpg', 'Lunas'),
(27, '2018-03-06 14:34:00', '2018-03-06', 'Machffud Tra Harana Vova', 'bekasi', '2000-10-21', 'RT 05/02, No. 90, Kel. Teluk Pucung, Kec. Bekasi Utara', 'SMAN 4 Bekasi', 'machffud.thv@gmail.com', ' 081290418669', 'Risma Agdayant', '081808678506', 'IMG-20180310-WA0018.jpg', 137677, 'jpg', 'Lunas'),
(28, '2018-03-07 02:48:32', '2018-03-07', 'Kurniawan Santoso', 'Jakarta', '2001-10-05', 'Kramat pulo dalam 2', 'SMAN 1 Jakarta', 'kurniawansantoso123@gmail.com', '0851212901221', 'Tista Imam', '085782717931', 'IMG-20180316-WA0000-2.jpg', 152003, 'jpg', 'Lunas'),
(29, '2018-03-07 08:20:22', '2018-03-07', 'Vania Adisaputri', 'Jakarta, 24 Juli 200', '2001-07-24', 'Jalan Winong No.5 Rt. 003 Rw. 03, Sudimara Jaya,  Ciledug,  Kota Tangerang', 'SMAN 112 JAKARTA', 'vaniadisa@gmail.com', '082114460378', 'Nanang Maulana S. ', '085697534838', 'P_20180310_214739.jpg', 1182656, 'jpg', 'Lunas'),
(30, '2018-03-07 09:53:17', '2018-03-07', 'Intan Puspita Sari', 'Jakarta', '2001-05-17', 'Jl Tawang mangu no. 33, cengkareng, jakarta barat', 'SMA Negeri 112 Jakarta', 'puspitasariintan1717@gmail.com', '087784862117', 'Nanang Maulana', '085697534838', '1520666796723-478570575.jpg', 602910, 'jpg', 'Lunas'),
(31, '2018-03-07 14:42:01', '2018-03-07', 'Armelia Ramandha', 'Bekasi', '2001-12-15', 'Harapan Indah 2. Blok HM3/23. Bekasi. Jawa Barat.', 'SMAN 4 Kota Bekasi', 'armeliaramand@gmail.com', '+6281381547127', 'Risma Agdayanti', '+6281381547127', '20180310_190935.jpg', 697335, 'jpg', 'Lunas'),
(33, '2018-03-11 04:55:44', '2018-03-11', 'Nabila Laras Arum', 'Majalengka', '2002-01-17', 'Jl. Elang Raya Rt 004/ Rw 003 Kel. Sawah Kec. Ciputat- TangSel', 'SMA Negeri 1 Kota Tangerang Sela', 'nabilalarasarum55@gmail.com', '085813981753', 'Yusuf Shodiqin S.pd', '089664028495', 'IMG-20180312-WA0005.jpg', 117002, 'jpg', 'Lunas'),
(34, '2018-03-11 05:49:10', '2018-03-11', 'Puan Haliza Lintang Putri', 'Jakarta', '2003-01-04', 'Jl. Irian Blok L. 15 NO. 2, Nusaloka BSD Serpong Tangerang Selatan', 'SMAN 1 KOTA TANGERANG SELATAN', 'puanhaliza04@gmail.com', '082299259313', 'Yusuf Sodhiqin S. Pd', '089664028495', 'IMG-20180312-WA0005-1.jpg', 117002, 'jpg', 'Lunas'),
(35, '2018-03-11 05:55:48', '2018-03-11', 'Adhitya Dwi Nugraha', 'Jakarta', '2001-01-11', 'Jl. Komplek Deplu 74 Blok A-7 Pondok Aren, Tangerang Selatan', 'SMAN 1 TANGERANG SELATAN', 'adhitdn11@gmail.com', '082261621822', 'Yusuf Sodhiqin, S.Pd', '089664028495', 'IMG-20180312-WA0005-2.jpg', 117002, 'jpg', 'Lunas'),
(36, '2018-03-11 06:44:20', '2018-03-11', 'Annisa Desiana Fithri Andyani', 'Jakarta', '2001-12-02', 'Komplek kejaksaan jalan cipunegara XIV no 25 cipayung ciputat', 'SMAN 1 Kota Tangerang Selatan', 'desian95@gmail.com', '081210329277', 'Yusuf sodhiqin, S.Pd', '089664028495/08', 'IMG-20180312-WA0005-3.jpg', 117002, 'jpg', 'Lunas'),
(37, '2018-03-11 06:50:33', '2018-03-11', 'Eriko Darmawan', 'Tangerang', '2001-02-01', 'Perumahan Wismamas b3/9 Cinangka,Sawangan,Depok', 'SMA N 1 Tangerang Selatan', 'erikodarmawan1@gmail.com', '087881622596', 'Yusuf Sodhiqin.S.pd', '089664028495', 'IMG-20180312-WA0005-4.jpg', 117002, 'jpg', 'Lunas'),
(38, '2018-03-11 07:13:20', '2018-03-11', 'Ilman gifari', 'Tangerang', '2001-12-30', 'Jalan Masjid Fatahillah 41 . Sudimara Timur, Ciledug', 'SMAN 1 Tangerang Selatan', 'gifariilman79@gmail.com', '085691331287', 'Yusuf Shodiqin S.Pd', '089664028495', 'IMG-20180312-WA0005-5.jpg', 117002, 'jpg', 'Lunas'),
(39, '2018-03-11 07:24:24', '2018-03-11', 'Sintia', 'Tangerang', '2003-01-28', 'Jalan Angsana 1 RT 03/08 No. 36 Pamulang Timur', 'SMAN 1 Tangerang Selatan', 'sintiacatur7@gmail.com', '085218352817', 'Yusuf Sodhiqin, S.Pd', '089664028495', 'IMG-20180312-WA0005-6.jpg', 117002, 'jpg', 'Lunas'),
(40, '2018-03-11 07:34:27', '2018-03-11', 'Ghozy alif dharmawan', 'Jakarta', '2002-01-05', 'Villa bintaro regency blok k1/26', 'Sman 1 tangsel', 'Ghoz.D.alif@gmail.com', '081291188582', 'Yusuf sodhiqin', '089664028495', 'IMG-20180312-WA0005-7.jpg', 117002, 'jpg', 'Lunas'),
(41, '2018-03-11 09:39:00', '2018-03-11', 'Ainun Mardhiyyah', 'Jakarta', '2001-06-08', 'Komplek Arinda Permai II Jl. Meranti blok F4 no. 12 RT 08 RW 07 Pondok Aren', 'SMA Negeri 1 Tangerang Selatan', 'ainunmardhiyyah08@gmail.com', '087796593197', 'Yusuf Shodiqin', '089664028495', 'IMG-20180312-WA0005-8.jpg', 117002, 'jpg', 'Lunas'),
(42, '2018-03-11 13:37:01', '2018-03-11', 'Nur Aisyah Rachman', 'Bekasi', '2001-07-29', 'Harapan baru raya blok I7 no.3', 'MAN 18 Jakarta', 'aisyah.rachman@yahoo.com', '0859-2155-7754', 'Sumaryati ', '0858-8785-2290', 'IMG-20180314-WA0002.jpg', 104957, 'jpg', 'Lunas'),
(43, '2018-03-12 00:53:38', '2018-03-12', 'Ananda Kinanti Aulia Savitri', 'Jakarta', '2000-09-24', 'Jl Mampang Prapatan 11', 'MA Sa\'adatuddarain', 'kinantiaulia72@gmail.com', '087881264770', 'Pujiastuti', '085224196020', 'IMG-20180313-WA0000.jpg', 102464, 'jpg', 'Lunas'),
(44, '2018-03-12 00:57:05', '2018-03-12', 'dima vadya', 'Jakarta', '2001-06-21', 'Jl Mampang Prapatan 5 gg h.m nur amat no 49 F', 'MA Sa\'adatuddarain Jakarta', 'dimavadya@gmail.com', '085805767631', 'Pujiastuti', '085224196020', 'IMG-20180313-WA0000-1.jpg', 102464, 'jpg', 'Lunas'),
(45, '2018-03-12 01:01:13', '2018-03-12', 'Lita Aisyah', 'Maumere', '2001-12-26', 'Jl Mampamg Prapatan XIII No 11C', 'MA Sa\'adatuddarain', 'litaaisyah0@gmail.com', '082211272373', 'Pujiastuti', '085224196020', 'IMG-20180313-WA0000-2.jpg', 102464, 'jpg', 'Lunas'),
(46, '2018-03-12 05:25:52', '2018-03-12', 'Rima Septiani', 'Tasikmalaya', '2001-09-26', 'Jl Mampang Prapatan gg Jati Rt 004/01 No 29', 'MA Sa\'adatuddarain', 'pujiastuti.prast@gmail.com', '0895326633064', 'Pujiastuti', '085224196021', 'IMG-20180313-WA0000-3.jpg', 102464, 'jpg', 'Lunas'),
(47, '2018-03-12 08:05:20', '2018-03-12', 'Ruth Adonia Novianty', 'Jakarta', '2001-11-14', 'Jl.H.Saimin Pd Cabe Ilir No.25', 'SMAN 1 TANGERANG SELATAN', 'adoniar14@gmail.com', '083817175468', 'Yusuf Sodiqin', '087838158789', 'IMG-20180312-WA0005-9.jpg', 117002, 'jpg', 'Lunas'),
(48, '2018-03-13 04:39:57', '2018-03-13', 'Gracia Anastasya', 'Jakarta', '2002-04-10', 'Jl. Cibadak No. 46 RT. 01/RW. 08 Kel. Rawa Badak Utara, Kec. Koja, Jakarta Utara', 'SMAN Unggulan M.H. Thamrin', 'gracianastasyaa@gmail.com', '085819219418', 'Pa Nasuki', '08111111871', '', 0, '', ''),
(49, '2018-03-13 13:19:32', '2018-03-13', 'Vicky Alkahfi', 'Jakarta', '1999-11-02', 'Jl. Kavling 1 rt 006/001 kec cipayung jaktim', 'SMK Analisis kimia TH', 'vckalkahfi@gmail.com', '081317797487', 'Aulia asyiva', '082288294620', '', 0, '', ''),
(50, '2018-03-17 06:21:45', '2018-03-17', 'Aji Tubagus Maulana', 'Kuningan', '2001-09-07', 'Jl.taman sari I Karang tengah', 'SMK Al Hidayah Lestari', 'ajitubagusmaulana.alstar36@gmail.com', '081514119269', 'Pitri Yulianti', '089683958144', 'IMG-20180316-WA0004.jpg', 71361, 'jpg', 'Lunas'),
(51, '2018-03-18 09:20:41', '2018-03-18', 'Syalsabilla Putri Andriani', 'Jakarta', '2001-12-30', 'Jalan Terbang Layang No. 21, Pondok Cabe Udik, Pamulang, Pondok Cabe Udik, Pamulang, Kota Tangerang Selatan, Banten 15418', 'SMA Kharisma Bangsa', 'antonoendro@gmail.com', '085876368647', 'Endro Antono', '085876368647', '', 0, '', ''),
(52, '2018-03-18 09:28:31', '2018-03-18', 'Aprilia Paramitha Dwi Putri', 'Palu', '2002-04-07', 'Jalan Terbang Layang No. 21, Pondok Cabe Udik, Pamulang, Pondok Cabe Udik, Pamulang, Kota Tangerang Selatan, Banten 15418', 'SMA Kharisma Bangsa', 'Apriliapara492@gmail.com', '081343624292', 'Endro Antono', '085876368647', '', 0, '', ''),
(53, '2018-03-18 09:30:44', '2018-03-18', 'Rayhan Adnan Musthafa', 'Jakarta', '2002-08-15', 'Jalan Terbang Layang No. 21, Pondok Cabe Udik, Pamulang, Pondok Cabe Udik, Pamulang, Kota Tangerang Selatan, Banten 15418', 'SMA Kharisma Bangsa', 'antono_endro@kharismabangsa.sch.id', '085695154564', 'Endro Antono', '085876368647', '', 0, '', ''),
(54, '2018-03-18 09:34:59', '2018-03-18', 'Alfian Edgar Tjandra', 'Jakarta', '2001-04-03', 'Jalan Terbang Layang No. 21, Pondok Cabe Udik, Pamulang, Pondok Cabe Udik, Pamulang, Kota Tangerang Selatan, Banten 15418', 'SMA Kharisma Bangsa', 'ganbatteaisyah@gmail.com', '081314710010', 'Endro Antono', '085876368647', '', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `singcomp_parsial`
--

CREATE TABLE `singcomp_parsial` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_daftar` date NOT NULL,
  `nama_team` varchar(32) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `kampus_asal` varchar(32) NOT NULL,
  `alamat` text NOT NULL,
  `official` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(32) NOT NULL,
  `lagu` varchar(32) NOT NULL,
  `pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `singcomp_parsial`
--

INSERT INTO `singcomp_parsial` (`id`, `time`, `tgl_daftar`, `nama_team`, `genre`, `kampus_asal`, `alamat`, `official`, `email`, `no_hp`, `lagu`, `pembayaran`) VALUES
(8, '2017-12-10 15:58:33', '2017-12-10', 'Runi Sikah Seisabila', 'Solo Vocal', 'UIN Jakarta', 'Jl. Kerta mukti ciputat', '083813564271', 'sikahseisabila96@gmail.com', '083813564271', 'Dont let me down', ''),
(15, '2017-12-31 16:36:26', '2017-12-31', 'Raden Nafia Az-Zahra', 'Solo Vocal', 'Universitas Yarsi', 'Menara YARSI Kav. 13 Lt. 1, Jl. Letjen. Suprapto, RT. 10 / RW. 5, Senen, Cempaka Putih Timur, RT.10/RW.5, Cemp. Putih Tim., Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10410', 'Fanny FatimaTuzzahra', 'nafia.zahra16@gmail.com', '+6281513964392', 'Rossa -Aku Bukan Untukmu', 'Lunas'),
(16, '2018-01-01 17:17:02', '2018-01-01', 'Redflo', 'Group Vocal', 'Universitas Sriwijaya', 'Indralaya, Palembang', 'Ariefmukhtar.', 'arief.mukhtar@yahoo.com', '085779812348', 'Perfect - Ed Sheeran', ''),
(18, '2018-01-09 14:16:12', '2018-01-09', 'SALAMAT JHONNY', 'Solo Vocal', 'PT. Industrial Indonesia', 'Subang', 'SALAMAT JHONNY', 'salamatjhonny@gmail.com', '08119954266', 'MENYUSUL', ''),
(20, '2018-01-18 11:21:04', '2018-01-18', 'M. Rahmat Muntazar Ongky', 'Solo Vocal', 'Universitas bina nusantara', 'Apart green pramuka tower nerine 21 R8', 'M. Rahmat Muntazar Ongky', 'ongky_muntazarmahdi@yahoo.co.id', '082139647802', 'Terserah - glenn fredly', 'Lunas'),
(21, '2018-01-23 10:31:04', '2018-01-23', 'Cantika Auereal', 'Solo Vocal', 'SMA Kemala Bhayangkari 1', 'Jl Ampera raya Komplek Polri ', 'Instagram: cantikaauereal', 'chikafalencia@gmail.com', '+62 878 88059700', 'Sekali lagi isyana', 'Lunas'),
(25, '2018-01-25 13:02:01', '2018-01-25', 'Nia Listiani Aprilliani', 'Solo Vocal', 'UIN Syarif Hidayatullah Jakarta', 'Jalan Kertamukti No.5, Cireundeu, Ciputat Timur, Cireundeu, Ciputat Tim., Kota Tangerang Selatan, Banten 15419', '08995069824', 'nialstn@gmail.com', '08995069824', 'melayu-pop', ''),
(26, '2018-02-05 06:10:10', '2018-02-05', 'Seragri', 'Group Vocal', 'UIN Syaris Hidayatullah Jakarta', 'Jl. Ir. H. Juanda No.95 Ciputat 15412 Jakarta - Indonesia', 'windywindayy', 'cindrayustika@gmail.com', '089603105787', 'Sholawat Ba\'dar', ''),
(27, '2018-02-09 03:00:21', '2018-02-09', 'Maxi', 'Solo Vocal', 'Politeknik citra widya edukasi', 'Jl gapura no 8\r\n cibuntu, cibitung\r\nBekasi barat', '082166601282', 'feliagraciella12@gmail.com', '082166601282', 'Michael bubble - L.O.V.E', ''),
(29, '2018-02-17 05:13:23', '2018-02-17', 'The Blues', 'Group Vocal', 'Universitas Muhammadiyah Jakarta', 'Jl. Kh. Ahmad Dahlan Cirendeu, Ciputat Tangerang Selatan 15419', '085819067328', 'swagbebi@gmail.com', '081289493057', 'Ada Band ft Gita Gutawa - Yang T', 'Lunas'),
(30, '2018-02-17 17:21:14', '2018-02-18', 'Okky Hendrawan', 'Solo Vocal', 'SMAN 1 CIKARANG UTARA', 'Jl KH Dewantara Cikarang Utara, Bekasi', '0896 17121049', 'okkyhendrawan14@gmail.com', '089622030414', 'LISTEN - Beyonce', 'Lunas'),
(32, '2018-02-23 14:07:04', '2018-02-23', 'Huan Mahatir', 'Solo Vocal', 'SMAN 8 TANGSEL', 'Jl. Cireundeu Raya No.5 Ciputat Timur', 'line : diahftmh', 'diahftmh0603@gmail.com', '089681284897', 'Cakra khan - Kekasih Bayangan', 'Lunas'),
(33, '2018-02-24 06:13:34', '2018-02-24', 'Jihan Riqqy Fuadah', 'Solo Vocal', 'UMJ', 'Jakarta selatan, Ciputat ', '081286466451', 'jihanriqqy@gmail.com', '081286466451', 'Laksmana raja di laut', 'Lunas'),
(34, '2018-02-26 01:16:07', '2018-02-26', 'Tiara Melia Putri', 'Solo Vocal', 'Universitas pamulang', 'Jalan surya kencana pamulang tangerang selatan', '082210104899', 'putrimeliatiara@gmail.com', '082210104899', 'Sementara', ''),
(35, '2018-02-26 13:10:32', '2018-02-26', 'Annisa Ghalda Rahmawati', 'Solo Vocal', 'Universitas Negeri Jakarta', 'Jalan Rawamangun muka RT11/RW14 Jakarta Timur', 'Yudha Anggit', 'yyushifa49@gmail.com', '082299734966', 'Kecewa', 'Lunas'),
(36, '2018-02-27 03:24:26', '2018-02-27', 'vocal group SMAN 1 Jakarta ', 'Group Vocal', 'SMAN 1 Jakarta', 'jl. Budi Utomo No.7', 'arfa', 'arfaakusumo@gmail.com', '082121840117', '.', 'Lunas'),
(37, '2018-02-27 05:40:28', '2018-02-27', 'dhimaz aryo', 'Solo Vocal', 'UIN jakarta jurusan FKIK', 'Bukit Indah blok E1 no 12 pamulang 2', '085778597272', 'dhimazaryo@gmail.com', '085778597272', 'belum tau', 'Lunas'),
(38, '2018-02-27 05:43:57', '2018-02-27', 'Kezia Subandy', 'Solo Vocal', 'Universitas Bunda Mulia', 'Perumahan poris Indah Indah Blok F7 no 3 Tangerang', '081299126606', 'keziasubandy@gmail.com', '081299126606', 'I will always love you - whitney', ''),
(39, '2018-02-27 07:42:53', '2018-02-27', 'Tias Suci Lailani', 'Solo Vocal', 'UIN Jakarta', 'Perum. PT Semen Cibinong Jl. Mawar blok D7 cileungsi-bogor', 'Pipit', 'lailanitias12@gmail.com', '085887710997', 'Somewhere Over The Rainbow', ''),
(40, '2018-02-27 10:38:47', '2018-02-27', 'Delta Choir', 'Group Vocal', 'SMAN 8 TANGSEL', 'Jl. Cireundeu Raya No.5 Ciputat timur', 'id line : ffrraass ', 'finnirosya25@gmail.com', '085697832467', 'Cinta - Vina panduwinata', 'Lunas'),
(41, '2018-02-27 11:11:23', '2018-02-27', 'Fiqih Hardana Yuwanza', 'Solo Vocal', 'UNIVERSITAS AL AZHAR INDONESIA', 'jalan raden patah jakarta selatan', 'fiqih hardana yuwanza', 'fiqihhy@gmail.com', '082298047513', 'di atas meja ( payung teduh ) da', 'Lunas'),
(42, '2018-02-27 11:18:31', '2018-02-27', 'Nabila Kusuma', 'Solo Vocal', 'SMA ANGKASA 2 HALIM PERDANA KUSU', 'Jl Avia Halim Perdana Kusuma Jakarta Timur', '082112980086 / 081545171966', 'nabilakusuma.ws1@gmail.com', '082112980086 / 081545171966', 'Fallin - Alicia Keys', 'Lunas'),
(43, '2018-02-27 11:54:05', '2018-02-27', 'Caramel', 'Group Vocal', 'Himades', 'Cempaka Putih, Ciputat', 'Nungky', 'nungkykusumawati01@gmail.com', '089650207271', 'Bahagia - GAC', ''),
(44, '2018-02-27 15:58:51', '2018-02-27', 'Monju', 'Solo Vocal', 'UNJ', 'Jl. Rawamangun Muka, RT.11/RW.14, Rawamangun, RT.11/RW.14, Rawamangun, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13220', '087784664976', 'Monjuwit98@gmail.com', '087784664976', 'Doaku (Ayah Ibu)', ''),
(45, '2018-02-28 10:06:30', '2018-02-28', 'IslamicBanking', 'Group Vocal', 'UIN Syarif Hidayatullah JKT FEB', 'jl. Cempaka putih pisangan ciputat tangerang selatan', '085236838043', 'yogisaputra197@gmail.com', '085236838043', 'Just the way you are', ''),
(46, '2018-02-28 10:19:48', '2018-02-28', 'Appocalipse', 'Group Vocal', 'UIN Syarif Hidayatullah', 'Jl. Ir. H. Djuanda No. 95, Ciputat, Kota Tangerang Selatan, Banten 15412', '087884365865', 'puay1304@gmail.com', '087884365865', 'just the way you are', 'Lunas'),
(47, '2018-02-28 14:00:51', '2018-02-28', 'Indah noviyanto', 'Solo Vocal', 'UIN Jakarta', 'Jl. H. Ir Juanda', '087875719418', 'indahnoviyanto089@gmail.com', '087875719418', 'Gravity-sara bareilles', 'Lunas'),
(48, '2018-02-28 15:33:16', '2018-02-28', 'Mediasi', 'Group Vocal', 'HMJ Akuntansi UIN', 'Jl. Ir. H. Djuanda, Ciputat, Tanggerang Selatan, Banten', '081399102343', 'febrianto.fauzan17@gmail.com', '081399102343', 'The Rollies - Dansa Yok Dansa', ''),
(49, '2018-02-28 16:13:27', '2018-02-28', 'KOKO', 'Solo Vocal', '-', '-', '085313218123', 'ricofloew831@gmail.com', '085313218123', 'seperti yg kau minta -chrisye . ', ''),
(50, '2018-03-01 11:06:11', '2018-03-01', 'Arthanauli', 'Solo Vocal', 'Sma pgri 1 bekasi', 'Duren jaya', '082210109232', 'arthahutabarat10@gmail.com', '082210109232', 'Im changging', 'Lunas'),
(51, '2018-03-01 12:59:05', '2018-03-01', 'Julieta', 'Solo Vocal', 'Man 2 Tangerang', 'Jl. Raya Serang Km. 24 Telagasari kec. Balaraja Kab. Tangerang prov. Banten', 'Ibu', 'julietasiicancer@gmail.com', '085213448712', 'Jali - jali dan sebuah rasa', 'Lunas'),
(52, '2018-03-02 01:55:51', '2018-03-02', 'Vocal Grup Boedoet', 'Group Vocal', 'SMAN 1', 'Jalan budi utomo no. 7', 'Pak alvian', 'reginamaria1918@gmail.com', '081317044484', 'Mirror', 'Lunas'),
(53, '2018-03-03 06:13:13', '2018-03-03', 'Mediasi', 'Group Vocal', 'UIN Syarif Hidayatullah Jakarta', 'Jl. Ir. H. Djuanda No. 95, Ciputat, Kota Tangerang Selatan, Banten 15412', 'Endah', 'endah.nr1398@gmail.com', '089662987217', 'Dansa Yo Dansa', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk`
--

CREATE TABLE `sk` (
  `id` int(11) NOT NULL,
  `kode_sk` tinyint(4) NOT NULL,
  `waktu_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama_content` varchar(20) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_size` int(20) NOT NULL,
  `file_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sk`
--

INSERT INTO `sk` (`id`, `kode_sk`, `waktu_upload`, `nama_content`, `file_name`, `file_size`, `file_type`) VALUES
(17, 2, '2017-12-10 07:50:40', 'Tryout SBMPTN', 'SK_SBMPTN_fix.docx', 342309, 'docx'),
(18, 1, '2017-12-10 07:52:19', 'Futsal', 'SK_FUTSAL_parsial_FIX.docx', 346307, 'docx'),
(19, 3, '2017-12-10 07:54:29', 'Olimpiade', 'SK_OLIM_parsial_fix.docx', 343768, 'docx'),
(20, 4, '2017-12-10 08:13:07', 'Singcomp', 'SK_SINGCOMP.docx', 308496, 'docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tryout_sbmptn_parsial`
--

CREATE TABLE `tryout_sbmptn_parsial` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_daftar` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_peserta` varchar(50) NOT NULL,
  `kehadiran` int(2) NOT NULL,
  `tempat_lahir` varchar(32) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `sekolah` varchar(32) NOT NULL,
  `jurusan` varchar(32) NOT NULL,
  `pilihan` varchar(20) NOT NULL,
  `id_pilihan` int(2) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `minat` text NOT NULL,
  `pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tryout_sbmptn_parsial`
--

INSERT INTO `tryout_sbmptn_parsial` (`id`, `time`, `tgl_daftar`, `nama`, `no_peserta`, `kehadiran`, `tempat_lahir`, `tgl_lahir`, `alamat`, `sekolah`, `jurusan`, `pilihan`, `id_pilihan`, `no_hp`, `email`, `minat`, `pembayaran`) VALUES
(10, '2017-12-10 10:35:13', '2017-12-10', 'Febry Aulia Savira', '201-05-17318', 0, 'Jakarta', '2001-02-13', 'Jalan Kenari II, Rt 13/Rw 04 No.216', 'SMAN 27 Jakarta', 'IPS', 'SOSHUM', 2, '081993017423', 'febryauliasavira2001@gmail.com', 'Akuntansi & UNJ', 'Lunas'),
(11, '2017-12-10 11:41:32', '2017-12-10', 'Nurhani Afianty', '', 0, 'Jakarta', '1999-10-16', 'Jalan taman jelita no.6 Rt 09 Rw 10 Rawamangun, Jakarta Timur', 'SMAN 1 Purwakarta', 'IPA', 'SAINTEK', 1, '081284179082', 'afianurhani@gmail.com', 'Pendidikan Dokter Universitas Indonesia', ''),
(12, '2017-12-13 09:19:56', '2017-12-13', 'INDAH AFRILIANI', '', 0, 'Jakarta', '1999-04-24', 'Jl. Tipar cakung kel. Sukapura kec.cilincing jakarta utara 14140', 'SMAN 75 JAKARTA', 'IPA', 'SAINTEK', 1, '0895603491731', 'Indah.afriliani88@gmail.com', 'Pendidikan matematika UNJ', ''),
(13, '2017-12-13 18:17:29', '2017-12-13', 'Anis Yuliani', '', 0, 'Wonogiri ', '2000-07-11', 'Jl. Kisardan No. 1A Kel. Cibodas Kec. Cibodas Kota Tangerang, Banten Kode pos: 15138', 'SMK N 1 Kota Tangerang', 'Lainnya', 'SOSHUM', 2, '082297424441', 'anisyuliani49@gmail.com', 'Manajemen & UIN Syarif Hidayatullah Jakarta', ''),
(33, '2017-12-20 01:04:46', '2017-12-20', 'Apriani Oktavia', '', 0, 'Jakart, 29 April 2000', '2000-04-29', 'Jl.Tipar Cakung gg.Kompi Jenggot Rt008/01 kel.sukapura kec.cilincing Jakarta Utara', 'SMAN 92', 'IPS', 'SOSHUM', 2, '089603485660', 'aprianioktavia60@gmail.com', 'Hukum Universitas Negeri Jakarta', ''),
(35, '2018-01-01 04:15:39', '2018-01-01', 'Syifa Dhiya Ulhaq', '', 0, 'Tangerang, 13 Februari 2000', '2018-01-01', 'Puri Megah Blok D3/4 Cipondoh, Tangerang', 'SMKN 1 TANGERANG', 'Lainnya', 'SOSHUM', 2, '085966727737', 'syifadhiya80@gmail.com', 'Manajemen Dakwah', ''),
(36, '2018-01-01 12:01:51', '2018-01-01', 'Annisa', '', 0, 'jakarta', '1999-12-10', 'jl.albaidho gg.sadar IV rt/rw : 06/006', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '089637677862', 'syaf_a@yahoo.com', 'pendidikan agama islam, UIN Jakarta', ''),
(37, '2018-01-01 14:48:27', '2018-01-01', 'Muhammad Luthfi Fauzan ', '202-05-17318', 0, 'Jakarta ', '2000-02-14', 'Jl Kampus No.35 Rt 14/Rw 04 Kelurahan Dukuh Kecamatan Kramat Jati ', 'MAN 6 Jakarta ', 'IPA', 'SOSHUM', 2, '08982489225', 'fauzanluthfi.102@gmail.com', 'Ekonomi Syariah & UIN Jakarta', 'Lunas'),
(38, '2018-01-01 14:56:47', '2018-01-01', 'Rizka Sabrina Noor', '200-02-17318', 0, 'Jakarta', '2018-01-30', 'Jalan smp 126 rt 05/03 no 27 kel. Tengah kec. Kramat jati Jakarta Timur ', 'MAN 6 Jakarta ', 'IPA', 'SAINTEK', 1, '+62895321960204', 'rizkasabrina301@gmail.com', 'Jurusan pendidikan ilmu pengetahuan alam & pendidikan kimia, UIN', ''),
(39, '2018-01-01 15:26:28', '2018-01-01', 'Hadisti Arianti', '203-05-17318', 0, 'Jakarta', '2000-09-20', 'Jl.pasar gardu gg.makmur rt.05/07 no 23', 'MAN 6', 'IPA', 'SOSHUM', 2, '083804475231', 'hadisti16@gmail.com', 'Pendidikan Agama Islam & UIN', 'Lunas'),
(40, '2018-01-01 16:22:49', '2018-01-01', 'Wildan Sabiq Aula ', '204-05-17318', 0, 'Tegal', '2000-05-07', 'Jl. Asmin Rt 08/Rw 03 Susukan, Ciracas, Jakarta Timur, DKI Jakarta', 'MAN 6 Jakarta ', 'IPA', 'SOSHUM', 2, '089630092015', 'wildan.sabiq07@gmail.com', 'Dirasat islamiyah & UIN Jakarta', 'Lunas'),
(41, '2018-01-01 16:52:42', '2018-01-01', 'Audry Neva Nabilla', '', 0, 'Depok', '1999-11-17', 'Bukit sawangan indah', 'SMA 1 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '085693305319', 'nabillaneva@yahoo.com', 'Saintek', ''),
(43, '2018-01-02 07:27:42', '2018-01-02', 'Marta Anisa fitri ', '', 0, 'jakarta 22 maret 2000', '2018-01-02', 'Jl.kompi jenggot', 'sman 75', 'IPA', 'SAINTEK', 1, '081385688188', 'marta.anisa84@gmail.com', 'aktuaria astronomi geofisika. ITB ', ''),
(44, '2018-01-02 13:35:38', '2018-01-02', 'Feby Fajriatur Rohmah', '001-02-17318', 0, 'Tangerang', '2000-08-06', 'Jl Roda hias rt 005/02 no.130 Serpong, Tangerang Selatan, Banten', 'SMAN 12 TANGSEL', 'IPA', 'SAINTEK', 1, '0895333453913', 'fajriaturrohmah6@gmail.com', 'Pendidikan Matematika, UIN Syarif Hidayatullah', 'Lunas'),
(45, '2018-01-02 17:37:49', '2018-01-02', 'Bintang Algaza', '', 0, 'Manado', '1998-07-05', 'Manado,Jln Manguni Raya', 'SMK Negeri 03 Manado', 'Lainnya', 'SAINTEK', 1, '082346789900', 'bulanalgaza@gmail.com', 'Teknik Informatika', ''),
(46, '2018-01-02 23:17:44', '2018-01-02', 'Muhammad Naufal Adam Alghifari', '002-02-17318', 1, 'Metro', '2001-04-12', 'Komp. Kodam Jaya Rt 07/Rw 02 Blok Z No.5 Celilitan, Kramat Jati', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '087788260930', 'naufalronaldo26@gmail.com', 'Sistem Informatika, Agribisnis & UIN Jakarta', 'Lunas'),
(47, '2018-01-04 03:18:23', '2018-01-04', 'Cahya Kamila', '', 0, 'Tangerang', '2000-05-19', 'Jl.Raya Serpong Kp.Wates Rt03/03 pakulonan serpong utara tangerang selatan', 'SMA N 12 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '089529999021', 'Kamilacahya2ca@gmail.com', 'farmasi', ''),
(48, '2018-01-05 14:13:11', '2018-01-05', 'Mayangsari Prihatiningrum', '', 0, 'Jakarta', '2000-03-01', 'Perum Cibarusah Jaya', 'MAN 3 BOGOR', 'IPA', 'SAINTEK', 1, '+6281808795665', 'prihatiningrum03@gmail.com', 'Fakultas Kedokteran UIN Syarif Hidayatullah Jakarta', ''),
(49, '2018-01-06 00:59:24', '2018-01-06', 'Lailatul fariha', '205-05-17318', 0, 'Jakarta', '2000-10-10', 'Jln. Smp 160 rt 02 rw 05 kel. Ceger kec. Cipayung Jakarta timur ', 'MAN 6 Jakarta', 'IPA', 'SOSHUM', 2, '089621105641', 'farihaatul99@gmail.com', 'sastra indonesia & UIN jakarta', 'Lunas'),
(50, '2018-01-06 12:32:36', '2018-01-06', 'aisha media saffira', '', 0, 'jakarta', '2000-10-01', 'jalan kompleks dpr ri pribadi blok c no 109 joglo jakbar', 'sman 57 jakarta', 'IPS', 'SOSHUM', 2, '0895333895318', 'aishamedias@gmail.com', 'psikologi', ''),
(51, '2018-01-06 13:30:38', '2018-01-06', 'Firda Ayu Fauziyah', '', 0, 'Jakarta ', '2000-01-03', 'Wismamas C4 no 15 Cinangka Sawangan Depok', 'SMA Al Hasra Bojongsari Sawangan', 'IPA', 'SAINTEK', 1, '081514269430', 'zaenaledu1@gmail.com', 'Ilmu Kesehatan UIN', ''),
(52, '2018-01-06 14:02:46', '2018-01-06', 'Elderaalwanda', '', 0, 'Jakarta', '2000-12-09', 'Komplek geriya perigi', 'Sma alhasra', 'IPA', 'SAINTEK', 1, '089651724367', 'elderaalwanda24@gmail.com', 'Kedokteran uin', ''),
(53, '2018-01-07 14:04:07', '2018-01-07', 'Annisha putri damayanti', '206-05-17318', 0, 'Tangerang, 14 oktober 2000', '2000-10-14', 'Jalan ptpn 8 cilenggang 2 rt 12 rw 04 kecamatan serpong kota tangerang selatan', 'Smk kesehatan riksa indrya', 'IPS', 'SOSHUM', 2, '087808420058', 'annisha.damayanti14@gmail.com', 'Psikologi & universitas islam negeri jakarta', 'Lunas'),
(54, '2018-01-07 14:04:42', '2018-01-07', 'Rezka Salwa Salsabila', '207-05-17318', 0, 'Jakarta', '2000-06-19', 'Jl. Cendrawasih RT 01 RW 06 No. 72 Cipayung-Ciputat', 'SMA Negeri 1 Kota Tangerang Sela', 'IPS', 'SOSHUM', 2, '+6283898677133', 'rezkasalsabilaa@gmail.com', 'Management - UIN Jakarta', 'Lunas'),
(55, '2018-01-07 14:20:06', '2018-01-07', 'SARAH OVALIA', '208-05-17318', 0, 'JAKARTA', '2001-05-05', 'Jl.cendrawasih rt004/011 No.9 Cipayung-Ciputat', 'MA Nurul Huda Assuriyah', 'IPS', 'SOSHUM', 2, '085759527625', 'iyainiyayahyakk@gmail.com', 'TARBIYAH - UIN JAKARTA', 'Lunas'),
(56, '2018-01-07 14:25:26', '2018-01-07', 'Dhinda Athiyyah Anindya', '003-02-17318', 0, 'Tangerang, 17 Juni 2000', '2000-06-17', 'Bumi Serpong Residence, Blok G no.8 Pamulang 2, Tangerang Selatan', 'Smk Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '089513048529', 'rhonda.anindya@gmail.com', 'Keperawatan', 'Lunas'),
(57, '2018-01-07 15:55:39', '2018-01-07', 'Era yunita fitri wibowo', '209-05-17318', 0, 'Bogor', '2000-06-09', 'Jln. Pisang 3 no 5 perumnas 2 parung panjang', 'Smk kesehatan Riksa Indrya', 'IPS', 'SOSHUM', 2, '089630622402', 'errayftw@yahoo.com', 'psikologi & universitas islam negeri jakarta', 'Lunas'),
(58, '2018-01-07 23:27:53', '2018-01-07', 'Nur Khoirun Nisa', '210-05-17318', 0, 'Tangerang', '2000-02-09', 'Jl. Delima 3 No.12 Rt 03/Rw 07 Perumnas 2 Parungpanjang Bogor Kecamatan Parungpanjang Kabupaten Bogor Kode Pos 16360 ', 'SMK Kesehatan Riksa Indrya', 'IPS', 'SOSHUM', 2, '089502568741', 'nurkhoirunnisa09@gmail.com', 'Psikologi & UIN Jakarta', 'Lunas'),
(59, '2018-01-07 23:46:35', '2018-01-07', 'Nuriyah', '', 0, 'Tangerang', '0000-00-00', 'Jl. Pasar jengkol Rt.008/02 kec.setu kel.babakan tangsel', 'Smk Pustek Serpong', 'Lainnya', '', 0, '085847499741', 'nryh99nuri@gmail.com', 'Ilmu Komunikasi, Unpad', ''),
(60, '2018-01-08 03:35:21', '2018-01-08', 'Nabila Aryanti', '004-02-17318', 0, 'Jakarta', '2001-01-21', 'Jalan Salak 2, Kelurahan Pondok Benda, Kecamatan Pamulang. Tangerang Selatan', 'SMAN 12 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089601963484', 'nabilaaryanti23@gmail.com', 'Matematika UIN', 'Lunas'),
(61, '2018-01-08 06:00:31', '2018-01-08', 'Raihan Andantino', '', 0, 'Depok', '2000-07-09', 'BSI 2 Blok C6c no. 80', 'SMKN 2 DEPOK', 'Lainnya', 'SAINTEK', 1, '085880601297', 'radantino@gmail.com', 'Tenaga Listrik ITB', ''),
(62, '2018-01-08 07:00:22', '2018-01-08', 'Amelia Nurfitriyani', '', 0, 'Tanggerang', '2001-01-05', 'Komplek PTPN VIII No.39 Rt 012. RW 04 kecamatan Serpong, kelurahan Cilenggang', 'SMK kesehatan Riksa indrya', 'IPS', 'SOSHUM', 2, '08980261709', 'amelianurfitriani01@gmail.com', 'Psikolog & Universitas Islam negeri', ''),
(63, '2018-01-08 10:19:19', '2018-01-08', 'Adiska Putri Maylani', '', 0, 'Jakarta', '2000-05-12', 'Jln.raya puspitek perumahan puri serpong 1 blok D3/17 kec.setu kel.setu', 'SMK KESEHATAN RIKSA INDRYA', 'Lainnya', 'SAINTEK', 1, '089686533872', 'diskapm12@gmail.com', 'Kesehatan Masyarakat & UIN', ''),
(64, '2018-01-08 14:57:02', '2018-01-08', 'Okta Alfia Noerafifa', '005-02-17318', 0, 'Tangerang, 14 Oktober 1999', '1999-10-14', 'Jalan salak 5, Rt 03 Rw 004 Pondok Benda, Pamulang - TangSel', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '08993667578', 'oktaalfianoerafifa@gmail.com', 'Keperawatan UIN Jakarta', 'Lunas'),
(65, '2018-01-09 06:42:59', '2018-01-09', 'Sasqa Azahra', '006-02-17318', 1, 'Bogor', '2000-10-21', 'Kp Bulak Desa Padurenan Kec. Gunung Sindur Kabupaten Bogor', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '081617649915', 'sasqaazahra@gmail.com', 'Keperawatan & UIN Jakarta', 'Lunas'),
(66, '2018-01-09 12:19:14', '2018-01-09', 'Mutiara Shinta Faradhila', '', 0, 'Tangerang', '2000-10-18', 'Perum Griya Asri Blok E1 no.9 rt51/07 kel.jelupang kec.serpong utara', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '0895347784310', 'mshintaf18@gmail.com', 'Kesehatan Masyarakat dan Universitas Islam Negeri Syarif Hidayatullah', ''),
(67, '2018-01-09 12:19:15', '2018-01-09', 'Iklina wardani', '007-02-17318', 1, 'Tangerang ', '2000-03-20', 'Griya asri blok b12 no 3 rt 34 rw 07 kelurahan jelupang kecamatan serpong utara ', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '089684654087', 'iklinawardani00@gmail.com', 'Kesehatan Masyarakat & Universitas Islam Negeri Syarif Hidayatullah', 'Lunas'),
(69, '2018-01-09 13:42:28', '2018-01-09', 'Syita Maidah Haly', '', 0, 'serang', '2000-01-27', 'Jl. Dukuh Pinggir 1 NO.19 rt/rw 006/005, Kel. Kebon Melati, Kec. Tanah Abang, Jakarta Pusat', 'Smk kesehatan riksa indrya', 'Lainnya', 'SAINTEK', 1, '085882743416', 'syitamaidahhaly@gmail.com', 'Kesehatan Masyarakat & UIN', ''),
(70, '2018-01-10 01:55:20', '2018-01-10', 'Erika Deliana', '008-02-17318', 1, 'Tangerang', '2000-10-12', 'Serpong Jalan Desa No.38 Rt 01/Rw 01', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '0895340843970', 'erikadeliana27@gmail.com', 'Keperawatan & UIN Jakarta', 'Lunas'),
(71, '2018-01-10 01:56:05', '2018-01-10', 'Lokasi Pratiwi', '009-02-17318', 1, 'Tangerang', '2000-03-30', 'jl. Rawa Mekar Jaya Rt 01/Rw 02 Kecamatan Serpong Kota Tangerang Selatan', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '08988175877', 'wiwijaryanti@gmail.com', 'Ilmu Keperawatan & UPN Veteran Jakarta', 'Lunas'),
(72, '2018-01-10 01:56:10', '2018-01-10', 'Larasati Dewi Pangestu', '010-02-17318', 1, 'Brebes', '2000-10-25', 'Jalan Attaqwa Kp. Curug Nagreg Desa Curug Sangereng Rt 03/Rw 01 No.44 Kec. Kelapa Dua Kab. Tangerang Provinsi Banten', 'SMK Kesehatan Riksa Indrya ', 'IPA', 'SAINTEK', 1, '08987706956', 'larasatidewip@gmail.com', 'Farmasi & UI', 'Lunas'),
(73, '2018-01-10 02:00:39', '2018-01-10', 'Pintaning Mahardika Putri', '011-02-17318', 1, 'Depok', '2001-09-05', 'Pondok Benda Indah Jalan Mawar Blok Q1 No.3, Pamulang Tangerang Selatan', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '083806516062', 'pintaning20ts@gmail.com', 'Ilmu Keperawatan & UGM', 'Lunas'),
(74, '2018-01-10 02:06:53', '2018-01-10', 'Bela Agustin', '012-02-17318', 1, 'Tangerang', '2000-05-17', 'Jalan Cilenggang 2 Rt 08/Rw 03, Kelurahan Cilenggang, Kecamatan Serpong, Provinsi Banten ', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '089628763975', 'belaagustin725@gmail.com', 'Kedokteran & UI', 'Lunas'),
(75, '2018-01-10 02:25:16', '2018-01-10', 'Listriyani', '013-02-17318', 0, 'Batang', '1999-03-27', 'Cluster Blossom Ville Blok J27 No.1 The Green BSD City Tangerang Selatan', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '087875378236', 'elisyani969@gmail.com', 'Kedokteran & UI', 'Lunas'),
(76, '2018-01-10 03:27:57', '2018-01-10', 'Endah dewi pratiwi', '', 0, 'Jakarta', '2000-09-03', 'Cipayung jl.ali rt:02 rw:01 no. 72', 'Sman 58 jakarta', 'IPA', 'SAINTEK', 1, '089688515056', 'endah.dewi99@gmail.com', 'Keperawatan Universitas Indonesia', ''),
(77, '2018-01-10 05:13:05', '2018-01-10', 'Lia Khoerus Sholiha', '014-02-17318', 0, 'Bogor', '2000-07-19', 'Desa Cibinong Rt 01/Rw 01 No.28 Kec. Gunung Sindur Kab. Bogor 16340', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '085891938798', 'liakhoerussholiha00@gmail.com', 'Keperawatan & UIN Jakarta', 'Lunas'),
(78, '2018-01-10 05:16:20', '2018-01-10', 'Sabilla Aulia Muhtar', '015-02-17318', 1, 'Bogor ', '2000-02-02', 'Perum Griya Cimangir Serpong Estate Block G6 No.12 Rt 01/Rw 13 Kec. Gunung Sindur Kab. Bogor 16340', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '085782462781', 'sabillaaulia0202@gmail.com', 'Keperawatan & UIN Jakarta', 'Lunas'),
(79, '2018-01-10 05:33:19', '2018-01-10', 'A\'izzah A\'la Sabilla', '016-02-17318', 0, 'jakarta', '2000-05-11', 'Perumahan villa tekno blok E no 22 Rt 001 Rw  09, Kelurahan Kademangan,  Kecamatan Setu Kota Tangerang Selatan', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '085819264102', 'Aizzahalasalsabilla@gmail.com', 'KEPERAWATAN-UNIVERSITAS INDONESIA', 'Lunas'),
(80, '2018-01-10 08:29:31', '2018-01-10', 'CITRA TANANI', '', 0, 'JAKARTA, 19 JULI 2000', '2000-07-19', 'JL. APUS 1A RT.001/09 NO.14 KOTA BAMBU SELATAN, JAK-BAR 11420', 'SMAN 112 JAKARTA', 'IPA', 'SAINTEK', 1, '087784868182', 'tananicitra@gmail.com', 'Kesehatan masyarakat / farmasi-UIN', ''),
(81, '2018-01-10 09:12:08', '2018-01-10', 'Cindi Tri Fitikasari', '017-02-17318', 1, 'Jakarta', '2000-04-26', 'Jalan Kampung Baru Rt 11/Rw 02 Ciracas Jakarta Timur', 'SMAN 58 Jakarta', 'IPA', 'SAINTEK', 1, '083876322372', 'cinditrifs@gmail.com', 'FKM & UI', 'Lunas'),
(82, '2018-01-10 10:16:05', '2018-01-10', 'Raychan Abyqa Fahriza', '018-02-17318', 0, 'Jakarta', '1999-11-18', 'Perumahan Puri Bintaro Hijau, Jalan Puri Menteng II Blok B1 no.29, Pondok Aren, Tangerang Selatan', 'SMAN 90 Jakarta', 'IPA', 'SAINTEK', 1, '087878860628', 'raychanabyqafariza@gmail.com', 'FTI & ITB Ganesa', 'Lunas'),
(83, '2018-01-10 10:47:25', '2018-01-10', 'Vinna Adhe Fitria', '019-02-17318', 0, 'Tangerang', '2000-12-04', 'Griya Asri Blok C9 no.2 Rt 31/Rw 07 Jalan Mangga 4 BSD Jelupang Serpong Utara ', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089614419405', 'vinnaadhe@gmail.com', 'Kesehatan Masyarakat & UIN Jakarta', 'Lunas'),
(84, '2018-01-10 10:59:28', '2018-01-10', 'Rizka Olivia', '020-02-17318', 0, 'tangerang', '2000-05-24', 'Jalan pondok betung raya  RT 001/ 05 no 62 tangerang selatan ', 'Sma negeri 5 kota tangerang sela', 'IPA', 'SAINTEK', 1, '08976723551', 'rizkaoliviapark@gmail.com', 'kedokteran ', 'Lunas'),
(85, '2018-01-10 11:04:52', '2018-01-10', 'Alfina Damai Yanti ', '021-02-17318', 0, 'Tangerang', '2000-05-26', 'Jalan Masjid Jami Al-ikhlas Rt 02/Rw 01 Tangerang Selatan', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089649793753', 'alfinadamaiii@gmail.com', 'Kesehatan Masyarakat & UIN Jakarta', 'Lunas'),
(86, '2018-01-10 12:08:01', '2018-01-10', 'Mutia azzahra', '', 0, 'Bekasi', '2000-03-26', 'Jl kelud kiri atas no 16 rt05/004, jatibening 1, pondok gede, bekasi', 'SMAN 16 Bekasi', 'IPA', 'SAINTEK', 1, '085210784219', 'mutiaazzahraa2@gmail.com', 'Pendidikan matematika UPI', ''),
(87, '2018-01-10 14:24:43', '2018-01-10', 'Putri oktaviani', '022-02-17318', 1, 'Jakarta,27 oktober 1999', '2018-01-10', 'Griya suradita indah. Blok J2/14 Rt. 06 RW. 09', 'Smk kesehatan riksa indrya', 'IPA', 'SAINTEK', 1, '081513191828', 'poktaviani731@gmail.com', 'Keperawatan', 'Lunas'),
(88, '2018-01-10 14:58:51', '2018-01-10', 'Cindy arbelia', '', 0, 'Tangerang', '2000-08-25', 'Jl. Raya serpong rt 08 rw 02  no 101, roda hias serpong , tangerang selatan', 'sma negeri 12 tangerang selatan', 'IPA', 'SAINTEK', 1, '087871051511', 'cindyarbelia08@gmail.com', 'teknologi pangan - ipb', ''),
(89, '2018-01-10 15:04:46', '2018-01-10', 'Hansen Vilosevic Saputra', '023-02-17318', 1, 'Jakarta', '2000-06-11', 'Jl. Latumenten II Komp. Perdas No.11', 'SMAN 112 Jakarta', 'IPA', 'SAINTEK', 1, '087888673212', 'hansensaputra90@gmail.com', 'Arsitektur & UI', 'Lunas'),
(90, '2018-01-10 15:05:43', '2018-01-10', 'Ahmad Ruhulqisthi', '024-02-17318', 1, 'Jakarta', '2000-07-31', 'Apt.Puri Parkview CA Lt.16 No.3 Meruya Utara', 'SMAN 112 Jakarta', 'IPA', 'SAINTEK', 1, '08158072414', 'ahmadruhulqisti@gmail.com', 'Fakultas Ilmu Komputer & UI', 'Lunas'),
(91, '2018-01-10 16:50:36', '2018-01-10', 'Salwa Mauludi', '025-02-17318', 1, 'Bogor', '2000-06-08', 'Perum Griya Cimangir Serpong Estate', 'SMAN 1 Gunung Sindur', 'IPA', 'SAINTEK', 1, '085779700019', 'salwamauludi@gmail.com', 'Pendidikan Matematika', 'Lunas'),
(92, '2018-01-10 22:22:35', '2018-01-10', 'Yesi Gita Putri', '026-02-17318', 0, 'Manado', '2000-07-14', 'Perum Taman Sari Bukit Damai A19/20', 'SMAN 1 Gunung Sindur', 'IPA', 'SAINTEK', 1, '089689971391', 'gitayesi1@gmail.com', 'Pendidikan Matematika & UIN Jakarta', 'Lunas'),
(93, '2018-01-10 23:45:48', '2018-01-10', 'Alya Rahma', '', 0, 'Jakarta', '1999-10-02', 'Jalan Murdai I No.11 Cempaka Putih Barat, Jakarta Pusat', 'SMAN 30 Jakarta', 'IPA', 'SAINTEK', 1, '088213752055', 'alyarahma450@gmail.com', 'Matematika -  UGM', ''),
(94, '2018-01-11 00:11:17', '2018-01-11', 'Faradina awalia', '', 0, 'Tangerang ', '2000-04-28', 'Jl. Gg H.lati rt005/002 rawabuntu ', 'SMK KESEHATAN RIKSA INDRYA', 'IPA', 'SAINTEK', 1, '08970334191', 'Fawalia24@gmail.com', 'Keperawatan dan universitas Islam negeri ', ''),
(95, '2018-01-11 01:53:41', '2018-01-11', 'Elsa Nuroktaviani', '027-02-17318', 1, 'Bogor', '2001-11-19', 'Kampung Cibarengkok No.7 Rt 03/Rw 02 Desa Pengasinan Kecamatan Gunung Sindur Kabupaten Bogor', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '089677288750', 'elsaoktaviani321@gmail.com', 'Keperawatan & UIN Jakarta', 'Lunas'),
(96, '2018-01-11 03:43:47', '2018-01-11', 'Gustinawati', '028-02-17318', 0, 'Tangerang', '2000-08-14', 'Perumahan Pondok Kacang Prima Blok k3/12 Rt 15/Rw 08 Tangerang Selatan', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '08567936732', 'gwati90@gmail.com', 'Agribisnis & UIN Jakarta', 'Lunas'),
(97, '2018-01-11 03:47:56', '2018-01-11', 'Siti Nurcholisa ', '', 0, 'Banyuwangi ', '2001-06-27', 'Jalan haji sarmili rt 002 rw 02 no 64 jurang mangu timur pondok aren', 'SMA NEGERI 5 TANGERANG SELATAN ', 'IPA', 'SAINTEK', 1, '085959711211', 'Sitinurcholisa@gmail.com', 'Ilmu keperawatan ', ''),
(98, '2018-01-11 04:48:59', '2018-01-11', 'Larasati Buzaina', '029-02-17318', 0, 'Jakarta', '1999-11-12', 'Bukit Cengkeh 2', 'SMAN 2 Depok', 'IPA', 'SAINTEK', 1, '081310523188', 'larasati.bzaina@gmail.com', 'FK & UI', 'Lunas'),
(99, '2018-01-11 06:28:28', '2018-01-11', 'Adiar Fauzan Ramadhani', '030-02-17318', 1, 'Denpasar', '1999-12-04', 'Bella Casa Residence Blok I3 No 29 Tirtajaya, Sukmajaya, Depok, Jawa Barat', 'SMAN 2 Depok', 'IPA', 'SAINTEK', 1, '085881980062', 'adiarfauzan@gmail.com', 'Ilmu Aktuaria & UGM', 'Lunas'),
(100, '2018-01-11 06:59:19', '2018-01-11', 'Namira salsa setiawan ', '', 0, '14 september 2000', '2000-09-14', 'Jalan pondok serut 2 rt 003 rw 002 pondok kacang barat pondok aren kota tangerang selatan ', 'SMK Mega bangsa ', 'Lainnya', 'SOSHUM', 2, '089627565169', 'namirasalsasetiawan@gmail.com', 'Manajemen ', ''),
(101, '2018-01-11 07:23:03', '2018-01-11', 'Septiana Lestari', '212-05-17318', 0, 'Tangerang', '2000-09-27', 'Jl. Villa  Melati Mas Blok V-9/22', 'SMK Mega Bangsa', 'Lainnya', 'SOSHUM', 2, '089662000586', 'septianalestari27@gmail.com', 'Manajemen & UIN Jakarta', 'Lunas'),
(102, '2018-01-11 08:06:55', '2018-01-11', 'Slaesti Lestari Purwandini', '211-05-17318', 0, 'Jakarta', '2000-09-19', 'Jalan AMD Raya No.38 Rt 03/Rw 01 Pondok Kacang Barat', 'SMK Mega Bangsa', 'Lainnya', 'SOSHUM', 2, '089687144199', 'slaestilestari19@gmail.com', 'Manajemen & UIN Jakarta', 'Lunas'),
(103, '2018-01-11 22:29:44', '2018-01-11', 'Annisa Istiani Ulfa Safira', '031-02-17318', 0, 'Cilacap', '2000-07-30', 'Gg. Bhakti Pd. Kacang Rt 04/Rw 04 Kel.Tajur Kec.Ciledug Kab.Banten', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089651913165', 'annisaulfa146@gmail.com', 'Sejarah Peradaban Islam, Biologi & UIN Jakarta ', 'Lunas'),
(104, '2018-01-12 03:24:30', '2018-01-12', 'Izzah Ashabi Jannah', '213-05-17318', 0, 'Tangerang', '2000-01-29', 'Jl. H. Rasam No.100 Rt 03/Rw 02 Parigi Baru', 'SMK Mega Bangsa', 'Lainnya', 'SOSHUM', 2, '085946051321', 'izzahashabi@gmail.com', 'Sastra Bahasa Inggris & UIN Jakarta', 'Lunas'),
(105, '2018-01-12 04:01:51', '2018-01-12', 'Pandu Tilu Wandanu', '214-05-17318', 0, 'Tangerang', '2000-10-26', 'Tangerang, Ciledug Indah 2 Blok E 31/25', 'SMAN 12 Tangerang', 'IPS', 'SOSHUM', 2, '081510728121', 'pandutw11@gmail.com', 'PJKR & UPI', 'Lunas'),
(106, '2018-01-12 07:08:54', '2018-01-12', 'Aida Nurul Asni', '194-02-17318', 0, 'Jakarta', '2000-12-31', 'Jl.albarokah rt 04/08 no.92 kel.kreo selatan kec.larangan kota tangerang', 'SMAN5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081284032759', 'aidanurulasni@gmail.com', 'Kesehatan Masy, UIN', 'Lunas'),
(107, '2018-01-12 07:12:28', '2018-01-12', 'Nahdiyah Rachmania', '032-02-17318', 1, 'Tangerang', '2000-03-14', 'Jalan Hj.Sarmah, Kp Lio Gg.Umi Rt 06/01 Pondok Kacang Timur, Tangerang Selatan, Banten', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '088211178210', 'nahdiyarahma14@gmail.com', 'Pendidikan Dokter & UI', 'Lunas'),
(108, '2018-01-12 07:24:57', '2018-01-12', 'Nisa Oktavianti', '033-02-17318', 1, 'Jakarta', '2000-10-13', 'Jalan Puskesmas No.19 Rt 01/Rw 011 ', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '083876884976', 'nisaokt272@gmail.com', 'Kimia & UNJ', 'Lunas'),
(109, '2018-01-12 07:30:22', '2018-01-12', 'Hasri Kurnia Afajar', '034-02-17318', 0, 'Tangerang', '2000-11-06', 'JL. Puskesmas Rt 05/Rw 011 No.72 Pondok Aren', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081289220421', 'hasrikurnia6@gmail.com', 'Ilmu Gizi & UPN Veteran Jakarta', 'Lunas'),
(110, '2018-01-12 07:49:07', '2018-01-12', 'Salsabillah', '035-02-17318', 0, 'Tangerang', '2000-08-18', 'Jln Swabhakti Rt 01/Rw 011 Tangerang Selatan', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '085693718982', 'salsabilah.sitinur@gmail.com', 'Ahli Gizi & UI', 'Lunas'),
(111, '2018-01-12 09:10:27', '2018-01-12', 'Divana Nur Islam', '036-02-17318', 0, 'Cilegon', '2000-02-29', 'Jl. Jombang Raya GG. HJ Umar No. 40 RT 05/RW 05', 'SMAN 5 Tangsel', 'IPA', 'SAINTEK', 1, '089672071006', 'minatonamikaze616@gmail.com', 'Ilmu gizi dan Universitas Indonesia', 'Lunas'),
(112, '2018-01-12 11:44:28', '2018-01-12', 'Nur Hayati Septiyana', '215-05-17318', 0, 'Pekalongan', '1999-09-13', 'Jl. Buaran Kodiklat TNI Rt 02/Rw 06', 'SMKN 5 Tangerang Selatan', 'Lainnya', 'SOSHUM', 2, '085771927713', 'nurhayatiseptiyana@gmail.com', 'Hubungan Internasional & UPN Veteran Jakarta', 'Lunas'),
(113, '2018-01-12 13:31:53', '2018-01-12', 'Alifya Asmiasti', '216-05-17318', 0, 'Tangerang', '2000-10-03', 'Jl.Kemiri VI, Rt 02/Rw 011, Pondok Cabe ', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SOSHUM', 2, '088210499443', 'alifyaasmiasti10@gmail.com', 'Akuntansi & UIN Jakarta', 'Lunas'),
(114, '2018-01-12 13:36:54', '2018-01-12', 'Fazriah Putri Oktaviani', '217-05-17318', 0, 'Tangerang', '2000-10-21', 'Kp. Buaran Rt 01/Rw 06, Serpong, Tangerang Selatan', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SOSHUM', 2, '+6282210982360', 'fazriahputri@gmail.com', 'Akuntansi & UB', 'Lunas'),
(115, '2018-01-13 00:16:13', '2018-01-13', 'Nurkholifah', '218-05-17318', 0, 'Tangerang', '2000-10-10', 'Kampung Bulak Pondok Kacang Timur', 'SMK Mega Bangsa', 'Lainnya', 'SOSHUM', 2, '089607804253', 'knur9443@gmail.com', 'Manajemen & UIN Jakarta', 'Lunas'),
(116, '2018-01-13 08:26:55', '2018-01-13', 'Tsabita Farras', '219-05-17318', 0, 'Jakarta', '2000-08-09', 'Jl. Sakura Rt 02/Rw 011 Kel. Gaga', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '089635692340', 'bita.shaheer@gmail.com', 'Perbankan Syariah & UIN Jakarta', 'Lunas'),
(117, '2018-01-13 11:19:51', '2018-01-13', 'Alfiyatur Rahmah', '037-02-17318', 0, 'Jakarta Timur', '1999-05-31', 'Ujung Menteng Rt 011/Rw 02 Cakung Jakarta Timur', 'SMA YP IPPI', 'IPA', 'SAINTEK', 1, '087774824763', 'rahmahalfiyatur8@gmail.com', 'Teknik Informatika & UIN Jakarta', 'Lunas'),
(118, '2018-01-13 12:58:18', '2018-01-13', 'Raysya Nurfikriana', '038-02-17318', 1, 'Tangerang ', '1999-10-05', 'Jln Kp. Ciater Rt 09/Rw 07 No.58 Kelurahan Ciater Kec. Serpong Serpong-Kota Tangerang Selatan', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '081808041101', 'raysyanurfikriana5@gmail.com', 'Farmasi & UI', 'Lunas'),
(119, '2018-01-13 14:04:43', '2018-01-13', 'Mita Yulianti', '220-05-17318', 0, 'Tanggerang', '2000-01-26', 'Kp Dadap Timur Rt 04/Rw 04 Kel. Rawabuntu Kec, Serpong Kota, Tangsel', 'MA Nurul Falah', 'IPS', 'SOSHUM', 2, '089513982483', 'mita.yulianti26@gmail.com', 'ekonomi & UIN jakarta ', 'Lunas'),
(120, '2018-01-14 10:55:20', '2018-01-14', 'Ari Ahmad Julindo', '', 0, 'Jakarta', '2000-07-09', 'Jalan H. Sodin nomor 65', 'SMA NEGERI 12 TANGERANG', 'IPS', 'SOSHUM', 2, '085780376336', 'ari.ahmad447@gmail.com', 'Management Universitas Sultan Ageng Tirtayasa', ''),
(121, '2018-01-15 00:08:39', '2018-01-15', 'Nur Maulidya', '221-05-17318', 0, 'Jakarta', '2000-06-14', 'Jl. Joglo Raya Gang Sayur Asem Rt 02/Rw 06 No.37', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '089637543909', 'nurmaulidya14@gmail.com', 'PGMI, Psikologi, Pendidikan Sosiologi, Sastra Bahasa, Akuntansi & UIN Jakarta', 'Lunas'),
(122, '2018-01-15 01:47:44', '2018-01-15', 'Gumpita Windy Distiyanti', '039-02-17318', 0, 'Jakarta', '2000-12-27', 'Cibubur-Ciracas, Jakarta Timur', 'SMAN 58 Jakarta', 'IPA', 'SAINTEK', 1, '08975863630', 'gitagumpita@gmail.com', 'Arsitektur & UB', 'Lunas'),
(123, '2018-01-15 01:52:20', '2018-01-15', 'Endri Rianti', '040-02-17318', 0, 'Jakarta', '2000-02-06', 'Jalan Tanjung, Ciracas - Jakarta Timur', 'SMAN 58 Jakarta', 'IPA', 'SAINTEK', 1, '08997680381', 'endririanti3@gmail.com', 'Farmasi & UI', 'Lunas'),
(124, '2018-01-15 01:55:23', '2018-01-15', 'Mitta Nur Fadellia', '041-02-17318', 0, 'Jakarta', '2000-03-29', 'Jalan Penganten Ali III Ciracas Jakarta Timur', 'SMAN 58 Jakarta', 'IPA', 'SAINTEK', 1, '081510914813', 'mittafadellia29@gmail.com', 'Farmasi & UI', 'Lunas'),
(125, '2018-01-15 02:02:58', '2018-01-15', 'Atikah', '042-02-17318', 0, 'Jakarta', '2000-04-26', 'Ciracas', 'SMAN 58 Jakarta', 'IPA', 'SAINTEK', 1, '089670515784', 'tikaatikah26@gmail.com', 'FKM & UI', 'Lunas'),
(126, '2018-01-15 03:31:03', '2018-01-15', 'Muhammad Akbar Pamungkas', '', 0, 'Bekasi', '2000-08-30', 'komplek Al jalan paus raya blok e 59 jatikramat Bekasi', 'SMAN 16 BEKASI', 'IPS', 'SOSHUM', 2, '083870226977', 'akbarpamungkas040@gmail.com', 'psikologi Uin Jakarta/Bandung', ''),
(127, '2018-01-15 03:52:52', '2018-01-15', 'Lulu Kamelia Zahrah', '', 0, 'Jakarta', '2000-03-12', 'Jl. Kemiri V No. 21\r\nTangerang Selatan', 'SMA Nusantara Plus', 'IPA', 'SAINTEK', 1, '081808050951', 'lkzahrah@gmail.com', 'Akutansi', ''),
(128, '2018-01-15 03:53:07', '2018-01-15', 'Finola Kintan Reswati', '', 0, 'Sukoharjo ', '2000-10-12', 'Jl. Arya Putra, Gg. Swadaya C, Kedaung, Pamulang', 'SMA NUSANTARA Plus', 'IPA', 'SAINTEK', 1, '085770484550', 'kintanfinola@gmail.com', 'Akutansi', ''),
(129, '2018-01-15 03:54:05', '2018-01-15', 'Sinta Baharani ', '', 0, 'Jakarta, 10 Mei 2000', '2000-05-10', 'Jl kemiri raya, gang Pelita RT 03 RW 03 ', 'SMA Nusantara plus ', 'IPA', 'SAINTEK', 1, '089601458496', 'baharanisinta@gmail.com', 'Akuntansi ', ''),
(130, '2018-01-15 04:29:30', '2018-01-15', 'Alda khaerunisa salsabila', '', 0, 'Bogor', '2000-08-07', 'Jl.gang h.saih parung poncol rt 03 rw 02 duren mekar bojongsari depok', 'SMA Nusantara Plus ', 'IPA', 'SAINTEK', 1, '081383199618', 'aldakhaerunisa78@gmail.com', 'Teknik pertambangan di Universitas pembangunan nasional \"veteran\"  yogyakarta', ''),
(131, '2018-01-15 04:34:22', '2018-01-15', 'Tiara Nurmala sari', '', 0, 'Bogor', '2000-11-04', 'Kp.ragamukti rt 2 rw 1 No 29 citayam tajurhalang bogor ', 'SMA Nusantara Plus ', 'IPA', 'SAINTEK', 1, '085819708450', 'tiaranurmalaa@gmail.com', 'Gizi di IPB', ''),
(132, '2018-01-15 05:41:46', '2018-01-15', 'Nadya kurnia maharani', '043-02-17318', 1, 'Jakarta', '2000-05-25', 'Komplek polri ciracas', 'sman 58 jakarta', 'IPA', 'SAINTEK', 1, '085692466136', 'nadyamaharani255@yahoo.co.id', 'Fakultas kedokteran ', 'Lunas'),
(133, '2018-01-15 06:16:26', '2018-01-15', 'Rodhi Hana Sakinah', '044-02-17318', 1, 'jakarta', '2000-02-15', 'Jalan baru jatimurni pondok melati', 'sman 58', 'IPA', 'SAINTEK', 1, '087804670868', 'rodhihana@gmail.com', 'farmasi, UI', 'Lunas'),
(134, '2018-01-15 06:23:44', '2018-01-15', 'Fitria Ramadhania', '045-02-17318', 1, 'Jakarta', '2000-12-22', 'Kampung Baru Ciracas', 'SMA Negeri 58 Jakarta', 'IPA', 'SAINTEK', 1, '085711554059', 'fitriarahmadhania@gmail.com', 'Ilmu Gizi UI', 'Lunas'),
(135, '2018-01-15 06:26:47', '2018-01-15', 'Arisya Aprillia', '046-02-17318', 0, 'Depok', '2000-04-28', 'Jl. Raya Pabuaran No.31', 'SMA NEGERI 58 JAKARTA', 'IPA', 'SAINTEK', 1, '081288064286', 'arisyapr@gmail.com', 'Teknik Kimia UI', 'Lunas'),
(136, '2018-01-15 07:11:22', '2018-01-15', 'Arasy Fasya Baihaqi', '222-05-17318', 0, 'Jakarta, 10 Agustus 2000', '2000-08-10', 'Jl Hajiten Komplek Bulog Blok C No 22', 'SMANU MHT', 'IPS', 'SOSHUM', 2, '085692577099', 'arasy.baihaqi@gmail.com', 'Ilmu Ekonomi UI', 'Lunas'),
(137, '2018-01-15 07:24:42', '2018-01-15', 'Cindy Rizkya Amanda Tizar', '', 0, 'Jakarta', '2000-04-22', 'Jl. Joglo raya gang sayur asem rt 002 rw 006 No.23', 'Man 10 jakarta', 'IPS', 'SOSHUM', 2, '085714775696', 'cindyrizkya11@gmail.com', 'Akutansi , manajemen , sastra bahasa', ''),
(138, '2018-01-15 08:16:18', '2018-01-15', 'Canda Dwi Fitikasari', '047-02-17318', 1, 'Jakarta', '2000-04-26', 'JL.Kp Baru RT.11/02 Ciracas Jakarta Timur', 'SMAN 58', 'IPA', 'SAINTEK', 1, '085211957306', 'candadfs@gmail.com', 'Teknik Sipil UI', 'Lunas'),
(139, '2018-01-15 08:56:20', '2018-01-15', 'Anggie nuraini', '', 0, 'Jakarta', '2000-01-28', 'Jalan talas 1 pondok cabe TANGSEL', 'SAMA NUSANTARA PLUS CIPUTAT', 'IPA', 'SAINTEK', 1, '083873530039', 'angginurainianggi6265@gmail.com', 'Ilmu keperawatan dan Kesehatan masyarakat', ''),
(140, '2018-01-15 08:56:36', '2018-01-15', 'Aqmarina Sabila', '048-02-17318', 0, 'Jakarta, ', '2000-11-07', 'Jl Bromartani Blok D2 No.10 Puri Indah, Kembangan Selatan, Jakarta Barat', 'SMAN 112 Jakarta', 'IPA', 'SAINTEK', 1, '08985209206', 'aqmarinasbl@gmail.com', 'Psikologi & UNS', 'Lunas'),
(141, '2018-01-15 11:43:14', '2018-01-15', 'Ghea Ovilia', '', 0, 'Malang', '2000-10-04', 'Green Sevilla V03/09 RT 001 RW 008, Citra Raya. Ds. Ciakar, Kec. Panongan, Kab. Tangerang. Kode Pos : 15710', 'SMA Negeri 4 Kab. Tangerang', 'IPA', 'SAINTEK', 1, '083804113045', 'gheaovilia@gmail.com', 'FARMASI UB', ''),
(142, '2018-01-15 12:21:02', '2018-01-15', 'Kharisma Diani Pangastuti', '', 0, 'Karang Anyar', '2000-05-19', 'Perumahan Griya Yasa Blok G8 No 7 RT 15/06', 'SMA Negeri 4 Kabupaten Tangerang', 'IPA', 'SAINTEK', 1, '087883706692', 'kharismadiani19@gmail.com', 'Pendidikan Biologi UNNES', ''),
(143, '2018-01-15 13:10:47', '2018-01-15', 'Alma Dinastri', '176-02-17318', 0, 'Ngawi', '2000-04-21', 'Kp. Kademangan Rt01/01 Kec. Setu Tangerang Selatan', 'Smk Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '08970787253', 'Almadinasnas@gmail.com', 'Keperawatan & Universitas Veteran , Uin , Polttekes jakarta 1', 'Lunas'),
(144, '2018-01-15 14:12:49', '2018-01-15', 'Woro Subekti Ayu Cahya Ningrat', '223-05-17318', 0, 'Jakarta', '2000-07-07', 'Jl. Pos Pengumben Dalam No.35-36 (Samping Villa Kelapa Dua) Rt 04/Rw 06 ', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '085886662560', 'worocahyaayu77@gmail.com', 'KPI & UIN', 'Lunas'),
(145, '2018-01-15 14:13:05', '2018-01-15', 'Zalzabila khairunisa', '224-05-17318', 0, 'Tangerang', '2001-04-04', 'Jl. Raden fatah Gg masjid2 rt02/rw10 parung serab Ciledug', 'MAN 10 JAKARTA BARAT', 'IPS', 'SOSHUM', 2, '089646807505', 'Zalzabilakhairunnisa123@gmail.com', 'Sosiologi,psikolog,BK & UIN,UNJ', 'Lunas'),
(146, '2018-01-15 14:18:57', '2018-01-15', 'Varizqa Oktamia', '', 0, 'Tangerang', '2000-07-08', 'Jl. Masjid Rt.002/Rw.04 No. 42 Sudimara Timur, Ciledug, Tangerang', 'MAN 10 JAKARTA', 'IPS', 'SOSHUM', 2, '089658117479', 'varizqaoktamia07@gmail.com', 'Ilmu Komunikasi, Sistem Informasi & UIN, ITB, USU', ''),
(147, '2018-01-15 14:26:29', '2018-01-15', 'Nurhayati hasnah', '', 0, 'Jakarta,23 mei 2000', '2018-05-23', 'Da.bunder rt.01/01 no.37 kec.cikupa-tangerang', 'smk kesehatan yarsi medika', 'Lainnya', 'SOSHUM', 2, '082114109536', 'hasnah09876@gmail.com', 'Management', ''),
(148, '2018-01-16 03:27:42', '2018-01-16', 'Agita Fadilah', '', 0, 'Tangerang', '2000-07-31', 'Perum Bukit Tiara Blok S3 No. 4 Cikupa, Kab. Tangerang. ', 'SMAN 4 KAB. TANGERANG', 'IPS', 'SOSHUM', 2, '087874736708', 'agifaginting@gmail.com', 'Ilmu Komunikasi, Universitas Padjajaran', ''),
(149, '2018-01-16 04:48:59', '2018-01-16', 'Nadya Resti Verawaty', '', 0, 'Kediri', '2001-02-24', 'Perum Bukit Tiara blok R 2 No 17 Pasir Jaya Cikupa Tangerang', 'SMAN 4 KAB. TANGERANG', 'IPA', 'SAINTEK', 1, '082111567083', 'nadyaresti.v@gmail.com', 'Pendidikan Fisika UNNES', ''),
(150, '2018-01-16 05:24:45', '2018-01-16', 'Tahlia angelina ayu saphira', '049-02-17318', 0, 'Tangerang', '2000-07-15', 'Jl. H. Usman No. 37 rt/rw 002/08, ciputat', 'SMAN 1 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081319399161', 'tahlia.angelina@gmail.com', 'Farmasi - UI', 'Lunas'),
(151, '2018-01-16 05:27:43', '2018-01-16', 'Annisa Nurliani', '050-02-17318', 0, 'Tangerang', '2000-11-06', 'Jl.  Cirendeu Indah 3 No.34C', 'SMAN 1 Tangerang Selatan', 'IPS', 'SAINTEK', 1, '081289387306', 'anisanurliani1001@gmail.com', 'Kesehatan Masyarakat & UI, UIN, UPN Veteran Jakarta', 'Lunas'),
(152, '2018-01-16 05:29:41', '2018-01-16', 'Nurin Ardana Riswari', '051-02-17318', 1, 'Jakarta', '2000-05-11', 'Jl. Citanduy No.35 Rt 05/Rw 09 Cipayung, Ciputat', 'SMAN 1 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081212456097', 'nurinardana11@yahoo.com', 'Pendidikan Kedokteran Gigi & UI, Unsoed, Undip', 'Lunas'),
(153, '2018-01-16 05:36:41', '2018-01-16', 'Sari Damayanti', '225-05-17318', 0, 'Semarang', '2000-02-02', 'Jalan Sumatera, Gang H. Bakri, no.37, Jombang, Ciputat, Tangerang Selatan', 'SMAN 1 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '082298817036', 'saridamayanti220@gmail.com', 'Akuntansi & UI', 'Lunas'),
(154, '2018-01-16 05:40:22', '2018-01-16', 'Salwa Seroja', '052-02-17318', 1, 'Tangerang', '2000-01-18', 'Komplek Bumi Mentari Permai Blok G No.6 Rt 02/Rw 13. Pondok Petir Depok Jawa Barat', 'SMAN 1 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081511348190', 'salwaseroja18@gmail.com', 'Pendidikan Dokter & Unsoed, UNS, UIN', 'Lunas'),
(155, '2018-01-16 05:45:42', '2018-01-16', 'Nabila Astuti', '226-05-17318', 0, 'Jakarta', '1999-12-20', 'Jl. Raya Joglo Gang Sayur Asem RT 02/06 NO 6', 'MAN 10 JAKARTA BARAT', 'IPS', 'SOSHUM', 2, '081586037223', 'nabilaastuti20@gmail.com', 'Sistem informasi, manajemen & UIN', 'Lunas'),
(156, '2018-01-16 08:06:09', '2018-01-16', 'Amelia Risma Fauji', '053-02-17318', 1, 'Tangerang', '2000-10-26', 'Jalan Raya Serpong Rt002/007 Serpong Tangsel Banten', 'SMAN 12 Tangsel', 'IPA', 'SAINTEK', 1, '08998574054', 'ameliarismafauji87@gmail.com', 'Agribisnis UIN Jakarta', 'Lunas'),
(157, '2018-01-16 12:19:10', '2018-01-16', 'Aulia Nurul Izati', '054-02-17318', 1, 'Tangerang', '2000-08-04', 'Komp. Puspiptek Blok 1D No.15 Rt 12/Rw 06 Setu Tangerang Selatan Banten', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '085887262900', 'aulnuzamhtr@gmail.com', 'Keperawatan & Undip', 'Lunas'),
(158, '2018-01-17 02:45:45', '2018-01-17', 'Intan tribuana', '', 0, 'Tangerang ', '2000-05-04', 'Jl. Suka bakti 1 no.4 rt04/06 serua indah ciputat tangerang selatan', 'Sma Nusantara Plus', 'IPA', 'SAINTEK', 1, '085719409481', 'intantribuana4@gmail.com', 'Ilmu dan teknologi kelautan IPB', ''),
(159, '2018-01-17 07:15:18', '2018-01-17', 'Benito Felix', '', 0, 'Jakarta', '1999-10-10', 'Jl. Pulau Perling Komplek AL Jatimakmur Blok D2 No 14', 'SMA Negeri 16 Bekasi', 'IPA', 'SOSHUM', 2, '085892549918', 'benitofelix10@gmail.com', 'UNPAD-PSIKOLOGI', ''),
(160, '2018-01-17 11:05:17', '2018-01-17', 'Salsa Fadilah', '055-02-17318', 1, 'Tangerang ', '2000-08-14', 'Kp Rancamoyan, Desa Cibogo Rt 12/Rw 03 Kecamatan Cisauk, Kabupaten Tangerang, Banten', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '081286101622', 'salsafadilah19@gmail.com', 'Kesehatan Masyarakat & UIN', 'Lunas'),
(161, '2018-01-17 11:07:24', '2018-01-17', 'Harsah Farihah Hawani', '227-05-17318', 0, 'Tangerang', '2000-09-09', 'Cisauk, Kabupaten Tangerang Desa Cibogo Rt 03/Rw 01', 'SMAN 28 Tangerang ', 'IPS', 'SOSHUM', 2, '082110876236', 'asyafarihaaa@gmail.com', 'Perbankan Syariah & UIN', 'Lunas'),
(162, '2018-01-18 00:25:59', '2018-01-18', 'Eneng Febriani', '', 0, 'Bandung ', '2000-02-17', 'Gardenia Extension xp12/17 Rt 04 Rw 12', 'SMAN 4 Kab.Tangerang', 'IPS', 'SOSHUM', 2, '082260314895', 'enengfebriani81@gmail.com', '1.Adm.Negara 2.Bahasa dan Kebudayaan Korea 3.Kesejahteraan, UI', ''),
(163, '2018-01-18 04:58:14', '2018-01-18', 'Mellyana Puspita', '056-02-17318', 1, 'Tangerang', '2018-05-09', 'Jurang Mangu Barat RT 003 RW 01 ,Pondok Aren, Tangerang Selatan', 'SMAN 5 Tangerang Selatan', 'IPC', 'SAINTEK', 1, '085210538532', 'mellyanapuspita1808@gmail.com', 'UI Sastra dan Kebudayaan Korea', 'Lunas'),
(164, '2018-01-18 05:01:21', '2018-01-18', 'Chandra ayu kurniawati', '228-05-17318', 0, 'Jakarta', '2000-12-01', 'Komp. RSS Bintaro jaya 4, blok b 28', 'SMAN 5 Tangerang Selatan', 'IPC', 'SOSHUM', 2, '081296377568', 'kurniawatiayu5@gmail.com', 'UNDIP design interior', 'Lunas'),
(165, '2018-01-18 05:04:10', '2018-01-18', 'Fitriani Dwi Ramadhani', '229-05-17318', 0, 'Jakarta', '2000-12-25', 'Jalan Talas 2 Pondok Cabe Ilir Pamulang', 'SMAN 8 Tangerang Selatan', 'IPC', 'SOSHUM', 2, '089680193951', 'fitrianidwirmdhni25@gmail.com', 'Perbankan Syariah & UIN', 'Lunas'),
(166, '2018-01-18 05:05:00', '2018-01-18', 'Hasby Ash Shiddieqy', '', 0, 'Jakarta', '2000-07-21', 'Jl. Empang sari Ciputat tangsel', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '082125731322', 'hasbyjr@gmail.com', 'UI kriminologi', ''),
(167, '2018-01-18 05:15:07', '2018-01-18', 'Dyah pratiwi', '', 0, 'Jakarta', '2000-01-28', 'Jln. Wijaya Kusuma ujung III rt 009/01 kel.pd Betung kec.pd aren', 'SMAN 5 Tangerang Selatan', 'IPC', 'SAINTEK', 1, '082122906964', 'pratiwidyah489@gmail.com', 'UGM statistika', ''),
(168, '2018-01-18 05:36:40', '2018-01-18', 'Intania Deliyanti', '057-02-17318', 0, 'Tangerang ', '2000-09-28', 'Jl Sektor 14 Rt/Rw 004/010 no.25. Sudimara Jaya, Ciledug, Tangerang', 'SMAN 5 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089520527288', 'deliyanti2012@gmail.com', 'Kesehatan Masyarakat UIN', 'Lunas'),
(169, '2018-01-18 23:03:44', '2018-01-19', 'Alvina Aulia', '058-02-17318', 0, 'Depok', '2001-03-19', 'Jln. Cirendeu Indah 1 No.60 Rt 04/Rw 01', 'SMAN 8 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '0895345022771', 'alvinaaaulia@gmail.com', 'Pendidikan Matematika & UNJ', 'Lunas'),
(170, '2018-01-19 00:58:13', '2018-01-19', 'susilawati', '', 0, 'tangerang,', '2000-04-07', 'jln.h.som rt 05/01 kec:pondok aren,kel: pondok pucung nomer rumah: 39 ', 'smk islamiyah ciputat ', 'IPS', 'SOSHUM', 2, '089674144534', 'susi88537@gmail.com', 'agama ', ''),
(171, '2018-01-19 01:07:47', '2018-01-19', 'Tri Wahyuni', '230-05-17318', 0, 'Tangerang', '1999-10-12', 'Jln. H. Som rt 05/01 Pd. Pucung, Pd. Aren, Tangsel', 'SMKN 2 Tangsel', 'IPS', 'SOSHUM', 2, '08971022173', 'wewewtri12@gmail.com', 'In syaa Allah Akuntansi Universitas Indonesia', 'Lunas'),
(172, '2018-01-19 05:36:28', '2018-01-19', 'nurhasanah', '', 0, 'tangerang', '2000-05-22', 'jl. aria putrano 43', 'smk islamiyah ciputat ', 'IPS', 'SOSHUM', 2, '081319323413', 'nurhasanaah96@gmail.com', 'agama islam', ''),
(173, '2018-01-19 05:38:00', '2018-01-19', 'Novita sri indah permata sari', '059-02-17318', 1, 'Indranayu', '1999-11-18', 'Setu residence', 'SMAN 12 Tangsel', 'IPA', 'SAINTEK', 1, '083824321749', 'Novitasri50505@gmail.com', 'Agribisnis & ipb', 'Lunas'),
(174, '2018-01-19 05:39:22', '2018-01-19', 'Lili Rahmawati', '060-02-17318', 0, 'Tangerang', '2000-06-06', 'Babakan smaval lengkong gudang barat rt. 02 rw. 02', 'Sma Negeri 12 Kota Tangerang Sel', 'IPA', 'SAINTEK', 1, '0895339904583', 'lilirahma52@gmail.com', 'teknologi pangan, IPB', 'Lunas'),
(175, '2018-01-19 05:41:25', '2018-01-19', 'Devi Rachmawati', '', 0, 'Tangerang', '2000-12-10', 'Jl. Gempol raya, kunciran 01/01 no 7, pinang, tangerang, banten', 'SMA N 12 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '089680095659', 'devirachmawati1012@gmail.com', 'ilmu komunikasi', ''),
(176, '2018-01-19 05:46:03', '2018-01-19', 'Nadila Ardila', '', 0, 'tangerang', '2000-11-20', 'jl. pinang Rt 01/14 pamulang timur No. 42', 'smk islamiyah ciputat ', 'IPS', 'SOSHUM', 2, '08986050265', 'nadilapark2011@gmail.com', 'akuntansi ', ''),
(177, '2018-01-19 05:54:20', '2018-01-19', 'Indirahma Putri Zahra', '231-05-17318', 0, 'Jakarta', '2000-07-25', 'Jl. Legoso Raya Rt. 04/11 Pisangan-Ciputat Timur', 'SMAN 8 TANGSEL', 'IPC', 'SOSHUM', 2, '083871392279', 'indirahmap@gmail.com', 'Perbankan syariah & ilmu gizi', 'Lunas'),
(178, '2018-01-19 06:45:42', '2018-01-19', 'Olivya Putri Juha', '232-05-17318', 0, 'Cirebon 18 Mei 2000', '2018-01-19', 'Kab. Tangerang. Kec. Cisauk\r\nGriya Suradita Indah blok K8 no.2', 'SMAN 28 kab. Tangerang', 'IPS', 'SOSHUM', 2, '089647225925', 'olivyajuha05@gmail.com', 'Perbankan Syariah', 'Lunas'),
(179, '2018-01-19 13:18:51', '2018-01-19', 'Raini Rahmi', '233-05-17318', 0, 'Garut', '2000-11-08', 'Perumahan Amarapura Blok E4/11. Serpong, Tangerang Selatan', 'SMAN 28 KAB.TANGERANG', 'IPS', 'SOSHUM', 2, '089630231302', 'cyrusmodd@gmail.com', 'Kesejahteraan Sosial, UIN', 'Lunas'),
(180, '2018-01-20 00:07:03', '2018-01-20', 'SHAHANAZ CAHYA PUSPA', '', 0, '13', '2000-01-13', 'Jalan inpres 4 no 27.', 'SMA NEGERI 12 TANGERANG', 'IPS', 'SOSHUM', 2, '081298189985', 'shahanazcahyapuspa@gmail.com', 'Management UIN', ''),
(181, '2018-01-20 13:34:31', '2018-01-20', 'Desi Suci Ramadhani ', '061-02-17318', 1, 'Tangerang ', '1999-12-15', 'Perum. Griya Serpong Asri blok F3 No.8 Rt 01/Rw 05, Suradita, Cisauk, Kab. Tangerang ', 'SMK Kesehatan Riksa Indrya ', 'Lainnya', 'SAINTEK', 1, '089519725626', 'desisuciramadhani.dsr@gmail.com', 'Kesehatan Masyarakat & UIN', 'Lunas'),
(182, '2018-01-20 13:58:06', '2018-01-20', 'Dinda putri aulia', '062-02-17318', 0, 'kuningan', '2000-08-21', 'Jl h taiman barat ii rt 1 rw 2 no 32 kel gedong kec pasar rebo jakarta timur', 'Man 6 jakarta', 'IPA', 'SAINTEK', 1, '083876782151', 'dandheyxx@gmail.com', 'Perawat', 'Lunas'),
(183, '2018-01-20 15:06:22', '2018-01-20', 'Faranissa Novandrina', '063-02-17318', 1, 'Jakarta', '2000-11-21', 'Jalan Raya Tengah, Gang Damai No. 73 Batu Ampar, Kramat Jati, Jakarta Timur', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '081281067100', 'faranova21@gmail.com', 'Kedokteran & UIN, Kedokteran & UPN Veteran Jakarta, Teknik Perminyakan & UPN Jogjakarta', 'Lunas'),
(184, '2018-01-20 23:00:07', '2018-01-21', 'Agung Pangestu', '064-02-17318', 1, 'Jakarta ', '2000-07-06', 'Jl. H Zen Sarmili \r\nGudang air,  Rt 13/ Rw 02 \r\nKel.Rambutan \r\nKec.Ciracas', 'Man 6 Jakarta ', 'IPA', 'SAINTEK', 1, '082260874716', 'agungpangestu0262@gmail.com', 'Teknik sipil & UNJ', 'Lunas'),
(185, '2018-01-21 01:38:11', '2018-01-21', 'Nur Kholisah', '234-05-17318', 0, 'Jakarta', '2000-05-09', 'Jalan bahagia 8 no 68 rt 002/006 larangan kreo Selatan tanggerang', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '083807751467', 'nurkholisahnur@gmail.com', 'Pendidikan bahasa arab & UIN JAKARTA', 'Lunas'),
(186, '2018-01-21 03:24:31', '2018-01-21', 'Mutiara fadhillah', '106-02-17318', 1, 'Jakarta', '2000-02-12', 'Komp. Bumi serpong residence blok B 53 pamulang 2 tangsel', 'SMK kesehatan letris indonesia 2', 'Lainnya', 'SAINTEK', 1, '089642782321', 'mutiarafadhilla12@gmail.com', 'Saintek', 'Lunas'),
(187, '2018-01-21 03:41:59', '2018-01-21', 'Syahdah Haq', '235-05-17318', 0, 'Jakarta', '2000-02-20', 'Jl. H. Sholeh 1 Rt.08/008 Sukabumi Selatan, Kebon Jeruk, Jakarta Barat', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '083895178920', 'syahdahh@gmail.com', 'UIN Syarif Hidayatullah Jakarta, Tarbiyah (Pendidikan B.Arab dan PGRA)', 'Lunas'),
(188, '2018-01-21 04:12:27', '2018-01-21', 'Meyda Nurulcahyani', '065-02-17318', 0, 'Tasikmalaya', '2000-01-07', 'Griya Serpong Asri Blok G5 No.3 Rt 01/Rw 07 Kab. Tangerang Kec. Cisauk', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '085697387340', 'meyda.nurulcahyani07@gmail.com', 'Ilmu Keperawatan & UIN', 'Lunas'),
(189, '2018-01-21 05:10:29', '2018-01-21', 'Raihan Muyassar Azzahra', '236-05-17318', 0, 'Jakarta', '2000-03-20', 'Jl. Bunder 30 004/03 kp. Pondok Jati Utara, Jurang Mangu barat, Pondok Aren, Tangerang Selatan, Banten', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '089614590140', 'raihan.azzahra2003@gmail.com', 'Manajemen Dakwah UIN Syarifhidayatullah Jakarta', 'Lunas'),
(190, '2018-01-21 09:32:10', '2018-01-21', 'Afifah Wulandari ', '066-02-17318', 0, 'Jakarta', '2000-06-23', 'Jl. Kampung kramat rt004 /015 no 40 cililitan jakarta timur ', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '085805761504', 'ffhwulandari@gmail.com', 'Kesehatan masyarakat - UIN', 'Lunas'),
(191, '2018-01-21 13:27:56', '2018-01-21', 'Ahmad Nurhuda', '237-05-17318', 0, 'Tangerang', '2000-02-14', 'Jln. Japos Raya, Rt. 003/03, Pondok Jati Utara, Jurang Mangu Barat, Pondok Aren, Tangerang Selatan, Banten.', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '08121164456', 'ahmad.huda11.an@gmail.com', 'PAI & UIN Jakarta', 'Lunas'),
(192, '2018-01-21 14:23:24', '2018-01-21', 'Nabila Rasyidah', '238-05-17318', 0, 'Tangerang', '2000-03-01', 'Jl. KH Mas Mansyur Rt. 004/015 No. 55 Kunciran Indah Pinang Tangerang', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '085775278863', 'nabilarasyeed@gmail.com', 'Manajemen Dakwah & UIN Jakarta', 'Lunas'),
(193, '2018-01-21 21:40:34', '2018-01-22', 'Ridha Vidiah Rachmatika ', '239-05-17318', 0, 'Tangerang, 29 maret 2000', '2000-03-29', 'Jl. Sawo 2 RT 03/007 no. 49', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '083875228142', 'ridhavidiah32@gmail.com', 'Hubungan internasional - UIN', 'Lunas'),
(194, '2018-01-21 23:36:59', '2018-01-22', 'Maulidiya Rizkita Putri', '240-05-17318', 0, 'Jakarta', '2000-06-15', 'Jl.pondok aren II gang sate rt 011/03 no.49 tangerang selatan', 'MAN 19 JAKARTA ', 'Agama', 'SOSHUM', 2, '089514775890', 'maulidyarizkita15@gmail.com', 'PAI & UIN JAKARTA ', 'Lunas'),
(195, '2018-01-21 23:54:17', '2018-01-22', 'Zahra Aulia Rizki', '067-02-17318', 1, 'Tangerang ', '2000-10-30', 'Jl. Astek lengkong gudang barat serpong tangsel ', 'Smk kesehatan riksa indrya', 'IPA', 'SAINTEK', 1, '089626017118', 'zahraar947@gmail.com', 'Perawat & universitas islam negeri jakarta (UIN) ', 'Lunas'),
(196, '2018-01-22 00:05:06', '2018-01-22', 'Dini Ariqah', '068-02-17318', 0, 'Tangerang ', '2000-09-20', 'Gang salem 2 serpong tangsel', 'Smk kesehatan riksa indrya', 'IPA', 'SAINTEK', 1, '08562184360', 'ariqahdini@gmail.com', 'Perawat & universitas islam negeri jakarta (UIN) ', 'Lunas'),
(197, '2018-01-22 00:10:42', '2018-01-22', 'Wyndy rosiana', '069-02-17318', 0, 'Brebes', '2000-06-17', 'JL. TPA Kademangan No.A4 serpong', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '0895610454670', 'windyrosiana17@gmail.com', 'Kesehatan masyarakat & UIN jakarta', 'Lunas'),
(198, '2018-01-22 00:42:52', '2018-01-22', 'Nada Jidzrustsiqoh', '241-05-17318', 0, 'Tangerang', '2000-04-27', 'Jl.Kh. Wahid Hasyim Jurang Mangu Timur Rt.003/004 no. 94a Tangerang Selatan', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '083872678711', 'Nadajidzrustsiqoh@gmail.com', 'Pendidikan Bahasa Arab & UIN JAKARTA', 'Lunas'),
(199, '2018-01-22 00:45:58', '2018-01-22', 'Nadifa Ma Hira', '242-05-17318', 0, 'Jakarta', '2000-06-28', 'Jl. Masjid darul falah Gg. H mugeni petukangan utara', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '088808065453', 'nadifamhra@gmail.com', 'Pendidikan Guru Madrasah Ibtidaiyah', 'Lunas'),
(200, '2018-01-22 00:46:34', '2018-01-22', 'Aulya febrianti', '243-05-17318', 0, 'Jakarta', '2000-02-23', 'Jln Manunggal II rt 003/02 no 43 petukangan selatan, jakarta selatan, pesanggarahan, DKI jakarta', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '081317483361', 'Aulyafebrinti23@gmail.com', 'Pendidikan guru madrasah ibtidaiyah', 'Lunas'),
(201, '2018-01-22 00:48:46', '2018-01-22', 'Nisa Amalia', '425-05-17318', 0, 'Jakarta', '2000-01-05', 'Jalan kebon mangga 1 rt 01/03', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '083808505672', 'nisaamalia900@gmail.com', 'UIN Syarif Hidayatullah Jakarta, Tarbiyah (PGMI)', 'Lunas');
INSERT INTO `tryout_sbmptn_parsial` (`id`, `time`, `tgl_daftar`, `nama`, `no_peserta`, `kehadiran`, `tempat_lahir`, `tgl_lahir`, `alamat`, `sekolah`, `jurusan`, `pilihan`, `id_pilihan`, `no_hp`, `email`, `minat`, `pembayaran`) VALUES
(202, '2018-01-22 00:49:39', '2018-01-22', 'Ayunita Rahim', '244-05-17318', 0, 'Jakarta', '2000-06-27', 'Jalan H . Gaim No . 40 Rt 012/002 Petukangan Utara Pesanggrahan Jakarta Selatan 12260', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '083877720143', 'ayunitarahim@gmail.com', 'Pendidikan Bahasa Arab & UIN Jakarta', 'Lunas'),
(203, '2018-01-22 00:50:30', '2018-01-22', 'Syahidati Rizki Amalia', '245-05-17318', 0, 'Sragen, 22 April 2001', '2001-04-22', 'Jl. Raden Fatah Gg. Larisma rt 02 rw 09 no. 89 ciledug ', 'Man 19 Jakarta', 'Agama', 'SOSHUM', 2, '089677430144', 'Damalia700@gmail.com', 'Psikologi UIN, hukum keluarga UIN, ilmu perpustakaan UI ', 'Lunas'),
(204, '2018-01-22 00:51:31', '2018-01-22', 'Desy Noviani', '246-05-17318', 0, 'Tangerang ', '2000-11-26', 'Jln.pesantren al-ma\'mur rt 03/003', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '085711342249', 'desynoviani26@gmail.com', 'Perbankan syariah & UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(205, '2018-01-22 00:51:47', '2018-01-22', 'Syifa Nurul Rifdah', '247-05-17318', 0, 'Tangerang ', '2000-05-09', 'Jln.lembang baru 1 rt 01/010 ciledug Tangerang', 'MAN 19 JAKARTA ', 'Agama', 'SOSHUM', 2, '089528564776', 'shesyifanurul@gmail.com', 'Pgmi & uin, Pendidikan bhs indo & untirta,  Pgsd & univ sebelas maret', 'Lunas'),
(206, '2018-01-22 00:52:02', '2018-01-22', 'Ismi Aulia Sabrina', '248-05-17318', 0, 'Jakarta', '2000-06-11', 'Jl. Sektor Raya Pondok Aren-Pondok Jaya RT 001/03 Tangerang Selatan Banten', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '085711123527', 'ismiauliasabrina.yahoo.co.id@gmail.com', 'Pendidikan Bahasa Inggris & UIN SYARIF HIDAYATULLAH JAKARTA', 'Lunas'),
(207, '2018-01-22 00:53:44', '2018-01-22', 'Syavina Arianty', '249-05-17318', 0, 'Tangerang', '1999-12-19', 'Pd. Karya jl. Pondok Betung raya GG.nisan RT 002/02 no.39', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '085654420917', 'vinaariyanti99@gmail.com', 'Pendidikan bahasa Inggris & UIN JAKARTA', 'Lunas'),
(208, '2018-01-22 00:54:44', '2018-01-22', 'Zahrotul islamiyah', '250-05-17318', 0, 'Jakarta,09 oktober 2000', '2000-10-09', 'Jl.h daiman gg.h risin rt.005/04 kreo selatan larangan kota tangerang.', 'Man 19 jakarta selatan ', 'Agama', 'SOSHUM', 2, '083893660302', 'zahrotulislamiyah580@gmail.com', 'Pendidikan olahraga & UNJ', 'Lunas'),
(209, '2018-01-22 01:04:42', '2018-01-22', 'Hafifah Indah Septi Yerni', '251-05-17318', 0, 'Jakarta', '2000-09-17', 'Jl. Pesantren Cluster Ceger Greenvil 2 No.7', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '081398860819', 'Hafifahindah.sy@gmail.com', 'Pendidikan Bahasa Arab', 'Lunas'),
(210, '2018-01-22 01:10:28', '2018-01-22', 'Regita Septiani Putri', '252-05-17318', 0, 'Pekalongan', '2000-09-06', 'Jl Sawo Gg Madih no 22 rt 07/07 Cipadu Larangan Tangerang ', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '+6285881886552', 'regita3424@gmail.com', 'ILMU HUBUNGAN INTERNASIONAL & UIN JAKARTA ', 'Lunas'),
(211, '2018-01-22 01:19:06', '2018-01-22', 'Siti Holijah', '253-05-17318', 0, 'Jakarta', '2000-06-28', 'Jln. Gg. Haji joan rt:002/04 no. 36. Kel. Pondok karya kec. Pondok aren, Tangerang Selatan, Banten. ', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '089680517145', 'halimahtussad@gmail.com', 'Pendidikan Bahasa Indonesia (UIN JAKARTA). ', 'Lunas'),
(212, '2018-01-22 01:33:10', '2018-01-22', 'Dwi Putri Anjani', '', 0, 'Bogor', '2000-03-18', 'Jalan sukaaari II rt 004/003, serua indah, ciputat', 'SMAN 1 KOTA TANGERANG SELATAN', 'IPS', 'SOSHUM', 2, '087873498543', 'anjani123.dpa@gmail.com', 'Bisnis islam - Universitas Indonesia', ''),
(213, '2018-01-22 02:15:01', '2018-01-22', 'Zanastia Sukmayanti', '070-02-17318', 0, 'Tangerang', '2000-01-28', 'Komplek mabad kiwal rt 4 rw 11 no. 76 rempoa , ciputat timur , tangerang selatan', 'SMAN 8 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081906720735', 'zanassukma@gmail.com', 'Kesehatan masyarakat UIN', 'Lunas'),
(214, '2018-01-22 02:35:59', '2018-01-22', 'Chessi Oktavianti', '254-05-17318', 0, 'Jakarta', '2000-10-17', 'Jl. Hoscokroaminoto Gg. Haji Sipin rt/w 04/04 no.27 Kec. Karang tengah, Kel. Karang timur Kota Tangerang, Kode Pos 15157', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '085887712280', 'chessiazizah@gmail.com', 'Pendidikan Bahasa Indonesia & UIN Jakarta', 'Lunas'),
(215, '2018-01-22 02:45:27', '2018-01-22', 'Dinda Soya Maulani', '255-05-17318', 0, 'Jakarta', '2000-06-23', 'Jln. Keramat Lebak Rt 01/Rw 08 Kec. Mustika Jaya Bekasi ', 'SMK Bina Prestasi', 'Lainnya', 'SOSHUM', 2, '0895330357347', 'soyadinda@gmail.com', 'Psikologi & UIN', 'Lunas'),
(216, '2018-01-22 02:49:15', '2018-01-22', 'Ananda Estuanti', '', 0, 'Baturaja ', '2000-10-30', 'Ds.sumur batu kp.babakan jengkol rt 01/01 no.21 sentul babakan madang Bogor', 'SMAN 1 BABAKAN MADANG', 'IPA', 'SAINTEK', 1, '089519827076', 'Aest@gmail.com', 'biologi UIN', ''),
(217, '2018-01-22 02:55:10', '2018-01-22', 'Dwiki fathul hakim', '', 0, 'jakarta', '2000-06-22', 'Perum griya alam sentul blok b7 no.39 02/06', 'SMAN 1 BABAKAN MADANG', 'IPA', 'SAINTEK', 1, '0895366130715', 'dwikifathul2203@gmail.com', 'biologi UIN', ''),
(218, '2018-01-22 03:09:41', '2018-01-22', 'Trisna Dwiyanti', '', 0, 'Pemalang , 4 februari 2000', '2018-01-22', 'Kp . Kandang lambangsari 04 RT 01 RW 005 No 16 .17315 tambun selatan', 'Smk bina prestasi', 'Lainnya', 'SOSHUM', 2, '089516065208', 'trisnadwiyanti39@gmail.com', 'Ilmu dakwah dan komunikasi - UIN Jakarta', ''),
(219, '2018-01-22 04:24:31', '2018-01-22', 'Dwi Meilina Ashbahna', '', 0, 'Tangerang', '2000-05-07', 'Kp.  Jelupang RT. 17/06 No. 60 Kelurahan Jelupang,  Kecamatan Serpong Utara, Kota Tangerang Selatan-Banten', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '089656158700', 'Dwimeilinaaa@gmail.com', 'Kesehatan masyarakat & UIN jakarta', ''),
(220, '2018-01-22 07:04:34', '2018-01-22', 'Anreva Nur Maulidya', '', 0, 'Jakarta', '2000-07-17', 'Jl. Batu Permata rt 016 rw 05 no. 49 kel. Batu Ampar, kec. Kramat Jati Jakarta Timur', 'MAN 6 JAKARTA', 'IPS', 'SOSHUM', 2, '089651869007', 'anrevanurmal07@gmail.com', 'Pendidikan Agama Islam', ''),
(221, '2018-01-22 07:17:00', '2018-01-22', 'ANISAH FITRIANI', '071-02-17318', 0, 'PEKALONGAN', '2000-05-21', 'Jl. Talas 1 RT:01 RW:10 NO:C8 Pondok Cabe ilir pamulang ', 'SMAN 8 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '+6281510683707', 'anisaftrni1@gmail.com', 'Argibisnis, Proteksi Tanaman (IPB) ', 'Lunas'),
(222, '2018-01-22 10:59:39', '2018-01-22', 'Ricky Sutomo', '', 0, 'Sungaipakning', '1999-02-16', 'JL. U, kost U21, kamar 5D, palmerah,Jakarta Barat, 11480, DKI Jakarta', 'SMAN 1 Bukit Batu', 'IPA', 'SAINTEK', 1, '082172294726', 'rickysutomo6@gmail.com', 'TEKNIK KIMIA UGM', ''),
(223, '2018-01-22 12:27:09', '2018-01-22', 'Ihda Laila ', '256-05-17318', 0, 'Jakarta ', '2000-08-10', 'Jalan Masjid Muyassarin Rt 01 Rw 01 No.47, Cipulir, Kebayoran Lama, Jakarta Selatan ', 'MAN 19 Jakarta ', 'Agama', 'SOSHUM', 2, '085885099514', 'laila.ihda@gmail.com', 'Pendidikan Agama Islam &  UIN Syarif Hidayatullah ', 'Lunas'),
(224, '2018-01-22 12:52:34', '2018-01-22', 'Ivana adalta rahmaiddo', '257-05-17318', 0, 'Surakarta ', '2000-05-03', 'Jl kp pulo rt 02/05 kecamatan makasar kelurahan pinang ranti Jakarta Timur ', 'MAN 6 JAKARTA', 'IPA', 'SOSHUM', 2, '089506230987', 'altaajja096@gmail.com', 'Hukum dan psikologi UI', 'Lunas'),
(225, '2018-01-22 12:59:07', '2018-01-22', 'Alika Putri utami', '258-05-17318', 0, 'Tangerang ', '2000-03-07', 'Jl h. Toran rt 01 rw 01 bintaro sektor 1 kel. Rengas kec. Ciputat Timur, Tangerang ', 'MAN 19 JAKARTA ', 'Agama', 'SOSHUM', 2, '083874412423', 'alikaputriutami7@gmail.com', 'Pendidikan guru madrasah ibtidaiyah & uin', 'Lunas'),
(226, '2018-01-22 13:11:42', '2018-01-22', 'Yuli Nur Latifah', '072-02-17318', 1, 'Brebes, 15 juli 2000', '2000-07-15', 'KP. BABAKAN SEMAPAL, LENGKONG GUDANG TANGERANG SERPONG', 'SMK KESEHATAN RIKSA INDRYA', 'Lainnya', 'SAINTEK', 1, '087885410759', 'nurlatiffayuli@gmail.com', 'Ilmu Keperawatan & Saintek', 'Lunas'),
(227, '2018-01-22 14:02:42', '2018-01-22', 'Salma nur sa\'adah', '259-05-17318', 0, 'Jakarta', '2000-02-12', 'Jl. Albasor no 62 kel. Dukuh kec. Keramat jati, jakarta timur', 'MAN 6 JAKARTA', 'IPS', 'SOSHUM', 2, '083806064052', 'Salmanursaadah62@gmail.com', 'Sastra inggris, uin syarif hidayatullah', 'Lunas'),
(228, '2018-01-22 14:05:04', '2018-01-22', 'Afqia Santika ', '260-05-17318', 0, 'Jakarta ', '2000-04-06', 'Jl. M. Saidi Raya, gg. Mushola, Pet-Sel, Jakarta Selatan ', 'MAN 19 Jakarta ', 'Agama', 'SOSHUM', 2, '085819241858', 'santikaafqia@gmail.com', 'PGMI (UIN syarifhidayatullah) ', 'Lunas'),
(229, '2018-01-22 14:14:51', '2018-01-22', 'Muhamad Andika Baihaqi', '073-02-17318', 0, 'Jakarta', '2000-07-29', 'Gang sirun no.192 rt.02/09 rengas-ciputat timur-tangsel', 'SMA Dua Mei', 'IPA', 'SAINTEK', 1, '089628743173', 'andikabai41@gmail.com', 'Kesehatan Masyarakat & Tarbiyah ( UIN Syarif Hidayatullah )', 'Lunas'),
(230, '2018-01-22 14:38:19', '2018-01-22', 'Ghasyiya Kaifa Syaqima Syahir', '431-05-17318', 0, 'Jakarta', '2001-07-18', 'Jl.Mawar No.7 Rt.01/04\r\nBojongsari Baru, Kota Depok - 16516', 'SMA Negeri 1 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '+628995352446', 'gkaifas18@gmail.com', 'Hub.Internasional UI, Sas.Perancis UI, Hub.Internasional UPNV Jakarta', 'Lunas'),
(231, '2018-01-22 14:42:40', '2018-01-22', 'Sabrina Pebriani', '', 0, 'Jakarta', '2000-01-28', 'Jln.Talas II Rt.03/01 Pondok Cabe Ilir, Pamulang, Tangerang Selatan', 'SMA Negeri 1 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '+6289508779755', 'irmasuryani1822@gmail.com', 'Sosiologi UIN Jakarta, PG Paud UNJ', ''),
(232, '2018-01-22 15:16:41', '2018-01-22', 'WINA WULANDARI', '074-02-17318', 0, 'JAKARTA', '2000-11-05', 'JL.H NUSI RT 004/02 NO.46 C KEL:BATU AMPAR KEC:KRAMATJATI JAKARTA TIMUR ', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '0896-3548-9025', 'winawulandari05@gmail.com', '1.FARMASI - UIN JAKARTA 2.ILMU KEPERAWATAN - UIN JAKARTA 3.ILMU GIZI - UPNVJ', 'Lunas'),
(233, '2018-01-22 15:50:37', '2018-01-22', 'Maya Ramadhani Yusuf', '', 0, 'Jakarta', '1999-12-12', 'jl. Flamboyan 1 no.12 blok h-4 Bumi Malaka Asri 3,kelurahan Malaka sari, duren sawit , Jakarta Timur', 'SMAN 71 Jakarta', 'IPA', 'SAINTEK', 1, '085778730193', 'mayarmdhny@gmail.com', 'Fakultas Kedokteran - UI', ''),
(234, '2018-01-23 00:29:35', '2018-01-23', 'syifa khairunnisa', '', 0, 'Jakarta Selatan', '2000-04-19', 'jl. Cilenggang 2 rt.07/03 no.12', 'SMAN 12 Tangsel', 'IPA', 'SAINTEK', 1, '089512057404', 'syifakhairunissa51@gmail.com', 'psikolog & UNPAD', ''),
(235, '2018-01-23 02:26:13', '2018-01-23', 'Salsa shafira', '', 0, 'Jakarta ', '2001-02-18', 'Bukit cikasungka blok EF 1 no 6 kecamatan solear kabupaten tangerang Banten. ', 'Smk kesehatan riksa indrya', 'Lainnya', 'SAINTEK', 1, '087784912294', 'salsashafira94@gmail.com', 'Kesehatan masyarakat', ''),
(236, '2018-01-23 04:51:17', '2018-01-23', 'Mohammad Rafi Adyatma', '075-02-17318', 0, 'Jakarta', '2000-02-05', 'Jl.Strategi 3 Blok A1 No.5A Rt 06/Rw 02 Kav.Hankam Joglo Kembangan Jakarta Barat', 'SMANU MH.Thamrin Jakarta', 'IPA', 'SAINTEK', 1, '0816999934', 'rafiadnan336@gmail.com', 'STIE & ITB', 'Lunas'),
(237, '2018-01-23 06:33:25', '2018-01-23', 'Reja Rizki Iramadzan', '', 0, 'Lebak', '2000-01-19', 'Perumahan bukit tiara blok m4 no 01 desa pasir jaya kec cikupa', 'SMAN 4 KAB TANGERANG', 'IPA', 'SAINTEK', 1, '085215219252', 'rejarzk@gmail.com', 'Ilmu komputer & UGM', ''),
(238, '2018-01-23 12:58:42', '2018-01-23', 'Dhera Paradita', '261-05-17318', 0, 'Tangerang', '2000-11-30', 'Perum Suradita Jl. Sindur 1 blok 1 RT02/04 kec.Cisauk Kab.Tangeranv', 'SMAN 28 Kab. Tangerang', 'IPS', 'SOSHUM', 2, '082213048049', 'deraparadita97@gmail.com', 'Ilmu politik, Universitas Indonesia', 'Lunas'),
(239, '2018-01-23 13:19:04', '2018-01-23', 'aisyah amalia', '262-05-17318', 0, 'jakarta', '2000-03-05', 'komplek villa mutiara, jl. mirah raya blok W no.3', 'SMA N 10 TANGSEL', 'IPS', 'SOSHUM', 2, '089650979631', 'aisyahaamalia@gmail.com', 'psikologi & UIN Jakarta', 'Lunas'),
(240, '2018-01-24 00:52:25', '2018-01-24', 'Fitria yunita', '263-05-17318', 0, 'Tangerang', '1999-12-15', 'Jalan kh dewantara rt 03 rw 015', 'SMAN 10 tangsel', 'IPS', 'SOSHUM', 2, '087788239830', 'Fitriayunitan@gmail.com', 'PGSD & UNJ', 'Lunas'),
(241, '2018-01-24 00:52:39', '2018-01-24', 'Sekar arum sari ', '264-05-17318', 0, 'Tangerang', '2000-07-31', 'Kp.masjid rt 002 rw 03 no.100 ', 'SMAN 10 tangerang selatan', 'IPS', 'SOSHUM', 2, '085813427427', 'Ssekararum33@gmail.com', 'Pendidikan guru sd & UNJ', 'Lunas'),
(242, '2018-01-24 00:55:51', '2018-01-24', 'Siti Mulyaningsih', '265-05-17318', 0, 'Jakarta', '2000-09-23', 'Jl. Wadassari 3 rt 10 rw 02 gg. Kenanga 1 no 6B', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '087875533029', 'siti.mulyaningsih79@icloud.com', 'PGRA (UIN SYARIF HIDAYATULLAH JAKARTA', 'Lunas'),
(243, '2018-01-24 01:01:51', '2018-01-24', 'Aghnina Difia', '266-05-17318', 0, 'Jakarta', '2001-04-06', 'Jl. Masjid darul falah Gg. H. Mugeni Rt:02 Rw:002 No.32 Petukangan Utara Jakarta Selatan Kode pos: 12260', 'MAN19 JAKARTA', 'Agama', 'SOSHUM', 2, '081934106843', 'aghninad@gmail.com', 'Pendidikan Agama Islam & UIN Syarif Hidayatullah ', 'Lunas'),
(244, '2018-01-24 01:25:37', '2018-01-24', 'Elvira Damayanti', '267-05-17318', 0, 'Jakarta ', '2000-01-26', 'Kp. Baru Jl. H. Raidi Rt 10/04 No. 9A1 Sukabumi Selatan Kebon Jeruk Jakarta Barat 11560', 'MAN19 JAKARTA', 'Agama', 'SOSHUM', 2, '087876236316', 'elviradmynti@gmail.com', 'Perbankan Syariah & UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(245, '2018-01-24 01:44:46', '2018-01-24', 'Dina Hanifah', '268-05-17318', 0, 'Jakarta', '2000-04-30', 'Jalan H.Liun Gg.H.Ramin RT/RW 013/011 No.20 Petukangan Utara Jakarta Selatan', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '08978233706', 'dinahanifah30@gmail.com', 'Sastra Inggris & UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(246, '2018-01-24 01:53:45', '2018-01-24', 'Aliftha Aulia Putri ', '269-05-17318', 0, 'Jakarta', '2000-03-30', 'Jl. Masjid Attaqwa rt.003/04 No.36 Larangan Selatan, Tangerang', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '087882383421', 'alifthaauliaputri@gmail.com', 'Komunikasi Penyiaran Islam & UIN Syarif Hidayatullah', 'Lunas'),
(247, '2018-01-24 01:57:21', '2018-01-24', 'Syifa Fauziah ', '270-05-17318', 0, 'Tangerang', '2000-06-06', 'Jln. Sabar raya Petukangan Selatan.', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '083806656500', 'Syifauziahhh06@gmail.com', 'Komunikasi Penyiaran Islam & UIN Syarif Hidayatullah', 'Lunas'),
(248, '2018-01-24 01:57:51', '2018-01-24', 'Tsania Nur Fadilah', '271-05-17318', 0, 'Tangerang,20 oktober 1999', '1999-10-20', 'Jl.rodahias rt008/002 no.17.serpong tangerang selatan.', 'Sman.28.kab.tangerang.', 'IPS', 'SOSHUM', 2, '089502637274', 'tsanianurfadilla36@gmail.com', 'Pendidikan agama islam uin', 'Lunas'),
(249, '2018-01-24 02:04:17', '2018-01-24', 'Nurul amalia', '272-05-17318', 0, 'Tangerang', '2000-06-30', 'Jl. Kebon kopi Rt 08/04 No: 36A kel.pondok betung kec.pondok aren ', 'MA Negeri 19 Jakarta', 'Agama', 'SOSHUM', 2, '085921538870', 'nurulamalia3058@gmail.com', 'Hukum keluarga, UIN Jakarta', 'Lunas'),
(250, '2018-01-24 02:04:27', '2018-01-24', 'Alia Adiba ', '273-05-17318', 0, 'Jogjakarta 14', '2000-05-14', 'Jalan prof dr hamka gaga larangan gang cempaka buntu rt02 /10', 'Man 19 Jakarta ', 'Agama', 'SOSHUM', 2, '08569878042', 'aliaadiba51@gmail.com', 'Humaniora(sejarah peradaban islam', 'Lunas'),
(251, '2018-01-24 02:05:15', '2018-01-24', 'Witri Wawasanti ', '274-05-17318', 0, 'Jakarta', '2000-05-23', 'Jln. Pondok Aren rt.010/01 No.157', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '08977792642', 'witriwawa23@gmail.com', 'PGMI & UIN Syarif Hidayatullah', 'Lunas'),
(252, '2018-01-24 02:07:07', '2018-01-24', 'Nadila Pebriani', '275-05-17318', 0, 'Cilacap', '2000-02-13', 'Jln. Bambu rt.001/07 No.14', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '083812961216', 'pebrianinadila@gmail.com', 'Sosiologi & UIN Syarif Hidayatullah', 'Lunas'),
(253, '2018-01-24 02:09:06', '2018-01-24', 'Laila Nur Azizah', '276-05-17318', 0, 'Tangerang', '2000-10-08', 'Jln. SD Inpres rt.002/07 No.71', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '081384361144', 'lailanurazizahhh@gmail.com', 'Jurnalistik & UIN Syarif Hidayatullah', 'Lunas'),
(254, '2018-01-24 02:11:14', '2018-01-24', 'Khairun Nissa', '277-05-17318', 0, 'Jakarta', '1999-12-02', 'Jln. Cendrawasih rt.009/04 No.13 Sukabumi Utara, Jakarta Barat', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '08991171364', 'ichakhairunnisa02@gmail.com', 'Management Pendidikan & UIN Syarif Hidayatullah', 'Lunas'),
(255, '2018-01-24 02:15:28', '2018-01-24', 'Amira Yustisia', '278-05-17318', 0, 'Jakarta,14 Juni 2000', '2018-01-24', 'Jl Bahagia RT 004 RW 02 No 33', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '083807574580', 'amirayustisia14@gmail.com', 'Perbankan syariah Uin Jakarta', 'Lunas'),
(256, '2018-01-24 02:22:20', '2018-01-24', 'Septiana Adawiah', '279-05-17318', 0, 'Tangerang', '2000-09-07', 'Jl. Unta raya no. 46 Rt 01/06 kel. Pdk ranji kec. Ciputat timur', 'MA Negeri 19 Jakarta', 'Agama', 'SOSHUM', 2, '087881881522', 'septid07@gmail.com', 'KPI, UIN jakarta', 'Lunas'),
(257, '2018-01-24 02:25:31', '2018-01-24', 'Desi Lestari', '434-05-17318', 0, 'Tegal,04 Juni 2000', '2018-01-24', 'Jl AMD V NO 27 Petukangan Utara', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '087883488121', 'desilestari030600@gmail.com', 'Tarbiyah PBSI', 'Lunas'),
(258, '2018-01-24 02:52:48', '2018-01-24', 'Ria Anggiani', '280-05-17318', 0, 'Jakarta', '1999-12-24', 'Jalan Haji Yamin rt03 rw01 no.52 Petukangan Utara', 'Madrasah Aliyah Negeri 19', 'Agama', 'SOSHUM', 2, '08997555929', 'Riaanggiani99@gmail.com', 'PAI,PGRA dan UIN Yogyakarta,Jakarta ', 'Lunas'),
(259, '2018-01-24 03:00:55', '2018-01-24', 'Nur afifah andriyani', '281-05-17318', 0, 'Jakarta', '2000-03-22', 'Jl.h.ilyas no.4 rt.001/010 petukangan utara jakarta selatan', 'Madrasah Aliyah Negeri 19', 'Agama', 'SOSHUM', 2, '083899727310', 'nurafifah.yani@gmail.com', 'Teknik,PGRA & UIN yogyakarta,jakarta', 'Lunas'),
(260, '2018-01-24 03:08:01', '2018-01-24', 'Putri Nisfu Nurhayat', '421-05-17318', 0, 'Tangerang', '1999-11-23', 'Jln. Tanah Seratus gg swadaya 2 rt.004/03 No.40 Sudimara Jaya, Ciledug', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '083832749274', 'putrinurhayat.pn@gmail.com', 'PGMI & UIN Syarif Hidayatullah', 'Lunas'),
(261, '2018-01-24 03:10:58', '2018-01-24', 'Aqila Fadia Haya', '282-05-17318', 0, 'Tangerang ', '1999-12-13', 'Jalan Raya Pondok Jaya rt.004/03 No.01, Tangerang Selatan', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '0895338932319', 'aqilafdhy@gmail.com', 'PGMI & UIN Syarif Hidayatullah ', 'Lunas'),
(262, '2018-01-24 03:13:19', '2018-01-24', 'Shofiatul Afkar ', '422-05-17318', 0, 'Cianjur', '2000-10-31', 'Jln. Dr. Setia Budi Kebon Manggis rt.001/04 No.15, Pondok Kacang Timur ', 'MAN 19 JAKARTA SELATAN', 'Agama', 'SOSHUM', 2, '089603527378', 'shofiatulafkar31@gmail.com', 'Psikologi & UIN Syarif Hidayatullah', 'Lunas'),
(263, '2018-01-24 04:08:00', '2018-01-24', 'Rizki Daffa Pratama', '283-05-17318', 0, 'Lampung Gisting', '1999-11-26', 'Jl wadassari 3 rt 05 rw 02 pondok betung pondok aren tanggerang selatan', 'SMAIT YAPIDH', 'IPS', 'SOSHUM', 2, '081280731105', 'rizkidaffa25222610@icloud.com', 'Sastra Arab UIN SYARIF HIDAYATULLAH JAKARTA', 'Lunas'),
(264, '2018-01-24 06:12:59', '2018-01-24', 'Halimah tussakdiah', '284-05-17318', 0, 'tangerang, 31 desember 1997', '1997-12-31', 'Jl pondok betung Raya gg h. joan Rt 002/04 No:36 pondok karya pondok aren Tangerang Selatan. ', 'Man 19 jakarta selatan', 'Agama', 'SOSHUM', 2, '087876823125', 'Halimahtussakdiah78858@gmail.com', 'Pendidikan bahasa indonesia dan sejarah islam', 'Lunas'),
(265, '2018-01-24 06:15:16', '2018-01-24', 'Nada Naila karimah', '285-05-17318', 0, 'Tangerang ', '2000-06-11', 'Jl. Taman asri lama gg. Al hidayah no. 93 cipadu jaya, Tangerang Banten. Kode pos : 15155', 'Man 19 jakarta', 'Agama', 'SOSHUM', 2, '083808865004', 'nadanaila77@gmail.com', 'Hukum keluarga, UIN Syarif hidayatullah', 'Lunas'),
(266, '2018-01-24 10:59:06', '2018-01-24', 'Aulia lintang sinawang', '076-02-17318', 1, 'Tangerang', '2000-08-15', 'Jl. Swadaya 001/02 no 194 kelurahan pondok karya kecamatan pondok aren kabupaten tangerang selatan 15225', 'MAN 19 Jakarta', 'IPA', 'SAINTEK', 1, '081387556311', 'aulialintangsinawang@gmail.com', 'Teknik informatika & UIN jakarta ', 'Lunas'),
(267, '2018-01-24 11:08:05', '2018-01-24', 'Amrulloh Khoiru Sya\'ban', '077-02-17318', 0, 'Tangerang', '1999-11-30', 'Jl. Pondok Betung Raya Rt 002/04 No.48 Pondok Karya, Pondok Aren, Tangerang Selatan, Banten', 'MAN 19 Jakarta', 'IPA', 'SAINTEK', 1, '085885373730', 'amrullohkhsy@gmail.com', 'Kedokteran', 'Lunas'),
(268, '2018-01-24 12:22:36', '2018-01-24', 'Zalfa Putri Aulia', '286-05-17318', 0, 'Jakarta', '2000-06-20', 'Jl. Persatuan Gg.Fathurrahman 1 Rt. 002/04 No.41 Sukabumi Selatan, Kebon Jeruk, Jakarta Barat, DKI Jakarta', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '085668155157', 'zalfaputri20@gmail.com', 'Pendidikan Guru MI/SD', 'Lunas'),
(269, '2018-01-24 13:45:28', '2018-01-24', 'Ilham Pauji', '192-02-17318', 0, 'Bogor', '1998-07-24', 'Kp.Bedahan RT.006/RW.010 Kel.Pabuaran Kec.Cibinong', 'MA Al-Jihad', 'IPA', 'SAINTEK', 1, '087869021832', 'ilhampauji56@gmail.com', 'Sastra Arab & UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(270, '2018-01-24 13:49:49', '2018-01-24', 'Narita Salsabila', '', 0, 'Jakarta', '2001-07-23', 'Abdul Ghani 1 RT.004/RW.002 kel.Kalibaru kec.Cilodong, Depok', 'MA Al-Jihad', 'IPA', 'SAINTEK', 1, '089692322082', 'ismayamutiara23@gmail.com', 'Sastra Inggris & UIN Syarif Hidayatullah Jakarta', ''),
(271, '2018-01-24 14:33:59', '2018-01-24', 'Errin Melliyana Luffiani', '078-02-17318', 0, 'Tangerang', '2000-03-18', 'Jl. Bambu Kuning RT 001/RW 04 NO: 68A , Kel. Pondok Betung, Kec. Pondok Aren, Kab. Tangerang Selatan, Prov. Banten', 'MAN 19 JAKARTA', 'IPA', 'SAINTEK', 1, '081383429458', 'errinmeliyana@gmail.com', 'Agronomi IPB', 'Lunas'),
(272, '2018-01-24 14:52:58', '2018-01-24', 'Nurul Fikri Wijanarko', '', 0, 'Tangerang', '2000-06-01', 'Jl.H.Dirin Rt01/04 Peninggilan Selatan,Ciledug, Tangerang', 'SMAN 13 TANGERANG', 'IPA', 'SAINTEK', 1, '081917680436', 'nfikriwijanarko01@gmail.com', 'Ilmu Kelautan, UNPAD', ''),
(273, '2018-01-24 23:39:42', '2018-01-25', 'Lutfia choirunnisa', '', 0, '17 januari 2000', '1999-01-17', 'Kp.cicalung kaler rt 04 rw 12 parung panjang kecamatan parung panjang kabupaten bogor', 'SMK kesehatan riksa indrya', 'Lainnya', 'SAINTEK', 1, '089635257774', 'lutfiachoirunnisa17@gmail.com', 'Ilmu keperawatan dan saintek', ''),
(274, '2018-01-25 01:04:11', '2018-01-25', 'Adjie Prasetyo', '287-05-17318', 0, 'Tangerang', '2000-03-17', 'Kp. Gaga masjid Rt005/Rw001 Larangan Selatan Larangan Tangerang Banten', 'Man 19 Jakarta', 'Agama', 'SOSHUM', 2, '081288894535', 'adjie.rosyed@gmail.com', 'Hukum Keluarga dan UIN Jakarta', 'Lunas'),
(275, '2018-01-25 01:12:15', '2018-01-25', 'Rizieq Alvian Rahman', '288-05-17318', 0, 'Tuban', '2000-06-18', 'Jl. Komplek Sawah Indah no 61B RT 003/01 Kel. Larangan Selatan, Kec. Larangan, Kota Tangerang, Provinsi Banten, Kode Pos 15154', 'MAN 19 Jakarta Selatan', 'Agama', 'SOSHUM', 2, '082298411757', 'zieqalv18@gmail.com', 'Hukum Keluarga, UIN Jakarta', 'Lunas'),
(276, '2018-01-25 01:26:36', '2018-01-25', 'ALFIA FAHRANI', '289-05-17318', 0, 'Jakarta', '2000-09-30', 'Jln.TMII Pintu 2 rt.14 rw.03 no.37 kelurahan pinang ranti kecamatan makasar', 'Man 6 Jakarta', 'IPA', 'SOSHUM', 2, '085775434946', 'alfiafahrani@yahoo.com', 'UNJ-PGSD', 'Lunas'),
(277, '2018-01-25 03:37:48', '2018-01-25', 'Nuriyah', '290-05-17318', 0, 'Tangerang', '1999-10-10', 'Jl. Bonjol pondok karya pondok aren Bintaro. Nomer 83. Kota Tangerang ', 'Man 19 jakarta', 'Agama', 'SOSHUM', 2, '083813015670', 'nuriyaah10@gmail.com', 'Komunikasi Penyiaran Islam & UIN Syarif Hidayatullah', 'Lunas'),
(278, '2018-01-25 06:15:28', '2018-01-25', 'Hikmah Azzahro', '079-02-17318', 0, 'Jakarta', '2000-10-02', 'Jalan Beringin No 36 Pondok Ranggon', 'SMAN 58', 'IPA', 'SAINTEK', 1, '+6287888933800', 'Hikmah.azzahro@gmail.com', 'Kedokteran upn veteran jakarta ', 'Lunas'),
(279, '2018-01-25 07:13:59', '2018-01-25', 'Abdussyukur', '080-02-17318', 1, 'Jakarta', '2000-06-28', 'Jlan haji nusi rt004 rw02 kecamatan kramat jati', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '085881312657', '994stagram@gmail.com', '1. Teknik sipil universitas siliwangi 2.teknik industri Unsika 3.teknik metalurgi untirta', 'Lunas'),
(280, '2018-01-25 07:21:12', '2018-01-25', 'Rini Friatin', '081-02-17318', 0, 'Jakarta', '2000-10-09', 'Jl.Haji Irun rt 012 rw 04 no.118 Kec.Kramat Jati Kel.Dukuh', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '0895374444439', 'rinifriatin09@gmail.com', 'UVN jakarta-Kesehatan Masyarakat ', 'Lunas'),
(281, '2018-01-25 07:29:05', '2018-01-25', 'Habibatul Adawiyah', '082-02-17318', 0, 'Sukabumi', '2000-04-07', 'Jl. Taman Mini Pintu II Rt 011/003 Pinang Ranti Kecamatan Makasar Jakarta Timur', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '089681128011', 'habibatuladawiyah93@gmail.com', 'Kesehatan Lingkungan Universitas Indonesia', 'Lunas'),
(282, '2018-01-25 10:33:18', '2018-01-25', 'Silvia Muthia Anggraeni', '291-05-17318', 0, 'Jakarta', '2000-03-27', 'Perum Amarapura blok e1 no 4 kademangan setu tangerang selatan', 'SMAN 28 Kab Tangerang', 'IPS', 'SOSHUM', 2, '081382649997', 'muthia.silvia@gmail.com', 'Ilmu administrasi fiskal UI', 'Lunas'),
(283, '2018-01-25 10:35:13', '2018-01-25', 'Addina khairussyifa', '292-05-17318', 0, 'Jakarta', '2000-04-13', 'Griya Serpong Asri blok GU4 No.22 Rt.10 Rw.8 Kelurahan suradita Kec.Cisauk Kab.Tanggerang Kode pos 15343', 'SMAN 28 Kab.Tanggerang', 'IPS', 'SOSHUM', 2, '083875563869', 'Addinakhairussyifa@gmail.com', 'Pendidikan geografi UNJ dan Ilmu komunikasi UPN', 'Lunas'),
(284, '2018-01-25 10:36:03', '2018-01-25', 'Fitri ayu dimar', '293-05-17318', 0, 'Tangerang', '2000-09-12', 'Batan indah blok g-34 kademangan setu tangerang selatan ', 'Sman 28 kab. Tangerang', 'IPS', 'SOSHUM', 2, '081382650007', 'pitslay1209@gmail.com', 'Pendidikan sosiologi upi', 'Lunas'),
(285, '2018-01-25 11:13:49', '2018-01-25', 'Mia amelia kurniasih', '', 0, 'Cianjur', '2000-01-09', 'jln.  KH wahid hasyim,  Gang H rojak Rt04 rw04 nomer 85A kel cipadu jaya kecamatan larangan kota tangerang banten', 'Sma negeri 12 kota tangerang', 'IPS', 'SOSHUM', 2, '085771203644', 'miaa01199@gmail.com', 'Manajemen UNJ', ''),
(286, '2018-01-25 12:25:39', '2018-01-25', 'Reza prasetyo purnomo', '', 0, 'Jakarta', '2018-07-19', 'Jl h soleh 1 rt 003/08 no. 17', 'Smkn 45 jakarta', 'Lainnya', 'SOSHUM', 2, '089615374613', 'reza1907pras@gmail.com', 'Manajemen Uin Jakarta', ''),
(287, '2018-01-25 13:15:38', '2018-01-25', 'Nurwulandari', '294-05-17318', 0, 'Bogor', '1999-09-01', 'Kp. Lulut Rt. 01/05 No. 12 Kecamatan Klapanunggal Kabupaten Bogor, Jawa Barat', 'SMA Negeri 1 Citeureup', 'IPA', 'SOSHUM', 2, '085775320584', 'nurwulandari01091999@gmail.com', 'Pendidikan Khusus-Universitas Negeri Jakarta', 'Lunas'),
(288, '2018-01-25 13:25:15', '2018-01-25', 'Linda Disandria', '', 0, 'Bogor', '2000-06-02', 'Kp. Taringgul Rt 01/03 Desa Tarikolot, Kecamatan Citeureup Kabupaten Bogor, Jawa Barat', 'SMA Negeri 1 Citeureup', 'IPS', 'SOSHUM', 2, '089685174285', 'Disandrialinda@gmail.com', 'Administrasi Bisnis-Universitas Diponegoro', ''),
(289, '2018-01-25 13:35:12', '2018-01-25', 'Muhammad Reza', '295-05-17318', 0, 'Bogor', '1998-12-16', 'Kampung Dukuh Rt 02/01 Desa Pasir Mukti, Kecamatan Citeureup, Kabupaten Bogor', 'SMA Negeri 1 Citeureup', 'IPS', 'SOSHUM', 2, '085814466261', 'Septiandavid42@gmail.com', 'Manajemen-Universitas Indonesia', 'Lunas'),
(290, '2018-01-25 14:22:40', '2018-01-25', 'Siti Tsamara Zannuba Arwa', '', 0, 'Depok', '2000-01-15', 'Jalan raya muchtar sawangan baru ( HM. Sukri zein)', 'SMAS Al-Hasra', 'IPS', 'SOSHUM', 2, '083805497833', 'sititsamara854@gmail.con', 'pendidikan ips ( Universitas Pendidikan Indonesia )', ''),
(291, '2018-01-25 14:24:46', '2018-01-25', 'Diva cindy', '', 0, 'Tangerang, ', '2000-12-07', 'Jln khihajar dewamtara gg nurul huda 1 rt03/03 no 07 ciputat tangsel', 'Sman 10 tangsel', 'IPS', 'SOSHUM', 2, '089630875024', 'Divacindynr@gmail.com', 'Psikolog & unpad', ''),
(292, '2018-01-25 14:29:16', '2018-01-25', 'Debby Putri Aprilliani', '296-05-17318', 0, 'Cimahi', '2000-04-16', 'Perumahan bumi indah pesona blok d4/26', 'Sma al-hasra', 'IPS', 'SOSHUM', 2, '081310130199', 'Debby_aprilliani@yahoo.co.id', 'FISIP UI', 'Lunas'),
(293, '2018-01-25 14:51:17', '2018-01-25', 'elsa annisa aurelia', '', 0, 'depok', '2000-03-23', 'perum sawangan elok rt/rw 01/07 blok bc3 no8 kelurahan duren mekar kecamatan bojongsari', 'SMA Al-hasra', 'IPS', 'SOSHUM', 2, '081317267786', 'elsaannisa6@gmail.com', 'psikologi', ''),
(294, '2018-01-26 00:27:48', '2018-01-26', 'Endia Kirnawati Anggraini', '', 0, 'Medan', '2000-10-19', 'Jalan Habib Novel Rt: 004 Rw: 01 No: 77, Kelurahan: Larangan  Selatan, Kecamatan: Larangan, Kota: Tangerang, Provinsi: Banten', 'SMAN 12 Kota Tangerang', 'IPS', 'SOSHUM', 2, '081314820815', 'endiakirnawatianggraini@gmail.com', 'Manajemen & UNPAD', ''),
(295, '2018-01-26 01:23:25', '2018-01-26', 'VERNANDA RAMADHANTI', '083-02-17318', 1, 'Jakarta', '2000-11-07', 'Kampung pulo kecamatan makasar ,kelurahan pinang ranti rt07 rw05 no.50', 'MAN 6', 'IPA', 'SAINTEK', 1, '089637693844', 'davernanda07@gmail.com', 'Administrasi perpajakan & unbraw malang', 'Lunas'),
(296, '2018-01-26 01:27:01', '2018-01-26', 'Fitrianingsih', '', 0, 'Jakarta', '2000-12-25', 'Jl.dukuh 3 rt.001 rw.05 no.16 kel.dukuh kec.kramatjati jakarta timur', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '083872621688', 'fitrianingsih2512@gmail.com', 'Administrasi perpajakan & unbraw malang', ''),
(298, '2018-01-26 02:58:39', '2018-01-26', 'zenith chaerani', '084-02-17318', 1, 'Pandeglang', '2000-03-17', 'Jalan elang 3 rt 04 rw 03 no 104 sawah lama ciputat tangerang selatan', 'SMAN 4 tangerang selatan', 'IPA', 'SAINTEK', 1, '087787201653', 'zenithchaerani@gmail.com', 'Fakultas psikologi', 'Lunas'),
(299, '2018-01-26 02:59:34', '2018-01-26', 'Nely Isnaeni', '297-05-17318', 0, 'Tangerang', '2000-08-30', 'Jl. H. Mencong II no. 9D rt 001/rw 03 kel. Sudimara timur kec. Ciledug Tangerang - 15151 Banten', 'man 19 jakarta', 'Agama', 'SOSHUM', 2, '087788640200', 'nelyisnaeni30@gmail.com', 'sosiologi', 'Lunas'),
(300, '2018-01-26 03:29:13', '2018-01-26', 'Yunia farida', '298-05-17318', 0, 'Tangerang', '2000-06-09', 'Jl.Abadi rt.003 rw.04 Pndk.Karya Pndk.Aren ', 'MAN19 Jakarta Selatan', 'Agama', 'SOSHUM', 2, '+6289629232034 ', 'yuniafaridayuni5455@gmail.com', 'PAI & UIN Syarif Hidayatullah Jakarta ', 'Lunas'),
(301, '2018-01-26 03:32:52', '2018-01-26', 'Anis alfiana', '299-05-17318', 0, 'Tangerang', '2000-08-26', 'Jl.Peninggilan utara,Gg.bhakti warga 1 rt.02 rw.08', 'MAN19 Jakarta Selatan', 'Agama', 'SOSHUM', 2, '089513615899', 'anisalfiana26@gmail.com', 'PAI & UIN Syarif Hidayatullah Jakarta ', 'Lunas'),
(302, '2018-01-26 03:39:52', '2018-01-26', 'Sayidah nafisah', '300-05-17318', 0, 'Jakarta', '2000-05-08', 'Jalan haji gaim petukangan utara jaksel', 'MAN19 Jakarta Selatan', 'Agama', 'SOSHUM', 2, '089646883960', 'sayyidah973@gmail.com', 'Ushuludin & UIN syarif hidayatullah', 'Lunas'),
(303, '2018-01-26 10:04:51', '2018-01-26', 'anisa putri nabilah', '164-02-17318', 0, 'bekasi', '2001-05-04', 'Jl al-ikhlas IV kp rawa bogo rt05/04 jati mekar jati asih kota bekasi', 'man 6 jakarta', 'IPA', 'SAINTEK', 1, '089629347023', 'anisaputrinabilah@gmail.com', 'perawat uin jakarta', 'Lunas'),
(304, '2018-01-26 12:40:21', '2018-01-26', 'Diva andzani', '', 0, 'Jakarta 15 Desember 2000', '2000-12-15', 'Pamulang permai 1', 'SMAN 6 tangsel', 'IPS', 'SOSHUM', 2, '081318357898', 'andzanidiva@gmail.com', 'Sastra Arab UI', ''),
(305, '2018-01-26 13:21:26', '2018-01-26', 'Afifah Julia Hamdi', '', 0, 'Jakarta', '2000-07-01', 'Pamulang Permai 1 blok A 31/14', 'SMAN 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '085946130099', 'juliahamdia@gmail.com', 'Ilmu Hukum, UIN', ''),
(306, '2018-01-26 13:24:51', '2018-01-26', 'Ananda chikal aldriana ahmad', '', 0, 'Jakarta', '2000-03-31', 'Vila dago pamulang cluster nusa dua blok B4/34 pamulang tangsel banten indonesia', 'Sma negri 6 tangsel', 'IPS', 'SOSHUM', 2, '087875531987', 'anandachikal@ymail.com', 'Ilmu administrasi perpajakan unibraw malang', ''),
(307, '2018-01-26 13:28:34', '2018-01-26', 'Annisa Putri Ashri', '', 0, 'Bandung', '2000-07-12', 'Pamulang Permai Baru blok i 19D', 'SMAN 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '0811146533', 'annisaaaputtri@gmail.com', 'Bisnis Islam UI', ''),
(308, '2018-01-26 15:20:40', '2018-01-26', 'Muhaimin Ramadan Zega', '301-05-17318', 0, 'Medan', '2000-12-09', 'Jalan SD Inpres Galian No. 47 RT.RW 01/03', 'SMK Yapia', 'IPS', 'SOSHUM', 2, '081384492270', 'Mustikazega99@gmail.com', 'Hukum &Undip', 'Lunas'),
(309, '2018-01-27 04:20:04', '2018-01-27', 'Ulin Puspa Arum ', '', 0, 'Boyolali 02 Februari 2000', '2018-01-27', 'Ciganjur ,jalan syarpa No 83p Jakarta selatan', 'Pondok pesantren al hamidiyah ', 'IPS', 'SOSHUM', 2, '0857 19015543', 'ulinpspa@yahoo.com', 'Ilmu politik & uin Jakarta ', ''),
(310, '2018-01-27 04:36:13', '2018-01-27', 'Risha Chairunnisa', '', 0, 'Tangerang,  26 maret 2000', '2000-03-26', 'Jalan benda barat 14 blok b14 no. 1 rt.07 rw 010 kelurahan pondok benda,  kecamatan pamulang', 'SMAN 9 TANGSEL', 'IPS', 'SOSHUM', 2, '081649783635', 'rishachairunnisa12@gmail.com', 'Jurnalistik & pendidikan guru', ''),
(311, '2018-01-27 07:42:14', '2018-01-27', 'Mutiara Dewi', '085-02-17318', 1, 'Jakarta', '2000-03-05', 'Jl salak raya komplek pondok benda residence blok B2 no 10', 'Smk Kesehatan Letris 2 Pamulang', 'Lainnya', 'SAINTEK', 1, '085881437559', 'mutiaradewi57@yahoo.com', 'Ilmu Kesehatan Masyarakat', 'Lunas'),
(312, '2018-01-27 07:45:35', '2018-01-27', 'Putri Esa Suciati', '086-02-17318', 1, 'Jakarta', '2000-05-02', 'Perumahan Benda Indah blok S no 33, pamulang , tangerang selatan', 'Smk kesehatan letris 2 pamulang', 'Lainnya', 'SAINTEK', 1, '089637612605', 'putriesa250@gmail.com', 'IT', 'Lunas'),
(313, '2018-01-27 15:05:05', '2018-01-27', 'Fathun Nada', '087-02-17318', 0, 'Jakarta', '2000-10-19', 'Jalan Al-Mabruk 2 Rt 03/03', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '083804602469', 'fathun.nada19@gmail.com', 'Kesehatan Masyarakat & Universitas Indonesia', 'Lunas'),
(314, '2018-01-28 02:17:48', '2018-01-28', 'Silvi Damayanti', '302-05-17318', 0, 'Bogor', '2000-06-29', 'Jl gotong royong desa pabuaran kecamatan gunung sindur bogor', 'Smk kesehatan riksa indrya', 'IPA', 'SOSHUM', 2, '085780635553', 'silvidamayanti2906@gmail.com', 'Keperawatan & UIN', 'Lunas'),
(315, '2018-01-28 03:17:21', '2018-01-28', 'Jihan Thifal', '303-05-17318', 0, 'Jakarta', '2000-12-28', 'Komplek Griya Pamulang 2 Blok C3/14', 'SMAN 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '085810160235', 'vanesyazhafira@gmail.com', 'Desain Interior - UNS', 'Lunas'),
(316, '2018-01-28 03:29:55', '2018-01-28', 'Dhanty Novita Sari', '', 0, 'Magelang, Jawa Tengah', '2000-05-16', 'Jl. Pinus Barat VIII blok B3 no. 72, Pamulang Barat', 'SMA Negeri 6 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '0895608014254', 'dhantyn@gmail.com', 'Teknik Fisika UGM', ''),
(317, '2018-01-28 03:40:03', '2018-01-28', 'Hanifah Hanan', '304-05-17318', 0, 'Tangerang', '2001-03-18', 'Perumahan Bukit Dago Blok BDU No 42. RT 06/ 14. Kel : Rawa Kalong Kec : Gunung Sindur. Kab : Bogor, Jawa Barat.16340.', 'SMAN 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '082210199062', 'hanifahhanan93@yahoo.com', 'Bahasa dan Kebudayaan Korea, Universitas Indonesia', 'Lunas'),
(318, '2018-01-28 04:57:23', '2018-01-28', 'Waode zahrah amirah rachman kadir', '', 0, 'Jakarta,', '2000-03-30', 'Vila dago tol', 'Sman 9 tangerang selatan', 'IPS', 'SOSHUM', 2, '085214929099', 'wzahrah@gmail.com', 'UNJ - pendidikan PAUD', ''),
(319, '2018-01-28 06:15:41', '2018-01-28', 'Nada Yulia Putri', '305-05-17318', 0, 'jakarta', '2000-07-13', 'Jl. Dewi sartika rt.03/02 no.25 cipayung,ciputat', 'SMAN 9 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '087874772015', 'nadayuliaputri13@gmail.com', 'Manajemen & Universitas Islam Negeri', 'Lunas'),
(320, '2018-01-28 06:29:26', '2018-01-28', 'Indra wahid zulhaq', '088-02-17318', 0, 'Jakarta 06 Mei 2000', '2000-05-06', 'Kp. Cisauk rt 02 rw 04 ds. Situgadung kec. Pagedangan kab. Tangerang. ', 'Smk Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '081288988175', 'demaxevil@gmail.com', 'Jurusan keperawatan, radiologi, atau kesehatan masyarakat. ', 'Lunas'),
(322, '2018-01-28 08:37:52', '2018-01-28', 'Septi Dwi Wulandari ', '', 0, 'Tangerang ', '2000-09-20', 'Jl. H. Shaleh rt003/rw002 no. 20a benda baru, pamulang, tangsel', 'SMAN 11 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '08561863776', 'septidwiwulandari274@gmail.com', 'Agribisnis undip, ilmu kelautan undip, agribisnis untirta', ''),
(323, '2018-01-28 09:36:55', '2018-01-28', 'Yolinda febrianti', '089-02-17318', 0, 'Jakarta ', '2000-02-15', 'Jln. Batu kinyang no.14b Rt.011/Rw.04', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '0895374181648', 'kinyang14b@gmail.com', 'Keperawatan - Poltekkes jakarta 3', 'Lunas'),
(324, '2018-01-28 13:46:18', '2018-01-28', 'Fath Aditya Yoga Pratama', '306-05-17318', 0, 'Jakarta', '2000-02-18', 'Jl. Akasia No.72 Rt 002/04 Kel.Tajur Kec.Ciledug Kota Tangerang', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '089527005797', 'agoypratama93@gmail.com', 'Ilmu Sosial dan Hukum & UNM', 'Lunas'),
(325, '2018-01-28 14:01:36', '2018-01-28', 'Muhammad Nabil Ramadhan', '307-05-17318', 0, 'Pontianak', '2000-12-03', 'Jl. Kavling cermai IV No. 66', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '087786796626', 'muhammadnabil.ramadhan007@gmail.com', 'HI dan Hukum & UIN, Unbraw, Unpad', 'Lunas'),
(326, '2018-01-28 14:20:24', '2018-01-28', 'Isfan Rifqi Dzikrillah', '308-05-17318', 0, 'Tangerang', '2000-09-14', 'Jl sunan gunung jati rt. 03/04 no.67 Paninggilan, Ciledug, Tangerang.', 'MAN 19 Jakarta', 'Agama', 'SOSHUM', 2, '083877540562', 'isfanrifqi@gmail.com', 'Hubungan Internasional', 'Lunas'),
(327, '2018-01-28 15:03:50', '2018-01-28', 'Ahmad Alfinsyah Matondang', '309-05-17318', 0, 'Tangerang', '2000-09-28', 'Jl.wadassari 2 rt 003/02 no.62 kel: pondok betung kec:pondok aren ', 'Man 19 Jakarta', 'Agama', 'SOSHUM', 2, '081911094657', 'ahmadalfinsyah8@gmail.com', 'Managemen = UIN Jakarta dan UIN Malang, psikolog= UIN Jakarta, PAI = UIN Jakarta dan UIN Malang', 'Lunas'),
(328, '2018-01-28 15:58:22', '2018-01-28', 'tasya tri utami', '310-05-17318', 0, 'jakarta', '2000-05-18', 'bukit nusa indah jalan lelie kav 260', 'SMAN 9 TANGERANG SELATAN', 'IPS', 'SOSHUM', 2, '087871041322', 'imtasyatriutami@gmail.com', 'FILKOM&Universitas Padjadjaran', 'Lunas'),
(329, '2018-01-29 01:30:34', '2018-01-29', 'Alda Wahyufebrian', '311-05-17318', 0, 'Tangerang', '2000-02-07', 'Komp. Batan Indah blok J-64 rt 17 rw 04, Kademangan, Setu, Tangerang Selatan', 'SMA Negeri 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '085778975402', 'aldawhyfbrn@gmail.com', 'Ilmu Komunikasi & UIN', 'Lunas'),
(330, '2018-01-29 01:50:20', '2018-01-29', 'Achmad majid muslich', '090-02-17318', 1, 'Bekasi', '2000-07-28', 'Jl.kancil III block C no.100 Cikarang Baru Bekasi', 'Man 6 Jakarta', 'IPA', 'SAINTEK', 1, '081519605506', 'majidmuslich@gmail.com', 'Teknik industri dan Farmasi UNS', 'Lunas'),
(331, '2018-01-29 05:32:35', '2018-01-29', 'Sabrina Afiva Maulida', '312-05-17318', 0, 'Jakarta', '2000-07-20', 'Jl.Vinus Gg.D.Raya Rt.001/020', 'SMA Negeri 9 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '081388016874', 'sabrinaafivaa@gmail.com', 'Ilmu komunikasi UIN', 'Lunas'),
(332, '2018-01-29 05:55:18', '2018-01-29', 'nabilah dwiyanti', '313-05-17318', 0, 'jakarta', '2000-02-23', 'Jl.saidin rt 002 rw 03 no 77 bambu apus pamulang tangerang selatan', 'SMAN 9 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '087780468906', 'nabilahdwiyanti23@gmail.com', 'Manajemen & Universitas Islam Negeri', 'Lunas'),
(333, '2018-01-29 06:09:00', '2018-01-29', 'Muhammad Farhan firdaus', '314-05-17318', 0, 'Tangerang ', '2000-06-25', 'Kp Blok wareng no 58 Rt 02/14 Larangan Selatan Tangerang', 'MAN 19 JAKARTA ', 'Agama', 'SOSHUM', 2, '089604864217', 'farhanfirdaus925@gmail.com', 'Ekonomi syariah UIN SYARIEF HIDAYATULLAH JAKARTA', 'Lunas'),
(334, '2018-01-29 07:45:09', '2018-01-29', 'Vina veronika militanty', '', 0, 'Jakarta', '2000-06-20', 'Jln. Inpres rt07/03', 'Ma annajah', 'IPS', 'SOSHUM', 2, '081311157334', 'mamakupahlawanku2006@gmail.com', 'Uin, upn dan pnj', ''),
(335, '2018-01-29 10:57:29', '2018-01-29', 'Intan Sari', '091-02-17318', 1, 'Surabaya', '1999-06-22', 'Gang salem 2 rt 002 rw 01 serpong tangerang selatan', 'SMK Kesehatan Riksa Indrya', 'IPA', 'SAINTEK', 1, '089523780382', 'intansari210699@gmail.com', 'keperawatan& UIN Jakarta', 'Lunas'),
(336, '2018-01-29 12:01:44', '2018-01-29', 'Thaariq Taufiq Rahman', '', 0, 'Tasikmalaya', '1999-09-12', 'Jl.H.basir Rt01/Rw02 No107 pondok kacang barat, kecamatan pondok aren', 'SMA AN-NURMANIYAH', 'IPS', 'SOSHUM', 2, '089686585519', 'thariq.taufiq17@gmail.com', 'Pendidikan Agama Islam & UIN Syarif Hidayatullah', ''),
(337, '2018-01-29 12:16:37', '2018-01-29', 'Oktaviona ita faresqi', '315-05-17318', 0, 'Pekalongan', '2000-10-08', 'Gg. Warben no.12 rt.006/02 kel.jelupang kec.serpong utara Tangerang selatan 15323', 'Smk kesehatan riksa indrya', 'IPA', 'SAINTEK', 1, '083813515195', 'Oktaviona1404@gmail.com', 'Keperawatan & UIN', 'Lunas'),
(338, '2018-01-29 13:05:53', '2018-01-29', 'Tsaabitah Hannaaniyah', '316-05-17318', 0, 'Jakarta', '2000-06-29', 'Jln. SMA 48 no.8 rt 14/01. Pinang Ranti, Jakarta Timur', 'MAN 6 Jakarta', 'IPA', 'SOSHUM', 2, '081280634185', 'ahelfiana@gmail.com', 'Hubungan Internasional & UGM', 'Lunas'),
(339, '2018-01-29 13:16:55', '2018-01-29', 'Syafiqah Azzahra', '092-02-17318', 0, 'Jakarta', '2000-08-31', 'Jl. SMA 48 RT 012 RW 01 JAKARTA TIMUR', 'MAN6', 'IPA', 'SAINTEK', 1, '085711875926', 'syafiqahazzahra40@gmail.com', 'Psikologi UNPAD', 'Lunas'),
(340, '2018-01-29 14:08:26', '2018-01-29', 'Shafa Nurul Ilyanti', '0', 0, 'Jakarta', '2000-11-24', 'Jl.ciliwung ujung rt.009 rw.016', 'MAN 6 Jakarta', 'IPA', 'SOSHUM', 2, '082112295537', 'shafa12366@gmail.com', 'Fisip universitas brawijaya', 'Lunas'),
(341, '2018-01-29 22:53:06', '2018-01-30', 'Nailan attya', '318-05-17318', 0, 'Jakarta', '2000-03-19', 'Jl. Rawajati barat 1 no.21 rt03/04  Kel.rawajati kec.pancoran Jakarta Selatan ', 'MA Nurul Huda assuriyah', 'IPS', 'SOSHUM', 2, '0895323874054', 'nailanattya00@gmail.com', 'Psikologi', 'Lunas'),
(342, '2018-01-29 23:51:30', '2018-01-30', 'Nur hidayah', '319-05-17318', 0, 'Jakarta', '2000-02-08', 'Jalan kemajuan rt.05 rw.04 no.4', 'Ma annjah', 'IPS', 'SOSHUM', 2, '085920050595', 'nurhidayah0617@gmail.com', 'Psikologi uin', 'Lunas'),
(343, '2018-01-30 00:01:28', '2018-01-30', 'Nabilah Putri Kurnia', '320-05-17318', 0, 'Jakarta ', '1999-12-26', 'Jalan kologad bawah rt. 01/07 no. 83', 'MAN 6 JAKARTA ', 'IPS', 'SOSHUM', 2, '081574665989', 'nblhpk@gmail.com', 'PGTK/PAUD & UNJ', 'Lunas'),
(344, '2018-01-30 00:17:21', '2018-01-30', 'Nisya Aulia Fitriani', '093-02-17318', 0, 'Bandung', '2000-12-28', 'Jalan jambul lama', 'MAN6', 'IPA', 'SAINTEK', 1, '0895353005772', 'nisyaaulia28@gmail.com', 'Arsitektur UPI', 'Lunas'),
(345, '2018-01-30 00:19:16', '2018-01-30', 'Azzahra  ismail putri', '321-05-17318', 0, 'Jakarta,14 oktober 2000', '2000-10-14', 'Jl.penggilingan pondok kopi rt 02/rw 04 no 27 cakung jakarta timur', 'Man 6', 'IPA', 'SOSHUM', 2, '089527433722', 'Azzahraismail14@gmail.com', 'Manajemen pendidikan & UIN ', 'Lunas'),
(346, '2018-01-30 00:23:17', '2018-01-30', 'Khalia khairunnisa ', '169-02-17318', 1, 'Jakarta ', '1999-12-29', 'Jl Rawa gede raya 06/02 no 74', 'MAN6', 'IPA', 'SAINTEK', 1, '085798849915', 'khaliakhairunnisa058@gmail.com', 'Teknik sipil ui', 'Lunas'),
(347, '2018-01-30 01:09:58', '2018-01-30', 'Akmal hanan', '094-02-17318', 0, 'Jakarta', '2000-07-22', 'Jl.rawa elok 3 balekambang Kramat jati 13530', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '0895377900755', 'akmalhanan75@gmail.com', 'Teknologi pangan IPB', 'Lunas'),
(348, '2018-01-30 01:15:22', '2018-01-30', 'Auzan Muhamad zikri', '322-05-17318', 0, 'Jakarta', '2000-06-19', 'Jl Al-Amin 3 RT:008/06 NO:25 Kramat jati Jakarta timur', 'MAN 6 Jakarta', 'IPA', 'SOSHUM', 2, '087785653616', 'auzan19062000@gmail.com', 'Pendidikan agama Islam (UIN JAKARTA)', 'Lunas'),
(349, '2018-01-30 02:07:40', '2018-01-30', 'Ratih Sundari', '095-02-17318', 0, 'Jakarta', '2000-08-31', 'Jl.Batu ampar rt006/01', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '081574970219', 'ratihsunsun31@gmail.com', '1. UIN JAKARTA - FARMASI. 2. UIN JAKARTA - BIOLOGI. 3. UGM - DOKTER HEWAN', 'Lunas'),
(350, '2018-01-30 05:07:41', '2018-01-30', 'Mochamad Farhan', '096-02-17318', 0, 'Jakarta', '1999-11-18', 'Jl. Purnawarman Komplek Puspa Asri No.25', 'SMAN 8 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '081318262033', 'farhan982015@gmail.com', 'Teknik Informatika  & Universitas Islam Negeri Jakarta', 'Lunas'),
(351, '2018-01-30 05:07:41', '2018-01-30', 'Nova Auliyana Setiyono', '323-05-17318', 0, 'Tangerang', '1999-11-24', 'Gg. Buntu Jalan Swadaya Rt 04/05 Parung Serab, Tangerang', 'SMKN 2 Tangsel', 'IPS', 'SOSHUM', 2, '089664496640', 'Rahmawatiasri123@gmail.com', 'Ilmu Administrasi Fiskal Universitas Indonesia', 'Lunas'),
(352, '2018-01-30 05:38:52', '2018-01-30', 'febriandini putri fahira', '097-02-17318', 0, 'jakarta,19 februari 2000', '2000-02-19', 'Jl. Raya ceger, gg.alpukat ', 'sma negeri 58 ', 'IPA', 'SAINTEK', 1, '089670808918', 'feb.andini19@gmail.com', 'agribisnis universitas brawijaya', 'Lunas'),
(353, '2018-01-30 06:22:31', '2018-01-30', 'Riri novrianti', '324-05-17318', 0, 'Jakarta', '1999-11-11', 'Jl pesantren jurang mangu Timur rt03/03 no 10f', 'Ma annjah', 'IPS', 'SOSHUM', 2, '081286366631', 'nurhdyh817@gmail.com', 'Manajemen uin', 'Lunas'),
(354, '2018-01-30 06:28:35', '2018-01-30', 'Shinta Oktaviananda', '098-02-17318', 0, 'Tangerang', '2000-10-14', 'Jalan Palapa Raya Komplek Vila Dago Tol Blok H14 Nomor 16 Serua, Tangerang Selatan', 'SMA NEGERI 8 KOTA TANGERANG SELA', 'IPA', 'SAINTEK', 1, '082113317616', 'shintaoktaviananda14@gmail.com', 'PG FISIKA, Universitas Islam Negeri Jakarta', 'Lunas'),
(355, '2018-01-30 08:20:32', '2018-01-30', 'Raihan ibnu sina', '325-05-17318', 0, 'Bogor', '1999-06-13', 'Jl.pelopor 2 Rt.04/08 kel.curug kec.bojongsari kota depok', 'MA Nurul Huda Assuriyah', 'IPS', 'SOSHUM', 2, '085718887624', 'raihanibnusina99@gmail.com', 'Dakwah', 'Lunas'),
(356, '2018-01-30 09:32:00', '2018-01-30', 'Fira Fitria', '326-05-17318', 0, 'Bogor', '1999-05-24', 'Kp.Nyangkokot  Rt 05/06 Ds.Gunung sari Kec.Citeureup kab.Bogor-Jawa Barat', 'SMAN 1 Citeureup', 'IPS', 'SOSHUM', 2, '08977526250', 'fira232425@gmail.com', 'Managemen bisnis UIN Jakarta', 'Lunas'),
(357, '2018-01-30 09:39:42', '2018-01-30', 'Nurhamidah Munadziran', '327-05-17318', 0, 'Bogor', '2000-12-13', 'Karang asem barat ', 'Sma Negeri 1 Citeureup', 'IPS', 'SOSHUM', 2, '085719876335', 'Bimbimbap18@gmail.Com', 'Ekonomi Syariah di UIN JAKARTA ', 'Lunas'),
(358, '2018-01-30 09:44:57', '2018-01-30', 'Annisa Rahmah', '', 0, 'Jakarta', '2000-12-03', 'Jl. Squadron Gg. H. Anwar Rt. 002/05 No. 29 Kel. Makasar', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '089505638469', 'tihamahpelangi@gmail.com', 'Pendidikan MTK UIN', ''),
(359, '2018-01-30 15:27:59', '2018-01-30', 'Cerry Dwi Handayani', '', 0, 'Jakarta', '2000-11-22', 'Jalan pinang Ranti RT 15 RW 01 no 59 kelurahan pinang Ranti kecamatan Makasar', 'MAN6 JAKARTA', 'IPA', 'SAINTEK', 1, '089677328871', 'cerrycerryhandayani@gmail.com', 'Sastra Indonesia & UIN', ''),
(360, '2018-01-31 00:21:37', '2018-01-31', 'Aiyini Alli Safira', '099-02-17318', 0, 'Jakarta', '2000-04-09', 'Jl. Pisangan Barat Rt 003/05 Cirendeu Ciputat timur ', 'SMAN 8 kota Tangerang Selatan ', 'IPA', 'SAINTEK', 1, '083870100521', 'ainialli123@gmail.com', 'Teknologi dan manegement sumberdaya perikanan IPB', 'Lunas'),
(361, '2018-01-31 01:28:07', '2018-01-31', 'Mai sella fachzriati', '328-05-17318', 0, 'Tangerang', '2000-05-07', 'Jl. H.Somad RT003 RW04 Cireundeu, Ciputat Timur Kota Tangerang Selatan', 'SMA NEGERI 8 KOTA TANGERANG SELA', 'IPS', 'SOSHUM', 2, '089509873971', 'sella.fazeriati@gmail.com', 'Akuntansi UIN', 'Lunas'),
(362, '2018-01-31 06:26:52', '2018-01-31', 'Erika shava azzahro', '', 0, 'Jakarta ', '2000-11-22', 'Jl dukuh 3 rt.002 rw.05 no.12 kel.dukuh kec. Kramat jati jakarta timur', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '082112988640', 'erikashava22@gmail.com', 'Akper & UIN JAKARTA', ''),
(363, '2018-01-31 06:30:24', '2018-01-31', 'Syilvia ramadhanti', '', 0, 'Jakarta', '1999-12-25', 'Jl penggilingan baru 1 dalam rt 11 rw 04 no 42 kel dukuh kec kramat jati jakarta timur', 'MAN 6 JAKARTA', 'IPA', 'SAINTEK', 1, '081212491187', 'syilviaramadhanti@gmail.com', 'Kesehatan masyarakat & UIN JAKARTA', ''),
(364, '2018-01-31 07:13:19', '2018-01-31', 'Muhammad Alwi Sya\'ban', '329-05-17318', 0, 'Tangerang', '2000-11-07', 'Jl. Amal Cipadu Jaya rt.003/06 ', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '081315093862', 'syabanmuhammad444@gmail.com', 'Management Dakwah & UIN Syarif Hidyatullah', 'Lunas'),
(365, '2018-01-31 07:16:20', '2018-01-31', 'Moh. Ichsan Maulana', '330-05-17318', 0, 'Majalengka', '2000-07-15', 'Jl. Kp. Peninggilan gg. Nurul Amal rt.004/06 No.47 Larangan Selatan', 'MAN 19 JAKARTA ', 'Agama', 'SOSHUM', 2, '089622336313', 'ichsanmuhammad874@gmail.com', 'Pendidikan Bahasa Arab & UIN Syarif Hidayatullah', 'Lunas'),
(366, '2018-01-31 07:20:14', '2018-01-31', 'Muhammad Lazuardi', '409-05-17318', 0, 'Bogor', '2000-01-12', 'Jl. AMD V rt.006/010 No.27, Petukangan Utara, Jakarta Selatan', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '085718747827', 'diazlazuardi99@gmail.com', 'Komunikasi Penyiaran Islam & UIN Syarif Hidayatullah', 'Lunas'),
(367, '2018-01-31 07:25:02', '2018-01-31', 'Fadly Nur Fhadila', '', 0, 'Tangerang', '2000-09-14', 'Kampung Gaga rt.004/03 No.19, Larangan', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '081295200691', 'fadlynurfhadila@gmail.com', 'Pendidikan Agama Islam & UIN Syarif Hidayatullah', '');
INSERT INTO `tryout_sbmptn_parsial` (`id`, `time`, `tgl_daftar`, `nama`, `no_peserta`, `kehadiran`, `tempat_lahir`, `tgl_lahir`, `alamat`, `sekolah`, `jurusan`, `pilihan`, `id_pilihan`, `no_hp`, `email`, `minat`, `pembayaran`) VALUES
(368, '2018-01-31 07:30:22', '2018-01-31', 'Farchan Sholla Nurhafidz', '408-05-17318', 0, 'Jakarta', '2000-08-11', 'Jl. Manunggal 2 rt.009/02 No.108, Petukangan Selatan', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '082297446547', 'sholla.noer@gmail.com', 'Sejarah Kebudayaan Islam & UIN Syarif Hidayatullah', 'Lunas'),
(369, '2018-01-31 10:11:35', '2018-01-31', 'Fatimah jahro ', '', 0, 'Jakarta, 04 Juni 2000', '2000-06-04', 'Jl gelanggang remaja rt11/06 No 15 Kelurahan Makasar kecamatan Makasar Jakarta timur ', 'SMKN 22 Jakarta ', 'Lainnya', 'SOSHUM', 2, '0895372125377', 'fatimahzahra524@gmail.com', 'Pendidikan bahasa Indonesia ', ''),
(370, '2018-01-31 10:58:45', '2018-01-31', 'Salma Milda', '100-02-17318', 0, 'Tegal, 27 mei 2001', '2018-01-31', 'jl. Oscar IV Rt 006/02 Blok C. No 14, Bambu Apus, Pamulang, Tangerang selatan.', 'Smk Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '08965721635', 'salmamilda123@gmail.com', 'Farmasi', 'Lunas'),
(371, '2018-01-31 11:05:54', '2018-01-31', 'Rica Alviani', '331-05-17318', 0, 'Grobogan', '1999-09-15', 'Witana Harja III Pamulang ', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SOSHUM', 2, '089624299575', 'ricaalviani99@gmail.com', 'Manajemen', 'Lunas'),
(372, '2018-01-31 11:07:23', '2018-01-31', 'Yola Ismi Salsabila', '332-05-17318', 0, 'Jakarta ', '2000-10-26', 'Komplek Puri Pamulang jln. Teratai Blok C6 No 23', 'SMA Waskito', 'IPS', 'SOSHUM', 2, '089505156493', 'yolaismisalsabila@gmail.com', 'Hukum & UIN Jakarta ', 'Lunas'),
(373, '2018-01-31 11:36:28', '2018-01-31', 'selvi marlina', '', 0, 'cianjur', '2001-01-17', 'jl mujair IV rt 05/04 no 103f bambu apus pamulang tangerang selatan', 'sma waskito', 'IPA', 'SAINTEK', 1, '0895361164734', 'selvimarlina7@gmail.com', 'fisip', ''),
(374, '2018-01-31 12:19:53', '2018-01-31', 'Yohanna', '101-02-17318', 1, 'Jakarta', '1999-11-08', 'Jalan. H. Rean Rt.009/03 Graha Indah 2 Pamulang Blok G1/2', 'SMK NEGERI 4 KOTA TANGERANG SELA', 'Lainnya', 'SAINTEK', 1, '081906154414', 'yohannaa.11.yr@gmail.com', 'Keperawatan', 'Lunas'),
(375, '2018-01-31 12:37:23', '2018-01-31', 'Anggi anggella ', '', 0, 'Bandung 16 April 1999', '1999-04-16', 'Jalan Oscar 3 RT 02 rw08 no.38b', 'SMA negeri 11', 'IPA', 'SAINTEK', 1, '081293597035', 'anggellaanggi99@gmail.com', 'Universitas pendidikan Indonesia', ''),
(376, '2018-01-31 12:39:22', '2018-01-31', 'Aqshya octania putri', '', 0, 'jakarta', '2000-10-14', 'perumahan pesona ciseeng blok b3/2 parung,bogor', 'smk letris indonesia 2', 'Lainnya', 'SOSHUM', 2, '08161370671', 'aqshyaaa1410@gmail.com', 'manajemen', ''),
(377, '2018-01-31 13:34:54', '2018-01-31', 'Adinda Salwa Nabila', '333-05-17318', 0, 'Tangerang, 31 Maret 2001', '2018-01-31', 'Jl. H.Rean Rt 005/01 No.123, Benda Baru, Pamulang, Tangerang Selatan', 'Smk Letris Indonesia 2', 'Lainnya', 'SOSHUM', 2, '0895331216468', 'salwaadinda3@gmail.com', 'Manajemen', 'Lunas'),
(378, '2018-01-31 14:21:41', '2018-01-31', 'Anggit Prastika Setiany ', '102-02-17318', 1, 'Tangerang', '2000-03-15', 'Jl. H. Nurleman benda baru pamulang ', 'SMAN 9Tangerang Selatan ', 'IPA', 'SAINTEK', 1, '0895613305717', 'anggitprass15@gmail.com', 'Sistem informasi UIN', 'Lunas'),
(379, '2018-01-31 15:14:09', '2018-01-31', 'Ahmad Bahroni', '334-05-17318', 0, 'Tangerang', '2000-08-04', 'Kelurahan Cipadu Raya', 'MAN 19 JAKARTA', 'Agama', 'SOSHUM', 2, '087882261700', 'baroniahmad@gmail.com', 'Management Dakwah & UIN Syarif Hidayatullah', 'Lunas'),
(380, '2018-01-31 15:46:08', '2018-01-31', 'Aldira Fanisa', '335-05-17318', 0, 'Jakarta', '2000-12-28', 'Jl dukuh V rt.009/05 No.79 Kramat jati, Jakarta Timur ', 'MAN 6 JAKARTA', 'IPS', 'SOSHUM', 2, '081236037502', 'aldirafanisa@gmail.com', 'Management (UPN) ', 'Lunas'),
(381, '2018-01-31 22:51:16', '2018-02-01', 'Sri tika rahayu', '103-02-17318', 0, 'Matur', '2000-06-12', 'Komp. Pesanggrahan permai blok e 29 rt 05 rw 07 petukangan selatan jakarta selatan', 'Smk farmasi puskesad', 'Lainnya', 'SAINTEK', 1, '085313044314', 'sriitikaa@gmail.com', 'Farmasi s1', 'Lunas'),
(382, '2018-02-01 00:02:11', '2018-02-01', 'Farhani Rimawati', '104-02-17318', 0, 'Jakarta', '2001-01-09', 'Jl.cempaka warna rt 08 rw 04 no 25 b jakarta pusat', 'SMK Farmasi PUSKESAD', 'Lainnya', 'SAINTEK', 1, '089670294251', 'farhanirimawati@yahoo.co.id', 'Farmasi', 'Lunas'),
(383, '2018-02-01 00:18:53', '2018-02-01', 'Siti Badriyah Ningsih ', '336-05-17318', 0, 'Jakarta ', '2000-10-09', 'Jl. Raya joglo Rt 06 Rw 06 No 83 kel. Joglo  Kec. Kembangan Kota jakarta barat ', 'Man 10 Jakarta ', 'IPS', 'SOSHUM', 2, '089612201823', 'badriyahsiti909@gmail.com', 'Hukum &  UIN Jakarta ', 'Lunas'),
(384, '2018-02-01 02:33:01', '2018-02-01', 'Nurhasanah', '105-02-17318', 0, 'jakarta', '2018-03-16', 'griya cimangir blok f5 no 11 rt 1 rw 13', 'sman 1 gunung sindur', 'IPA', 'SAINTEK', 1, '082210534071', '91nurhasanahdd@gmail.com', 'pendidikan matematika', 'Lunas'),
(385, '2018-02-01 04:14:40', '2018-02-01', 'Dwi Alditia Aryanda', '420-05-17318', 0, 'Januari', '2001-01-07', 'Kompleks Pmulang Indah M.A Jalan Bunga Lilly D6 No. 10 ', 'SMA DARUSALAM', 'IPA', 'SOSHUM', 2, '0895701128457', 'aldityacommbank56@gmail.com', 'Psikologi-UIN JAKARTA & AGRIBISNIS-UIN JAKARTA', 'Lunas'),
(386, '2018-02-01 04:29:54', '2018-02-01', 'Shafa Rachendieswary Priasmoro', '107-02-17318', 1, 'Jakarta', '2000-12-25', 'Perum Griya Narama Blok F1/09 Jampang, Gn. Sindur, Bogor, Jawa Barat 16340', 'SMK KESEHATAN RIKSA INDRYA', 'IPA', 'SAINTEK', 1, '0895360708745', 'shafa25priasmoro@gmail.com', 'UIN Syarif Hidayatullah & Keperawatan', 'Lunas'),
(387, '2018-02-01 09:39:59', '2018-02-01', 'chintya agnesta', '337-05-17318', 0, 'bandung', '2000-04-29', 'komplek sarua permai, jlnkapuas block C3/9 Rt.02 Rw.11', 'Sma Waskito', 'IPS', 'SOSHUM', 2, '081385181598', 'chintyaagnesta14@gmail.com', 'manajemen', 'Lunas'),
(388, '2018-02-01 09:48:00', '2018-02-01', 'zaliani salsabila', '338-05-17318', 0, 'wonogiri', '2000-04-13', 'vila pamulang mas jl.palemas II blok D7/no.9 rt.002 rw.006', 'Sma Waskito', 'IPS', 'SOSHUM', 2, '089619808513', 'jeilabilla@gmail.com', 'psikologi', 'Lunas'),
(389, '2018-02-01 14:38:40', '2018-02-01', 'Serina Indah Fitriani', '339-05-17318', 0, 'Tangerang', '2000-01-12', 'Jln.karyawan 2 RT.02 RW.05 No.63c Karang Tengah Ciledug, Tangerang', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '085890609980', 'serinaindah27878@gmail.com', 'UNPAD : AKUNTANSI, UIN : AKUNTANSI, UNJ : AKUNTANSI & PSIKOLOGI', 'Lunas'),
(390, '2018-02-02 03:26:15', '2018-02-02', 'Luthfi Mutoinah', '108-02-17318', 1, 'Jakarta  ', '2000-06-06', 'Jl bulak Wangi III Ciputat Kota Tangerang Selatan ', 'SMKN 4 KOTA TANGERANG SELATAN ', 'Lainnya', 'SAINTEK', 1, '089654585728/08', 'Luthfimutoinah18@gmail.com', 'keperawatan & Undip', 'Lunas'),
(391, '2018-02-02 04:19:32', '2018-02-02', 'Rovi aturrosidah', '109-02-17318', 1, 'Tasikmalaya,  26 juni 2000', '2000-06-26', 'Jln raya puspitek, pondok benda, Rt/Rw 002/004', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '0895325257472', 'roviaturrosidah31@gmail.com', 'keperawatan ', 'Lunas'),
(392, '2018-02-02 04:47:34', '2018-02-02', 'Albaroka Laula', '340-05-17318', 0, 'Jakarta', '2000-08-22', 'puri pamulang\r\njln. matahari IV blok H1 no 48', 'SMA Waskito', 'IPS', 'SOSHUM', 2, '082210387033', 'albarokalaula@gmail.com', 'PGMI', 'Lunas'),
(393, '2018-02-02 05:06:59', '2018-02-02', 'Aldila Muly Indriyani', '110-02-17318', 1, 'Jakarta  ', '2000-10-23', 'Jl. Masjid lio Garut rt 002 rw 01 no .63 Parigi baru', 'SMKN 4 KOTA TANGERANG SELATAN ', 'Lainnya', 'SAINTEK', 1, '082298502521', 'aldilamuly75@gmail.com', 'Farmasi & unpad', 'Lunas'),
(394, '2018-02-02 05:46:31', '2018-02-02', 'Sonia nila maylani ', '', 1, 'Sukabumi', '2000-05-28', 'Griya indah serpong blok g6 no 9 rt 01 rw 16', 'Smk kesehatan letris indonesia 2', 'Lainnya', 'SAINTEK', 1, '0895349151209', '19sonianila.81@gmail.com', 'Keperawatan ', ''),
(395, '2018-02-02 06:24:03', '2018-02-02', 'Bella Fariza Marsyah', '', 0, 'Jakarta', '2000-03-15', 'Villa Gading Harapan blok wa4 no39', 'SMAN 1 Babelan', 'IPA', 'SAINTEK', 1, '089625729012', 'bellafarizamarsyah@gmail.com', 'Kedokteran & UGM', ''),
(396, '2018-02-02 06:27:25', '2018-02-02', 'Aprilia Nur Kumalasari', '', 0, 'Bekasi', '2000-04-22', 'Villa gading harapan 3. Kedung jaya babelan bekasi', 'Sman 1 Babelan', 'IPA', 'SAINTEK', 1, '081316768975', 'nkapril22@gmail.com', 'Teknik Industri, Universitas Gadjah Mada', ''),
(397, '2018-02-02 07:34:40', '2018-02-02', 'Nabila Syarifah', '163-02-17318', 1, 'Jakarta', '2000-09-25', 'kampung Pd Miri rt/rw 003/005 rawakalong gunung Sindur Bogor', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '089513716395', 'nabilasyarifah123@gmail.com', 'keperawatan', 'Lunas'),
(398, '2018-02-02 07:42:58', '2018-02-02', 'Dzul Fahmi Riadh', '178-02-17318', 1, 'Tangerang', '1999-07-10', 'Pondok Ranji RT.002/04 Pondok Karya, Pondok Aren, Tangerang Selatan, Banten', 'SMK Triguna Utama', 'Lainnya', 'SAINTEK', 1, '087776199629', 'fahmr710@gmail.com', 'Teknologi Informatika', 'Lunas'),
(399, '2018-02-02 11:26:07', '2018-02-02', 'Safrina Zakiya', '341-05-17318', 0, 'Jakarta', '2000-05-22', 'Jl. Saman no : 34 rt/rw 01/07 Kp. Gaga, Larangan. Kota Tangerang', 'MAN 10 JAKARTA', 'IPS', 'SOSHUM', 2, '089519839273', 'fina.13.fs@gmail.com', 'Pendidikan IPS : UIN Jakarta, PGSD : UNJ, PGSD : UNS (Kebumen)', 'Lunas'),
(400, '2018-02-02 12:47:11', '2018-02-02', 'NABILA BALQIST GHINA HUSADA', '342-05-17318', 0, 'JAKARTA ', '2000-06-07', 'JL.ANGGUR 2 BLOK I3 NO 14 PAMULANG ESTATE- TANGERANG SELATAN', 'SMAN 6 KOTA TANGERANG SELATAN', 'IPS', 'SOSHUM', 2, '085691265777', 'nabilabalqistghina@gmail.com', 'ILMU HUKUM -UIN JAKARTA, KESEJAHTERAAN SOSIAL UIN JAKARTA', 'Lunas'),
(401, '2018-02-02 23:04:00', '2018-02-03', 'Alfamya Riztriamanda', '111-02-17318', 1, 'Jakarta &', '2000-01-22', 'Villa Inti Persada Jalan Elang Jawa II blok D 11 no.5 rt 003 rw 028 kel. Pamulang Timur, kec. Pamulang - Tangerang Selatan', 'SMA NEGERI 8 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081282084631', 'alfamyariztriamanda@gmail.com', 'Farmasi & UIN Jakarta', 'Lunas'),
(402, '2018-02-03 00:18:41', '2018-02-03', 'Inda raihfi', '112-02-17318', 0, 'Bogor ', '1999-01-11', 'Kp baru prapatan muni desa batujajar cigudeg bogor ', 'Smk kesehatan riksa indrya', 'Lainnya', 'SAINTEK', 1, '081519771560', 'kwonrayhfi@gmail.com', 'Keperawatan ', 'Lunas'),
(403, '2018-02-03 08:08:47', '2018-02-03', 'Robi\'atul Adawiyah', '343-05-17318', 0, 'Jakarta', '2000-10-27', 'Jln Teluk Gong TPI 1 No.35 Rt.011 Rw.007 No.35', 'MAN 1 Jakarta', 'Agama', 'SOSHUM', 2, '081905393292', 'robiatula2000@gmail.com', 'Pendidikan Bahasa Arab UIN Jakarta', 'Lunas'),
(404, '2018-02-03 08:12:35', '2018-02-03', 'Nada labibah', '344-05-17318', 0, 'Jakarta', '2000-08-03', 'Jln. Pluit dalam rt015/rw08 no. 25', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '082299894783', 'arifsyarifuddinnaib@gmail.com', 'Ilmu perpustakaan - uin sunan kali jaga', 'Lunas'),
(405, '2018-02-03 11:29:25', '2018-02-03', 'Dzikra Hafizhah Endi', '', 0, 'Jakarta', '2000-05-16', 'Jalan H. Buamg RT/02/007 Ulujami, Jaksel. ', 'MAN 19 Jakarta', 'IPA', 'SAINTEK', 1, '089618199053', 'jikrahafizah@gmail.com', 'Agronomi dan Hortikultura', ''),
(406, '2018-02-03 11:47:22', '2018-02-03', 'Fildzah Ibnati Farassilmi', '345-05-17318', 0, 'Tangerang', '2000-08-09', 'Jl. Pd. Kacang Prima. Kel. Pd. Kacang Timur Rt 02/05 No. 1, Kec. Pd. Aren, Tangerang Selatan ', 'SMAN 3 Tangerang', 'IPS', 'SOSHUM', 2, '081297268116', 'fildzah.ibnati@gmail.com', 'Univ. Brawijaya jurusan HI', 'Lunas'),
(407, '2018-02-03 11:51:49', '2018-02-03', 'NUR ALFIYANTI NURDIN', '', 0, 'TANGERANG', '2000-07-12', 'Jalan Masjid Nurul Yaqin RT02 RW07 Kp. Kebon Cinangka Sawangan Kota Depok', 'MAN 4 Jakarta', 'Bahasa', 'SOSHUM', 2, '087767274332', 'nuralfi731@gmail.com', 'Pendidikan Bahasa Arab UPI', ''),
(408, '2018-02-03 12:11:02', '2018-02-03', 'ANNAS MIFTAHUL FALLAH', '113-02-17318', 0, 'JAKARTA', '2000-06-06', 'Jalan panti asuhan, gang haji manat rt 001/rw 012 no 67', 'MAN 19 JAKARTA SELATAN', 'IPA', 'SAINTEK', 1, '085817295381', 'annasmiftahulfallah6@gmail.com', 'TEKNOLOGI PANGAN DAN HASIL PERTANIAN (TPHP) UGM', 'Lunas'),
(409, '2018-02-03 12:40:35', '2018-02-03', 'Rahmania ', '', 0, 'Jakarta', '1999-12-12', 'Jalan Kweni rt.004 rw.010 no.17 Kebayoran lama , Jakarta Selatan', 'MA ALFALAH', 'IPS', 'SOSHUM', 2, '0895365262112', 'niarahma622@gmail.com', 'Komunikasi Penyiaran Islam, UIN Syarif Hidayatullah Jakarta', ''),
(410, '2018-02-04 03:55:53', '2018-02-04', 'Wardah Fadilah', '346-05-17318', 0, 'Tangerang', '2000-04-17', 'Jalan mahoni 2 RT 03 RW 02 nomor 06 (gang setiakawan)\r\n', 'SMA Waskito', 'IPS', 'SOSHUM', 2, '087885474387', 'wardahfadilah851@gmail.com', 'Pgmi', 'Lunas'),
(411, '2018-02-04 09:32:59', '2018-02-04', 'Dafiq Tri Wicaksono', '114-02-17318', 1, 'jakarta', '2000-10-21', 'jl. Tanjung Sanyang rt.04 rw.008 no.52', 'Man 6 jakarta', 'IPA', 'SAINTEK', 1, '081317196577', 'Dafiqtw34@gmail.com', 'pertambangan UPN', 'Lunas'),
(412, '2018-02-04 13:09:23', '2018-02-04', 'Rani nibras', '', 0, 'Lampung', '2000-05-10', 'Vila dago tol', 'Sman 9 tangerang selatan', 'IPS', 'SOSHUM', 2, '085211385577', 'rani.nibras@gmail.com', 'Arkeologi Ugm', ''),
(413, '2018-02-05 00:16:10', '2018-02-05', 'Muhammad Rafi Bahrur Rizki', '115-02-17318', 0, 'Batam', '2000-05-30', 'Jl. Dewi Sartika Cililitan Kecil 1 RT04/RW07 No. 34', 'MAN 6 Jakarta', 'IPA', 'SAINTEK', 1, '081703567473', 'rafibatam2@gmail.com', 'Teknik Informatika & Universitas Veteran Jakarta', 'Lunas'),
(414, '2018-02-05 04:41:19', '2018-02-05', 'ROSANA ULY RONA', '', 0, 'TANGERANG', '1998-10-28', 'JL. SUKA BAKTI 2 NO. 42 RW005/002 SERUA INDAH CIPUTAT', 'SMK NEGERI 1 KOTA TANGERANG SELA', 'Lainnya', 'SOSHUM', 2, '089657508079', 'rosanaulyrona.12ak2@gmail.com', 'ilmu hukum & UIN JAKARTA', ''),
(415, '2018-02-05 08:11:49', '2018-02-05', 'salsabila sefriantina', '', 0, 'tangerang', '2000-09-07', 'taman pondok cabe blok c3 no.3 pamulang tangerang selatan', 'sma nusantara plus', 'IPA', 'SAINTEK', 1, '082212086957', 'ssefrianita@gmail.com', 'ilmu gizi, universitas diponegoro', ''),
(416, '2018-02-05 12:40:12', '2018-02-05', 'sisil aulia rahma', '116-02-17318', 0, 'Tangerang', '2000-06-10', 'Gang zaman IX blok sale rt04/02 no.39, jurang mangu barat, tangerang selatan, 15223', 'Smk farmasi minasa mulia', 'Lainnya', 'SAINTEK', 1, '08998058336', 'sisilauliarahma1996@gmail.com', 'Analisis kimia, politeknik AKA bogor', 'Lunas'),
(417, '2018-02-05 13:18:20', '2018-02-05', 'Novita Sari', '117-02-17318', 0, 'Jakarta,07 November 1999', '1999-11-07', 'Jln bentengan 2 RT 02 RW 06 no 68 jakarta Utara kecamatan tj priok', 'SMK farmasi Puskesad Jakarta', 'Lainnya', 'SAINTEK', 1, '089677385402', 'Novitasari123122@gmail.com', 'Farmasi', 'Lunas'),
(418, '2018-02-05 15:25:37', '2018-02-05', 'Ivian Nur Perdania ', '118-02-17318', 1, 'Jakarta', '2000-03-21', 'Puri bintaro hijau Blok C2/11 Rt09/12 ceger,pondok aren, tangerang selatan', 'SMK Kesehatan Riksa Indrya', 'Lainnya', 'SAINTEK', 1, '083807067224', 'iviannurperdania@gmail.com', 'keperawatan', 'Lunas'),
(419, '2018-02-06 01:12:54', '2018-02-06', 'Shafira gretania palamani', '119-02-17318', 1, 'Jakarta,', '2001-06-07', 'Pamulang Indah MA Jalan Nusa Indah B3 no. 29', 'SMA Waskito', 'IPA', 'SAINTEK', 1, '08999887753', 'gpshafira@gmail.com', 'Matematika dan UIN', 'Lunas'),
(420, '2018-02-06 01:39:12', '2018-02-06', 'Amalia sivani', '', 0, 'Jakarta', '2000-04-14', 'Jl tubagus angke no 96a', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '088211763206', 'ameliasivani247@gmail.com', 'Psikologi - UIN Sunan kalijaga', ''),
(421, '2018-02-06 03:33:09', '2018-02-06', 'Nahdatul musyayyadah', '347-05-17318', 0, 'Jakarta', '1999-09-19', 'Jl kampung jawa malang KEB sayur V no.16 rt 10 rw 07 jakarta barat', 'MAN 1 Jakarta', 'Agama', 'SOSHUM', 2, '08121375535', 'Claudia.nahda@gmail.com', 'Manajemen pendidikan islam UIN jakarta', 'Lunas'),
(422, '2018-02-06 03:36:53', '2018-02-06', 'Siti Maulidatul Fadlilah', '348-05-17318', 0, 'Jakarta', '2001-06-11', 'Jl utama sakti 1 Rt011/Rw007 No. 11A grogol petamburan, Jakarta Barat', 'MAN 1 Jakarta', 'Agama', 'SOSHUM', 2, '085609413027', 'maulidafadilah11@gmail.com', 'Komunikasi Penyiaran Islam & UIN SDG BDG', 'Lunas'),
(423, '2018-02-06 05:49:15', '2018-02-06', 'Widya Permatasari', '120-02-17318', 1, 'Jakarta ', '2000-11-18', 'Jl.Gapura menteng III Rt.005/Rw.001 no.36', 'SMKN 4 Tangsel', 'Lainnya', 'SAINTEK', 1, '081297236343', 'widyapermatasari922@yahoo.com', 'Fakultas kedokteran gigi', 'Lunas'),
(424, '2018-02-06 05:57:17', '2018-02-06', 'Dewi novianti', '121-02-17318', 1, 'kuningan', '1999-11-15', 'jl.h.kipin rt 06/01', 'SMKN 4 Tangsel', 'Lainnya', 'SAINTEK', 1, '089603490987', 'anggiaulia750@gmail.com', 'Keperawatan', 'Lunas'),
(425, '2018-02-06 06:00:11', '2018-02-06', 'Nancy Azzahra', '122-02-17318', 1, 'Tangerang', '2000-07-17', 'Jl milah raya, Sawah baru .Ciputat Tangerang Selatan', 'SMKN 4 TANGERANG SELATAN', 'Lainnya', 'SAINTEK', 1, '083813123823', 'nancyazr17@gmail.com', 'Keperawatan & Undip', 'Lunas'),
(426, '2018-02-06 07:34:45', '2018-02-06', 'Salsabila Chaelani', '349-05-17318', 0, 'Jakarta', '2000-06-28', 'Jl Bratasena IV blok bc 1 no 25 reni jaya baru pamulang. ', 'SMA WASKITO', 'IPS', 'SOSHUM', 2, '087888143636', 'chaelanisalsabila@gmail.com', 'psikolog. UIN JAKARTA', 'Lunas'),
(427, '2018-02-06 07:36:49', '2018-02-06', 'Fara Ansya', '350-05-17318', 0, 'Tangerang', '2000-03-31', 'perum.bumi ketapang indah c/8', 'Sma Waskito', 'IPS', 'SOSHUM', 2, '08811586571', 'Faraansya@gmail.com', 'manajemen UIN jakarta', 'Lunas'),
(428, '2018-02-06 08:14:11', '2018-02-06', 'Aliefah Alenasari Shilma', '123-02-17318', 0, 'Jakarta', '2000-05-24', 'Perum pondok benda indah rt 01 rw 01 no 48 ', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '08984919924', 'aliefahalena24@gmail.com', 'fttm ITB, fitb ITB, Teknik Kimia UNPAD', 'Lunas'),
(429, '2018-02-06 10:28:57', '2018-02-06', 'menik indah sari', '351-05-17318', 0, 'jakarta 1 juni 2000', '2000-06-01', 'jalan h muchtar raya rt 10 rw 01 no 56 petukangan utara pesanggrahan jakarta selatan 12260', 'sma budi mulia', 'IPS', 'SOSHUM', 2, '089621815771', 'menikindahsari01@gmail.com', 'perbankan syariah & uin', 'Lunas'),
(430, '2018-02-06 10:41:29', '2018-02-06', 'windy chantika putri', '443-05-17318', 0, 'Jakarta', '2001-09-10', 'komplek villa japos blok A4 no28 ciledug', 'SMA Budi Mulia', 'IPS', 'SOSHUM', 2, '085778733985', 'windy_chantika@yahoo.com', 'manajemen', ''),
(431, '2018-02-06 10:42:53', '2018-02-06', 'afifah putri anjani', '352-05-17318', 0, 'bogor', '2000-03-06', 'Komp puri kartika baru blok j4 no.1', 'sma budi mulia', 'IPS', 'SOSHUM', 2, '085883771145', 'afifahptranj@gmail.com', 'hubungan internasional', 'Lunas'),
(432, '2018-02-06 10:44:18', '2018-02-06', 'Kinanti Syadilanury Eurotama', '353-05-17318', 0, 'Tangerang', '2000-06-23', 'jl.h.gedad gg.h.liyas rt.001/03 no.31 paninggilan utara ciledug 15153', 'SMA Budi Mulia', 'IPS', 'SOSHUM', 2, '08121364166', 'kinantisyadilanurye@gmail.com', 'Akuntansi & UIN', 'Lunas'),
(433, '2018-02-06 13:03:00', '2018-02-06', 'Nadaa Dwi Ashila', '124-02-17318', 0, 'Jakarta', '1999-12-27', 'Jalan beringin 1 rt04/007 no 66 pamulang barat', 'SMA Waskito', 'IPA', 'SAINTEK', 1, '089508301231', 'nadaa.dwi99@gmail.com', 'Agribisnis IPB', 'Lunas'),
(434, '2018-02-06 13:10:05', '2018-02-06', 'Maulidina Rahayu', '125-02-17318', 0, 'Jakarta', '2000-06-14', 'Jalan kavling keuangan 2 Rt 06 Rw 01 No.20, Kedaung - Pamulang, 15415', 'SMA Waskito', 'IPA', 'SAINTEK', 1, '089506350732', 'maulidinarahayu21@gmail.com', 'Pendidikan Matematika UIN', 'Lunas'),
(435, '2018-02-06 13:14:13', '2018-02-06', 'Nabila Syavana', '354-05-17318', 0, 'Tangerang', '2001-01-31', 'Jln. Tpu parakan RT01/09 no.86 pamulang 2, tangerang selatan', 'SMA WASKITO', 'IPA', 'SOSHUM', 2, '0895347224787', 'nabilasyavanaa@gmail.com', 'Manajemen UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(436, '2018-02-07 00:55:10', '2018-02-07', 'Indah riskiani', '355-05-17318', 0, 'Tangerang', '2018-01-29', 'Jl. Kesadaran no. 12 pamulang', 'Sma waskito', 'IPA', 'SOSHUM', 2, '089667365408', 'indahriskiani2000@gmail.com', 'Komunikasi uin syarif hidayatullah', 'Lunas'),
(437, '2018-02-07 03:31:12', '2018-02-07', 'Rani Wulandari', '356-05-17318', 0, 'Banjarnegara', '1999-08-14', 'Jl. Rajawali Selatan XII \r\nRT01/02', 'SMK Negeri 23', 'Lainnya', 'SOSHUM', 2, '083895144594', 'raniwulandari8@gmail.com', 'Pendidikan Luar Sekolah - UNJ', 'Lunas'),
(438, '2018-02-07 03:43:08', '2018-02-07', 'Nabila Qurrota A\'yun', '357-05-17318', 0, 'Jakarta', '1999-10-02', 'Jalan Benyamin Suaeb Blok C3 Tower A2 Lantai 13/19', 'SMAN 40 Jakarta', 'IPS', 'SOSHUM', 2, '085795570196', 'nabila.ayun@gmail.com', 'Pendidikan Bahasa Arab', 'Lunas'),
(439, '2018-02-07 04:07:54', '2018-02-07', 'M Hilman Nudin', '358-05-17318', 0, 'Jakarta', '2000-05-06', 'Jln. Krendang timur rt 008/ rw 002 no:23 a', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '0895412996740', 'hilmannudin66@gmail.com', 'Pendidikan agama islam - UIN Jakarta', 'Lunas'),
(440, '2018-02-07 04:12:07', '2018-02-07', 'Nuraini widad', '359-05-17318', 0, 'Jakarta', '2001-02-17', 'Jl. Jembatan kedung', 'MAN 1 Jakarta', 'Agama', 'SOSHUM', 2, '+6281316583855', 'nurainiwidad17@gmail.com', 'Pengembangan masyarakat islam UIN Jakarta', 'Lunas'),
(441, '2018-02-07 04:31:12', '2018-02-07', 'Erly febriana', '126-02-17318', 1, 'Tangerang', '2001-02-11', 'Jalan kayu manis raya rt04/02 pondok cabe udik pamulang tangerang selatan 15418', 'Smk kesehatan letris indonesia 2', 'Lainnya', 'SAINTEK', 1, '089644809105', 'erlyfebrianaa@gmail.com', 'Keperawatan', 'Lunas'),
(442, '2018-02-07 08:45:48', '2018-02-07', 'Umi atikah', '360-05-17318', 0, 'Tegal', '1999-11-30', 'Jl.kampung gusti gg.kantong', 'Man 1 jakarta', 'Agama', 'SOSHUM', 2, '083873008350', 'atikahumi3@gmail.com', 'UIN malang - pendidikan bahasa arab', 'Lunas'),
(443, '2018-02-07 09:35:49', '2018-02-07', 'Calvina Izumi Ahmad', '', 0, 'Jakarta', '2000-03-31', 'Jl. Tambora III gg.5 Rt. 08 rw. 05 no. 9', 'MAN 1 Jakarta', 'IPA', 'SAINTEK', 1, '083808630899', 'vvina6630@gmail.com', 'Ilmu keperawatan, Ahli gizi. UIN', ''),
(444, '2018-02-07 14:16:28', '2018-02-07', 'erika chaerunisa', '', 0, 'jakarta', '2000-01-19', 'Jl jembatan besi 1 rt 04 rw 01 no 62', 'MAN 1 Jakarta', 'IPA', 'SAINTEK', 1, '083870237376', 'erikachaerunisa4@yahoo.com', 'keperawatan & UIN Syarif Hidayatullah', ''),
(445, '2018-02-07 14:53:35', '2018-02-07', 'M. Ilham Akbar R.S.', '127-02-17318', 0, 'Bojonegoro', '2000-06-26', 'Jl. Kasuari raya as5 no5, kranggan permai, jatisampurna, bekasi', 'SMA School of Human', 'IPA', 'SAINTEK', 1, '082247619740', 'rilham5552@gmail.com', 'Biologi ITB', 'Lunas'),
(446, '2018-02-07 14:57:14', '2018-02-07', 'Syahrul Magfiroh', '361-05-17318', 0, 'Bekasi', '1999-12-18', 'Jl. Gunung indah 6, no 48A, Ciputat, Tanggerang Selatan, Banten, Jawa Barat', 'School of Human', 'IPS', 'SOSHUM', 2, '081617602638', 'smagfiroh3@gmail.com', 'Antropologi sosial(UI)', 'Lunas'),
(447, '2018-02-07 23:28:52', '2018-02-08', 'grace panjaitan', '', 0, 'tarutung', '2000-04-18', 'jln. T.B simatupang,gg. sahabat baik, Tarutung', 'SMA Negeri 3 Tarutung', 'IPA', 'SAINTEK', 1, '082288474843', 'gracepanjaitan89@gmail.com', 'FKM, UI', ''),
(448, '2018-02-08 00:15:51', '2018-02-08', 'SITI MAYSAROH', '', 0, 'JAKARTA', '1999-06-22', 'Jl.KALI ANYAR X GANG 3 rt/rw 010/002 no.18A', 'MAN 1 JAKARTA', 'IPA', 'SAINTEK', 1, '083897815969', 'maysa9206@gmail.com', 'Keperawatan,  kesehatan masyarakat &uin syarif hidyatullah', ''),
(449, '2018-02-08 00:39:03', '2018-02-08', 'Dwi Tita Apriani', '128-02-17318', 1, 'Tangerang', '2000-04-20', 'Jalan dr Setia Budi, Gg. Pinang, RT 001/002 No. 03/C, Pamulang Timur, Pamulang, Tangerang Selatan, Banten.', 'SMK KESEHATAN LETRIS INDONESIA 2', 'Lainnya', 'SAINTEK', 1, '089632777919', 'dwitita2000@gmail.com', 'Perawat & UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(450, '2018-02-08 02:39:17', '2018-02-08', 'Arini Ayu Ardianti', '129-02-17318', 1, 'Jakarta', '2000-04-13', 'villa dago cluster alam asri 2 blok i4 no 2, RT. 002/ RW. 023, kel Benda Baru , kec PAMULANG TANGERANG SELATAN, kode pos 15416', 'SMA Waskito', 'IPA', 'SAINTEK', 1, '085816841523', 'ariniayuardianti@gmail.com', 'Agribisnis IPB', 'Lunas'),
(451, '2018-02-08 03:59:40', '2018-02-08', 'Siti Nur Azizah', '130-02-17318', 1, 'Wonogiri, 06 November 1999', '2018-02-08', 'Jalan Benda Timur 10 E38 No.17 Pamulang Permai 2 Rt005/014', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '085885803925', 'snurulazizah123@gmail.com', 'Keperawatan & UIN', 'Lunas'),
(452, '2018-02-08 04:12:10', '2018-02-08', 'Monica Princellia Cipta Mutia', '', 0, 'Jakarta', '2000-11-25', 'Jl. Trubus 2 Rt 04/04 No 27 A, Pondok Cabe Ilir, Pamulang, Tangsel.', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '089530099940', 'princelliamonica@gmail.com', 'Keperawatan', ''),
(453, '2018-02-08 04:39:22', '2018-02-08', 'Silvia Nur Rizki', '131-02-17318', 1, 'Tangerang', '2000-10-16', 'Jl. Cendrawasih RT 04 RW 06 No. 56 Cipayung Ciputat Tangerang Selatan', 'Smk Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '08778908117', 'sfajriyantiagustin@gmail.com', 'Keperawatan & UIN  Syarif Hidayatullah Jakarta & Universitas Pembangunan Veteran', 'Lunas'),
(454, '2018-02-14 00:56:34', '2018-02-14', 'Sabda Nurwasilah', '362-05-17318', 0, 'Tangerang', '2000-04-24', 'Jl. Jalur pipa gas Rt.01/02 No.25 Pamulang Timur', 'Smk Muhammadiyah 3 ciputat tange', 'Lainnya', 'SOSHUM', 2, '087877932971', 'sabdanurwasilah56@gmail.com', 'Fisika & UIN', 'Lunas'),
(455, '2018-02-14 01:02:55', '2018-02-14', 'Ana Novita', '132-02-17318', 1, 'Bogor,25 juni 1999', '1999-06-25', 'Jl.tanjung kp.bulak Rt 02/05 desa padurenan ', 'Smk kesehatan letris indonesia 2', 'Lainnya', 'SAINTEK', 1, '083819828647', '96ananovita05@gmail.com', 'keperawatan', 'Lunas'),
(456, '2018-02-14 01:15:03', '2018-02-14', 'Maria Anjani', '363-05-17318', 0, 'Tangerang', '2000-04-08', 'Jl. Amanah 1 rt 02 rw 02, pondok petir, bojongsari, depok', 'Sma Darussalam', 'IPA', 'SOSHUM', 2, '083863928530', 'sansandra1007@gmail.com', 'Hubungan Internasional - UI dan UIN', 'Lunas'),
(457, '2018-02-14 01:17:51', '2018-02-14', 'Sandra Ikhawati', '364-05-17318', 0, 'Cirebon', '2000-07-10', 'Jl. Sukun 1 rt/rw 03/05 Pamulang Barat, Tangerang Selatan, Banten', 'SMA Darussalam', 'IPA', 'SOSHUM', 2, '0895336986684', 'sandraikhawati@gmail.com', 'Kriminalogi-UI dan Psikologi-UIN', 'Lunas'),
(458, '2018-02-14 01:33:06', '2018-02-14', 'Rizky Akbar', '', 0, 'Bogor', '2000-05-19', 'Desa Teluk pinang kp cibolang Rt 04 Rw 03', 'SMAN 1 CIAWI ', 'IPS', 'SOSHUM', 2, '085719941699', 'rizkyakbar33755@gmail.com', 'Ilmu Keolahragaan UNJ, Perbankan Syariah UIN Jakarta, Sosiologi UIN Jakarta', ''),
(459, '2018-02-14 01:33:10', '2018-02-14', 'Rafi Salam', '', 0, 'Bogor', '2000-03-13', 'Jl. Raya Puncak, Ds. Gadog, Rt04/03, Kec. Megamendung, Kab\r\n Bogor', 'SMAN 1 CIAWI', 'IPS', 'SOSHUM', 2, '0895360720413', 'rafisalam8@gmail.com', 'Ilmu Kesejahteraan Sosial UI, Hubungan Internasional UIN Jakarta, Ilmu Kesejahteraan Sosial UIN Jakarta', ''),
(460, '2018-02-14 01:52:11', '2018-02-14', 'Urmayessi', '365-05-17318', 0, ' jakarta', '1999-01-11', 'Jln.pesing poglar no.4', 'man 1 jakarta', 'Agama', 'SOSHUM', 2, '081517640183', 'urmayessi98@gmail.com', 'komunikasi dan penyiaran islam .Uin syarif hidayatullah jakarta', 'Lunas'),
(461, '2018-02-14 02:26:41', '2018-02-14', 'Aditya Ibnu prasetyo', '366-05-17318', 0, 'Jakarta', '2000-10-21', 'Jl. Setiakawan 3', 'Madrasah Aliyah negeri 1 jakarta', 'Agama', 'SOSHUM', 2, '089515440953', 'adityaibnu28@gmail.com', 'Pendidikan agama Islam & UIN Syarif hidayatullah', 'Lunas'),
(462, '2018-02-14 02:29:54', '2018-02-14', 'Abdul goyab', '', 0, 'Jakarta', '2000-03-29', 'Rusunawa Tambora 1 twr a lt IX/15', 'Madrasah Aliyah negeri 1 jakarta', 'Agama', 'SOSHUM', 2, '085781170983', 'abdulgoyab@gmail.com', 'Pendidikan agama Islam & UIN Syarif hidayatullah', ''),
(463, '2018-02-14 02:34:52', '2018-02-14', 'Ahmad segi maulana', '367-05-17318', 0, 'Jakarta', '2000-08-23', 'Jl.kalianyar X rt.008/09 No.8', 'MAN1 JAKARTA', 'Agama', 'SOSHUM', 2, '081280477003', 'buntungbuaya637@gmail.com', 'Manajemen', 'Lunas'),
(464, '2018-02-14 02:39:03', '2018-02-14', 'Mar\'ati Fajrin', '368-05-17318', 0, 'Jakarta', '2000-10-29', 'Jl. Ked. Kaliangke rt 003/008 ', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '08996129864', 'maratifjrn@gmail.com', 'Universitas Indonesia, Psikologi', 'Lunas'),
(465, '2018-02-14 03:21:14', '2018-02-14', 'M alfa firdaus', '369-05-17318', 0, 'Jakarta', '2000-03-21', 'Jln taman delima 3 no 60 B', 'MAN 1 jakarta', 'Agama', 'SOSHUM', 2, '085603767389', 'alfafirdaus@gmail.com', 'Pendidikan bahasa inggris,  UIN ', 'Lunas'),
(466, '2018-02-14 03:36:40', '2018-02-14', 'Shafira faradiba', '370-05-17318', 0, 'Tangerang', '2000-01-16', 'Jl aria putra gg H Betong no 17 rt07/18 kedaung pamulang', 'SMAN 8 TANGSEL', 'IPS', 'SOSHUM', 2, '0895360525626', 'shafirafrdb16@gmail.com', 'Perbankan syariah', 'Lunas'),
(467, '2018-02-14 03:41:07', '2018-02-14', 'Safitri amelia', '371-05-17318', 0, 'Pandeglanh', '2000-04-15', 'Jl pesing poglar rt 01 rw 05 no 124', 'Madrasah Aliyah Negeri 1 Jakarta', 'Agama', 'SOSHUM', 2, '085816867983', 'safitriamelia1509@gmail.com', 'Tarjamah UIN jakarta', 'Lunas'),
(468, '2018-02-14 04:01:12', '2018-02-14', 'Putri herawati', '', 0, 'Bogor', '2000-09-11', 'Kp. Kareo rt03/04', 'SMA NEGRI 1 GUNUNG SINDUR', 'IPA', 'SAINTEK', 1, '087775422469', 'putriherawati24@gmail.com', 'Perawat', ''),
(469, '2018-02-14 04:01:22', '2018-02-14', 'Aulia qathrun nada ', '165-02-17318', 0, 'Bogor', '2000-06-20', 'Jl batutapak rt 01/06', 'SMA NEGRI 1 GUNUNG SINDUR ', 'IPA', 'SAINTEK', 1, '085779509790', 'auliaqathrun20@gmail.com', 'Pendidikan guru SD', 'Lunas'),
(470, '2018-02-14 04:25:50', '2018-02-14', 'Muhammad Andhika Prayugha', '', 0, 'Bogor', '1999-12-17', 'jl. Raya H.E Sukma KM.14 no.11 desa Ciherang Pondok rt.01 rw.01 kecamatan Caringin kabupaten Bogor.', 'SMAN 1 CIAWI', 'IPS', 'SOSHUM', 2, '085710137512', 'dikadong4@gmail.com', 'SASTRA INGGRIS UI, EKONOMI SYARI\'AH UIN JAKARTA, SOSIOLOGI UIN JAKARTA.', ''),
(471, '2018-02-14 05:06:14', '2018-02-14', 'Salma Nur Azizah F', '133-02-17318', 1, 'Bandung', '2000-05-16', 'Perum Griya Indah Serpong blok G4 no.5 Gunung Sindur - Bogor', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '082116338093', 'salma.naf82@gmail.com', 'Kesehatan Masyarakat di UIN', 'Lunas'),
(472, '2018-02-14 05:39:32', '2018-02-14', 'Bagus Sadewo', '372-05-17318', 0, 'Wonogiri ', '2000-10-10', 'Jl semeru gang 5', 'Man 1 jakarta ', 'Agama', 'SOSHUM', 2, '0895330306486', 'Bagusalghazali10@gmail.com', 'Pendidikan agama islam & uin syarif hidayatullah', 'Lunas'),
(473, '2018-02-14 05:47:24', '2018-02-14', 'Reza Jibran', '373-05-17318', 0, 'Jakarta', '2000-10-11', 'Jln. Pejagalan 4 rt04 rw05 no 159', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '083806042827', 'jibranrere@gmail.com', 'Hakim', 'Lunas'),
(474, '2018-02-14 05:52:46', '2018-02-14', 'Khaira Ummah Syafitri', '374-05-17318', 0, 'Tangerang', '2000-01-10', 'Jl. Matahari no 20 rt 002/06 kel sudimara pinang kec pinang kota Tangerang', 'MAN 10 Jakarta barat ', 'Agama', 'SOSHUM', 2, '089524336188', 'imjustira@gmail.com', 'pgsd uin dan unj', 'Lunas'),
(475, '2018-02-14 06:00:54', '2018-02-14', 'Dewila Nur Alifa', '375-05-17318', 0, 'Jakarta', '2000-06-19', 'Jl salak timur 3 no 19', 'MAN 1 jakarta', 'Agama', 'SOSHUM', 2, '083897814626', 'dewilanuralifa@gmail.com', 'Ekonomi bisnis, perbankan syari\'ah. UIN Jakarta', 'Lunas'),
(476, '2018-02-14 06:02:55', '2018-02-14', 'putri nitami rahayu', '134-02-17318', 1, 'bogor', '2000-06-09', 'Jl.kehakiman kp.alastua roman rt02/08 desa.cibinong kec.gunung sindur', 'SMK Kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '089642489761', '98putrinitamirahayu@gmail.com', 'keperawatan', 'Lunas'),
(477, '2018-02-14 06:05:27', '2018-02-14', 'Endang Fitriyani', '376-05-17318', 0, 'Sukaraja', '2000-12-29', 'jln.mangga ubi no 88 rt 005/007 ', 'MAN 1 Jakarta', 'Agama', 'SOSHUM', 2, '085921013183', 'endangfitriyani1@gmail.com', 'Hukum & UIN dan UPN', 'Lunas'),
(478, '2018-02-14 06:11:38', '2018-02-14', 'tina sagitasari', '377-05-17318', 0, 'jakarta', '2000-10-20', 'Jl kp gusti', 'man 1 jakarta', 'Agama', 'SOSHUM', 2, '083872455753', 'sgtsrtina@gmajl.com', 'pedidikan guru raudhatul athfal, uin jakarta', 'Lunas'),
(479, '2018-02-14 06:24:36', '2018-02-14', 'Salma Nurul Fuadah', '378-05-17318', 0, 'Tangerang', '2000-04-29', 'Jln. H. Mean ujung rt 01 rw 10 kel. Karang timur kec. Karang tengah, Kota Tangerang ', 'Man 10 Jakarta Barat', 'Agama', 'SOSHUM', 2, '082299774926', 'salmanurul2611@gmail.com', 'Hukum Keluarga Islam - UIN Jakarta', 'Lunas'),
(480, '2018-02-14 06:27:01', '2018-02-14', 'Syifa Fajriah', '379-05-17318', 0, 'Tangerang', '2000-08-04', 'Gg. Hidayah II Rt 002/013 No.16', 'MAN 10 JAKARTA BARAT', 'Agama', 'SOSHUM', 2, '083811181142', 'syifafajriah7@gmail.com', 'PGMI dan PGRA di UIN ', 'Lunas'),
(481, '2018-02-14 06:40:42', '2018-02-14', 'Nandhita nur fadjriah ', '380-05-17318', 0, 'Tangerang ', '2000-06-20', 'Jl. tanah seratus rt 06 /04 nomor 01 ', 'Man 10 Jakarta ', 'Agama', 'SOSHUM', 2, '085783945843', 'Naandhittaaa@gmail.com', 'Sastra inggris, UIN', 'Lunas'),
(482, '2018-02-14 06:46:10', '2018-02-14', 'Luthfiatu nisa', '381-05-17318', 0, 'Jakarta', '2018-05-04', 'Jl.musyawarah rt 015/02 kelurahan joglo, kecamatan kembangan, jakarta barat', 'Man 10 jakarta barat', 'Agama', 'SOSHUM', 2, '089666836607', 'luthfiatunisaaa@gmail.com', 'Pgmi, Uin', 'Lunas'),
(483, '2018-02-14 06:47:05', '2018-02-14', 'Anjani dhea shylvia doris dolly', '382-05-17318', 0, 'Jakarta, 13 oktober 2000', '2000-10-13', 'Jalan benda timur 12A. Pamulang 2', 'SMK KESEHATAN LETRIS INDONESIA 2', 'Lainnya', 'SOSHUM', 2, '085819358801', 'janishylll13@gmail.com', 'Ekonomi', 'Lunas'),
(484, '2018-02-14 06:57:26', '2018-02-14', 'Aditya Rhamdhan', '383-05-17318', 0, 'Jakarta ', '1999-12-13', 'Jalan tambora 3 Gg 4 Rw 06 Rt 005', 'SMK PGRI 34', 'Lainnya', 'SOSHUM', 2, '083815619100', 'aramadhan052@gmail.com', 'Ilmu politik & Universitas Negri Jakarta', 'Lunas'),
(485, '2018-02-14 07:46:56', '2018-02-14', 'Siti fajriyanti agustin', '135-02-17318', 1, 'Tanggerang', '2000-08-30', 'Jl Cimandiri 4 Rt 01 Rw 02 Cipayung Ciputat, Tanggerang selatan', 'Smk kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '0895344301413', 'mamahmartinah@gmail.com', 'Keperawatan', 'Lunas'),
(486, '2018-02-14 08:06:24', '2018-02-14', 'Sri Devi muthobibah ', '', 0, 'Bogor, 24 juni 1999', '2018-03-17', 'Jl. H. Nawi malik gg .Tanjung rt01/rw02 serua bojongsari sawangan depok', 'Smk kesehatan letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '083871879349', 'sridevimuthobibah3@gmail.com', 'Keperawatan ', ''),
(487, '2018-02-14 08:08:44', '2018-02-14', 'ega.safitri', '384-05-17318', 0, 'Jakarta', '2001-01-09', 'jln katalia 1 timur , kota bambu', 'MAN 1 jakarta', 'Agama', 'SOSHUM', 2, '083808366832', 'ega.safitri3167@gmail.com', 'pendidikan bahasa inggris UIN Jakarta', 'Lunas'),
(488, '2018-02-14 09:03:35', '2018-02-14', 'Michail Muhammad Fadhil', '385-05-17318', 0, 'Jakarta', '1999-06-17', 'Komp DDN Rt.01/08 No. 33  Kel. Karang Mulya Kec. Karang Tengah Tangerang,  Banten', 'MAN 10 JAKARTA BARAT', 'Agama', 'SOSHUM', 2, '087879165365', 'michailfadhil17@gmail.com', 'KPI di UIN bandung dan UIN Riau', 'Lunas'),
(489, '2018-02-14 09:29:39', '2018-02-14', 'Basmah Fahria Zulfa', '386-05-17318', 0, 'Tangerang', '2000-10-30', 'JL Karyawan 1 rt 01/05 No.14', 'MAN 10 JAKARTA', 'Agama', 'SOSHUM', 2, '085921784377', 'basmahffahria@gmail.com', 'KOMUNIKASI UIN JAKARTA', 'Lunas'),
(490, '2018-02-14 09:55:59', '2018-02-14', 'Ratih Dewi Pekerti', '185-02-17318', 0, 'Jakarta', '2000-04-26', 'Panorama Serpong B1/18, Serpong, Tangerang Selatan', 'SMAN 6 Tangerang selatan', 'IPA', 'SAINTEK', 1, '081291228297', 'dewipekerti@gmail.com', 'Kedokteran Gigi & Universitas Padjajaran', 'Lunas'),
(491, '2018-02-14 10:20:53', '2018-02-14', 'Yulia Firli Dayanti', '387-05-17318', 0, 'Tangerang', '2000-07-30', 'Kp. Pondok Lakah paninggilan japos ', 'MAN 10 Jakarta Barat', 'Agama', 'SOSHUM', 2, '089618745340', 'yuliafirlidayanti30@gmail.com', 'Perbankkan syariah & UIN jakarta', 'Lunas'),
(492, '2018-02-14 10:53:15', '2018-02-14', 'Nur sella fauziah', '388-05-17318', 0, 'Tangerang', '2000-10-28', 'Jalan karyawan 2 rt02/05 no 63a karang tengah kota tangerang', 'MAN 10 Jakarta barat ', 'Agama', 'SOSHUM', 2, '085814351199', 'nursellafauziah@gmail.com', 'PAI,UIN jakarta', 'Lunas'),
(493, '2018-02-14 11:07:36', '2018-02-14', 'Dhiya Fikriyah', '389-05-17318', 0, 'Tangerang', '2000-04-10', 'Jl. Sunan Kalijaga rt.003/11 No.29', 'MAN 10 Jakarta', 'Agama', 'SOSHUM', 2, '085775212889', 'dhiyafikriyah@gmail.com', 'Psikologi dan Perbankan Syariah di UIN Jakarta', 'Lunas'),
(494, '2018-02-14 12:15:13', '2018-02-14', 'Muhamad riyan anwar syah', '390-05-17318', 0, 'Jakarta', '2000-02-29', 'Jl. Jembatan kedung rt 003/05 no. 14 kel. Tambora kec. Tambora Jakarta barat ', 'Smk bina karya', 'Lainnya', 'SOSHUM', 2, '08970021790', 'muhamadriyan0305@gmail.com', 'Ilmu perpustakaan', 'Lunas'),
(495, '2018-02-14 12:21:11', '2018-02-14', 'Tasya Alifa tiara', '', 0, 'Tangerang', '2000-08-15', 'Jl.ar-rahman rt03/04 no.116 karang tengah. Ciledug tangerang', 'Man 10 jakarta', 'Agama', 'SOSHUM', 2, '089618213287', 'tasyaalifa15@gmail.com', 'PG MI & UIN Jakarta', ''),
(496, '2018-02-14 13:11:57', '2018-02-14', 'Rahmawati Rianjani', '391-05-17318', 0, 'Jakarta', '2000-01-15', 'Jl.H. kana peninggilan', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '083895275107', 'rahmawatirianjani@gmail.com', 'Administrasi Negara Universitas Padjajaran', 'Lunas'),
(497, '2018-02-14 13:13:10', '2018-02-14', 'Zaihira yasmin', '', 0, 'Tanggerang', '2000-08-31', 'Jalan joglo raya rudal 5 rt 01 rw 05 no 43', 'MAN 10 Jakarta barat ', 'Agama', 'SOSHUM', 2, '08121954241', 'Yasminzaihira123@gmail.com', 'Pgmi/pgsd uin dan unj', ''),
(498, '2018-02-15 04:46:24', '2018-02-15', 'Santy Nuramalia', '392-05-17318', 0, 'Jakarta', '1999-08-23', 'Komplek Depag rt 004/003 Jakarta Barat', 'MAN 1 JAKARTA', 'Agama', 'SOSHUM', 2, '085779518426', 'nurma.oneng@gmail.com', 'ilmu komunikasi&UPN', 'Lunas'),
(499, '2018-02-15 04:49:38', '2018-02-15', 'Alfina Nurul Huda', '393-05-17318', 0, 'Tangerang', '2000-01-03', 'Jln. Gg. Madun 1 rt 02/05 pondok kacang timur , tangerang selatan', 'Man 10 Jakarta', 'IPS', 'SOSHUM', 2, '081806254953', 'Alfinanurulhuda01@gmail.com', 'Antropologi , universitas padjajaran', 'Lunas'),
(500, '2018-02-15 11:19:17', '2018-02-15', 'Maharani afifah Putri Suryasa', '', 0, 'Bandung', '1999-10-23', 'Komplek Vila Inti Persada blok C2 no.24 pamulang timur, tangsel', 'SMA muhammadiyah 25 Pamulang', 'IPS', 'SOSHUM', 2, '08996848008', 'maharaniafifah2310@gmail.com', 'FSRD ITB', ''),
(501, '2018-02-15 15:23:40', '2018-02-15', 'Citta Nayaka JyestaLoka', '', 0, 'Banten', '2000-11-22', 'Villa pamulang df 18 no 20 jl.taqwa vi', 'sma waskito', 'IPA', 'SAINTEK', 1, '081288349479', 'jyestaloka@gmail.com', 'it & uin', ''),
(502, '2018-02-16 05:46:03', '2018-02-16', 'suhaeni nurhayati', '394-05-17318', 0, 'tanggerang,21 april 2000', '2000-04-21', 'Jln.irh.h juanda gg.bhineka ciputat.', 'SMA Negeri 1 tangsel', 'IPS', 'SOSHUM', 2, '089613937237', 'suhaininurhayati21@gmail.com', 'akuntansi , uin', 'Lunas'),
(503, '2018-02-16 12:26:08', '2018-02-16', 'anindhita kusnadi', '', 0, 'tangerang', '2000-12-14', 'jalan cipunegara II gg hj mursan ', 'SMA Negeri 1 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '087785085833', 'anindhita.kusnadi14@yahoo.com', 'akuntansi ', ''),
(504, '2018-02-17 04:54:56', '2018-02-17', 'ERI FIKRI PRAYOGA', '', 0, 'TANGERANG', '2000-01-09', 'Jl Gg sadar 1 RT005/02 Perumahan D\'Queen B16 Kenanga Cipondoh', 'SMA MUHAMMADIYAH 1', 'IPA', 'SAINTEK', 1, '085806279490', 'fikrieri0901@gmail.com', 'Ekonomi & UNDIP', ''),
(505, '2018-02-17 05:32:31', '2018-02-17', 'Hanifa febiani', '395-05-17318', 0, 'Tangerang', '2000-02-29', 'JL. SMP mabad RT.05/05 kel.Cempaka putih kec.Ciputat timur', 'SMAN 4 KOTA TANGERANG SELATAN', 'IPS', 'SOSHUM', 2, '081808418238', 'Hanifa972015@gmail.com', 'Pendidikan guru IPS universitas Islam negeri Jakarta', 'Lunas'),
(506, '2018-02-17 08:08:33', '2018-02-17', 'Putri ayu falis', '396-05-17318', 0, 'Tangerang', '1999-11-29', 'Jl.masjid baiturrahim,gg.bambu Rt/02 Rw/03 No.4', 'Sman 4 tangsel', 'IPS', 'SOSHUM', 2, '081294116624', 'putriayufalis99@gmail.com', 'pendidikan agama islam/UIN', 'Lunas'),
(507, '2018-02-17 08:36:06', '2018-02-17', 'intan seruni', '', 0, 'jakarta', '2000-01-18', 'Jl amd bakti jaya pocis rt 02 rt 01 15315 kec setu kota tangerang selatan', 'smk riksa indrya', 'IPA', 'SAINTEK', 1, '089503261720', 'intanseruniseruni@yahoo.co.id', 'keperawatan ', ''),
(508, '2018-02-17 08:45:59', '2018-02-17', 'cut raudhatul zahbi', '159-02-17318', 0, 'jakarta', '2000-04-03', 'Jalan haji usman rt 02 rw 08 no.17 ciputat', 'sman 4 tangsel', 'IPA', 'SAINTEK', 1, '0859394755761', 'cutraudhaatulz@gmail.com', 'pendidikan biologi UIN jakarta', 'Lunas'),
(509, '2018-02-18 01:28:42', '2018-02-18', 'Alma Ariz Nur Jihan', '397-05-17318', 0, 'Sukabumi', '2018-01-02', 'Gg. Wahid Jl. Pajajaran No. 48 RT/RW 002/022 Pamulang Barat Tangerang Selatan', 'SMAN 6 Tangerang Selatan', 'IPA', 'SOSHUM', 2, '082299962879', 'almaarz19@gmail.com', 'FH', 'Lunas'),
(510, '2018-02-18 10:46:55', '2018-02-18', 'Alyfia muhashona', '398-05-17318', 0, 'Pati, 30 januari 2001', '2001-01-30', 'Komplek karang tengah permai blok tq no 3b', 'Man 10 jakarta', 'IPS', 'SOSHUM', 2, '08988642316', 'alyfiamuhassonah@gmail.com', 'Ekonomi islam undip', 'Lunas'),
(511, '2018-02-18 10:52:57', '2018-02-18', 'Faiz Ibnu Prasetyo', '', 0, 'Jakarta', '1999-08-29', 'Jln Inpres XI no 33c', 'MAN 10 JAKARTA', 'IPS', 'SOSHUM', 2, '087883883985', 'faizibnu29@gmail.com', 'Bendahara Pajak & Brawijaya', ''),
(512, '2018-02-18 22:47:41', '2018-02-19', 'Zulchoir Rasyid', '', 0, 'Jakarta', '1998-09-24', 'Jl. Kalibaru Timur 11 Cilincing Jak-Ut', 'SMANU MHT', 'IPA', 'SAINTEK', 1, '087887908121', 'mzulchoir@gmail.com', 'Teknik Kimia UI', ''),
(513, '2018-02-19 01:39:23', '2018-02-19', 'Vira Hidayanti', '', 0, 'Tangerang Selatan, 27 Desember 1', '1999-12-27', 'Jl. Talas 3 rt 002/02 no. 174 Gg.  Ketapang pd cabe ilir III', 'SMAN 8 TANGSEL', 'IPA', 'SAINTEK', 1, '085891891470', 'virahidayanti27@gmail.com', 'Kesehatan masyarakat (UIN) & Jurnalistik (UI) ', ''),
(514, '2018-02-19 01:42:42', '2018-02-19', 'Nurul azzahra', '', 0, 'Jakarta, 08 oktober 2000', '2000-10-08', 'Jl. Alamanda blok A4 no. 22 rt 001/07 pamulang timur,  pamulang. ', 'SMAN 8 TANGSEL', 'IPA', 'SAINTEK', 1, '0877782412525', 'nurulazz123@gmail.com', 'Kesehatan masyarakat (UI) ', ''),
(515, '2018-02-19 03:35:19', '2018-02-19', 'Aiyatun Ning Khoirul ana ', '', 0, 'Lamongan ', '2000-08-28', 'Jl. Jati jelupang rt04 rw 02 no. 24 kp. Jelupang ', 'Smk kesehatan letris indonesia ', 'Lainnya', 'SAINTEK', 1, '08961715561', 'aiyatunning@gmail.com', 'Ilmu keperawatan & UI', ''),
(516, '2018-02-19 12:46:21', '2018-02-19', 'Maria Valentina', '', 0, 'Tangerang', '2000-07-11', 'Jalan. Haji Toran RT 002 RW 001', 'SMK kesehatan Letris Indonesia ', 'IPA', 'SAINTEK', 1, '08559844135', 'mariamenari11@gmail.com', 'UNDIP', ''),
(517, '2018-02-19 12:51:50', '2018-02-19', 'Lilis Salsabila', '', 0, 'Jakarta', '1999-11-16', 'Jalan pulo melati 6 rt.03 rw.16 no.26 kebayoran lama, grogol utara, jakarta selatan', 'Ma al falah jakarta barat', 'IPS', 'SOSHUM', 2, '085692952898', 'lilissalsabilaa08@gmail.com', 'Pendidikan IPS UIN JAKARTA', ''),
(518, '2018-02-19 13:34:23', '2018-02-19', 'Indira Nurmalia', '136-02-17318', 1, 'Sukabumi', '2000-02-03', 'Kp. Rawa Lele, Rt 01/10, No. 36, Jombang, Ciputat, Tangsel', 'SMK Kesehatan Letris Indonesia', 'Lainnya', 'SAINTEK', 1, '089607708334', 'indira030200@gmail.com', 'UIN, Kesehatan Masyarakat', 'Lunas'),
(519, '2018-02-19 14:14:38', '2018-02-19', 'LARAS PUSPITA DEWI', '', 0, 'Jakarta', '2000-07-23', 'Jl. Kp. Berdikari RT 10/007 No. 3', 'SMK Farmasi Puskesad', 'IPA', 'SAINTEK', 1, '087880755909', 'laraspuspita4@gmail.com', 'Farmasi UIN Jakarta', ''),
(520, '2018-02-20 02:22:15', '2018-02-20', 'Giant Nanda Eka Putra', '', 0, 'Yogyakarta', '2000-10-14', 'Jalan Kramat Rt01/10', 'SMK YAPIA', 'IPA', 'SAINTEK', 1, '088212469027', 'nannandanan123@gmail.com', 'TI UI', ''),
(521, '2018-02-20 04:42:50', '2018-02-20', 'Pipit Tandyana Febriantika', '160-02-17318', 0, 'Bandung', '2000-02-27', 'Komplek Bumi Mentari Permai Blok H/2 Jl. Al-bana', 'SMAN 6 Kota Tangerang Selatan', 'IPA', 'SAINTEK', 1, '085819213225', 'pipit.tf@gmail.com', 'Teknologi Bioproses - Universitas Brawijaya', 'Lunas'),
(522, '2018-02-20 04:45:11', '2018-02-20', 'Diah Ayu N', '137-02-17318', 0, 'Sragen', '2000-06-26', 'Jl Selada ii no 99 rt 005/011 pondok cabe', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '085715941790', 'ayunurkhasanahh@gmail.com', 'FARMASI UNIVERSITAS SEBELAS MARET', 'Lunas'),
(523, '2018-02-20 04:45:11', '2018-02-20', 'Dwi Putri Ivane', '138-02-17318', 1, 'Jakarta', '2000-12-21', 'jl haji mida no 55 rt 003/02 kelurahan serua', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081280905168', 'dwiputrisinagaii@gmail.com', 'Teknik PWK UNIVERSITAS BRAWIJAYA', 'Lunas'),
(524, '2018-02-20 04:45:11', '2018-02-20', 'Gregorius Bima P H', '139-02-17318', 0, 'Jakarta ', '2001-03-20', 'Jln. Kenari 05 blok ae 1 no 12', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '0895397942818', 'gre.bimaputra@gmail.com', 'MATEMATIKA UNIVERSITAS INDONESIA', 'Lunas'),
(525, '2018-02-20 04:45:13', '2018-02-20', 'NADIA ANDHITA', '140-02-17318', 0, 'Jakarta', '2000-10-29', 'Pamulang', 'SMAN 6 tangsel', 'IPA', 'SAINTEK', 1, '085813436064', 'nad.dhitaa@gmail.com', 'Manajemen IPB', 'Lunas'),
(526, '2018-02-20 04:45:13', '2018-02-20', 'Ismiati adly', '141-02-17318', 0, 'Serang', '2000-05-21', 'Perum griya asri pamulang', 'Sman 6 tangerang selatan', 'IPA', 'SAINTEK', 1, '083894661602', 'adlyismiati@gmail.com', 'Agribisnis - uin', 'Lunas'),
(527, '2018-02-20 04:45:13', '2018-02-20', 'Rifa Nawra Arhamah', '142-02-17318', 0, 'Jakarta', '2000-05-15', 'Jalan haji salim, pondok petir bojongsari depok', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '089653006832', 'nawrarifa1505@gmail.com', 'Farmasi - UI', 'Lunas'),
(528, '2018-02-20 04:45:13', '2018-02-20', 'Sanita Chairunnisa', '143-02-17318', 1, 'Tangerang', '2000-01-21', 'Pondok benda indah, jl mangga 1 blok V 1 no. 5', 'SMAN 6 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '0895410543958', 'Sanitacrnns@gmail.com', 'Meteorologi Terapan - IPB', 'Lunas'),
(529, '2018-02-20 04:45:13', '2018-02-20', 'Jasmine Laily P', '144-02-17318', 1, 'Bandung', '2000-12-16', 'Gria jakarta jalan menteng raya blok b2/12', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '082178521008', 'jasminelly16@gmail.com', 'ARSITEKTUR INTERIOR UNIVERSITAS INDONESIA', 'Lunas'),
(530, '2018-02-20 04:45:13', '2018-02-20', 'Nurminda safa aufasani', '161-02-17318', 0, 'Jakarta', '2001-03-18', 'Kav. Sasmita jl semar 3 no.10', 'SMAN 6 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '085775232545', 'aufasanisafa@yahoo.com', 'BIOLOGI UNIVERSITAS INDONESIA', 'Lunas'),
(531, '2018-02-20 04:45:14', '2018-02-20', 'Salsabila Aulia Yahya', '145-02-17318', 0, 'Tangerang', '2000-09-12', 'Jl. Jawa 2 Blok O2 no.2', 'SMAN 6 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '089529999912', 'salsabilaauliay@gmail.com', 'Ilmu Gizi - IPB', 'Lunas'),
(532, '2018-02-20 04:45:16', '2018-02-20', 'Marisa Nurbaiti', '146-02-17318', 1, 'Jakarta', '2000-08-13', 'Jl. Ketapang 3 blok AF5/37-38, Reni Jaya', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '085773367057', 'marisanrbt@gmail.com', 'Statistika IPB', 'Lunas'),
(533, '2018-02-20 04:54:07', '2018-02-20', 'Cindy Manuela', '147-02-17318', 0, 'Tangerang', '2000-05-17', 'Jl. Bukit Permata VIII no. 2, Permata Pamulang', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '089678922533', 'CindyManuela45@gmail.com', 'Teknologi Pangan Universitas Brawijaya', 'Lunas'),
(534, '2018-02-20 06:49:30', '2018-02-20', 'ifka angelia', '', 0, 'tangerang', '2000-08-14', 'jalan komplek lemigas rt04/01 kecamatan pinang keluarahan pinang', 'sma budi mulia', 'IPS', 'SOSHUM', 2, '085811211184', 'ifkangelia@gmail.com', 'akutansi & UGM', ''),
(535, '2018-02-20 09:30:17', '2018-02-20', 'cahya saintika ilahi', '148-02-17318', 1, 'brebes', '2000-05-24', 'Jl oskar 3 bambu apus', 'sma 6 ts', 'IPA', 'SAINTEK', 1, '081520937715', 'cahyasaintika@gmail.com', 'Statistika IPB', 'Lunas'),
(536, '2018-02-20 10:29:59', '2018-02-20', 'Ashiva Mutiara Prisanti', '', 0, 'Jakarta', '2000-04-21', 'Jl.Arjuna 7 DF.04 No. 1, Villa Pamulang, Tangerang Selatan', 'SMAN 6 Tangerang S elatan', 'IPA', 'SAINTEK', 1, '081318285919', 'aasshhiivvaa@gmail.com', 'Teknik Arsitektur - Universitas Indonesia', ''),
(537, '2018-02-20 11:35:54', '2018-02-20', 'Salsadilla rizky tabuchi ', '149-02-17318', 0, 'Jakarta ', '2000-10-29', 'Jl. Candi goa gajah blok aj5 /no.6 villa pamulang', 'Sma negeri 6 tangsel ', 'IPA', 'SAINTEK', 1, '081294975542', 'rizky0tabuchi@gmail.com', 'Agribisnis (Untirta), metalurgi(Untirta), pendidikan biologi (unsil) ', 'Lunas'),
(538, '2018-02-21 02:25:01', '2018-02-21', 'julianti', '', 0, 'bogor', '0000-00-00', 'kp.nyangkokot rt 01/06', 'sman 1 citeureup', 'IPA', 'SAINTEK', 1, '0899037641', 'juliantidimitri@gmail.com', 'itb/teknik geofisika', ''),
(539, '2018-02-21 03:39:14', '2018-02-21', 'Arnita', '', 0, 'Tangerang ', '2000-09-12', 'Jl.H.Mean 09 RT 03/010 kec: karang tengah \r\nKel: karang timur kota Tangerang no 10', 'SMK farmasi Tangerang 1', 'Lainnya', 'SAINTEK', 1, '08990437022', 'Niethaaa12@gmail.com', 'Farmasi', ''),
(540, '2018-02-21 03:39:16', '2018-02-21', 'Ayu ariyani pratiwi', '', 0, 'Tangerang', '2000-11-25', 'Jl. Hj mansur gg h. Atim rt 02/05 kel.  Gondrong kec.  Cipondoh  kota tangerang no 48', 'Smk farmasi tangerang 1', 'Lainnya', 'SAINTEK', 1, '089680904509', 'ayuariyani20@gmail.com', 'Farmasi', '');
INSERT INTO `tryout_sbmptn_parsial` (`id`, `time`, `tgl_daftar`, `nama`, `no_peserta`, `kehadiran`, `tempat_lahir`, `tgl_lahir`, `alamat`, `sekolah`, `jurusan`, `pilihan`, `id_pilihan`, `no_hp`, `email`, `minat`, `pembayaran`) VALUES
(541, '2018-02-21 08:14:54', '2018-02-21', 'Ade fitria wulandari', '166-02-17318', 1, 'tangerang ', '2000-05-20', 'Jl.merpati raya rt 03/01 no.19 , sawah , ciputat tangerang selatan', 'SMK Kesehatan Letris Indonesia', 'Lainnya', 'SAINTEK', 1, '0895627414836', 'adefitria202@gmail.com', 'UIN, Keperawatan', 'Lunas'),
(542, '2018-02-21 08:25:06', '2018-02-21', 'Maylida izattul wardah', '', 0, 'Tangerang 21 agustus 2000', '2000-08-21', 'Jl hr rasuna said no 47 rt:01/01 kec pinang kota tangerang', 'Sman 9 tangerang', 'IPA', 'SAINTEK', 1, '087885230195 08', 'maylidaw@gmail.com', 'Kedokteran ugm UI UIN UB ', ''),
(543, '2018-02-21 14:51:39', '2018-02-21', 'Zaitun Nisa', '', 0, 'Tangerang, 15 Agustus 1999', '1999-08-15', 'Jl. Ciater rmc rt 10/03 kel. Ciater kec. Serpong kota tangerang selatan Banten 15317', 'SMK Negeri 1 Kota Tangerang Sela', 'Lainnya', 'SOSHUM', 2, '089660199904', 'zaitunnisa15@gmail.com', 'Manajemen UIN Jakarta', ''),
(544, '2018-02-22 00:47:00', '2018-02-22', 'Diva fauziah assidiq', '410-05-17318', 0, 'Tasikmalaya', '2000-08-26', 'Kp. Maruga, jl. Persatuan, rt003/008 kelurahan ciater,kecamatan serpong, kota tangerang selatan', 'MAN 19 JAKARTA', 'IPS', 'SOSHUM', 2, '081317904024', 'difafauziah57@gmail.com', 'Pendidikan bahasa arab, UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(545, '2018-02-22 03:19:33', '2018-02-22', 'Yulius Natalis Ega Pratama', '162-02-17318', 0, 'JAKARTA', '2000-08-15', 'Villa Pamulang Blok UC Nomor 1A\r\nJalan Ganesha 1\r\nPamulang - Tangerang Selatan', 'SMAN 6 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081381438481', 'darknegataros@gmail.com', 'Sistem Informasi & Universitas Brawijaya', 'Lunas'),
(546, '2018-02-22 07:14:35', '2018-02-22', 'Siraj Kamil', '150-02-17318', 0, 'pamulang', '2000-08-18', 'jl. haji saleh no 42, rt/rw 05/02 benda baru, pamulang', 'SMAN 6 TANGSEL', 'IPA', 'SAINTEK', 1, '089680126987', 'msirajkamil@gmail.com', 'FTI ITB', 'Lunas'),
(547, '2018-02-22 07:17:08', '2018-02-22', 'Zidane Maulana Shidiq', '151-02-17318', 1, 'Jakarta', '2000-05-05', 'Puri Pamulang, G5/16, Bambu Apus, Pamulang, Tangerang Selatan', 'SMAN 6 TANGSEL', 'IPA', 'SAINTEK', 1, '081286997350', 'zidanezorro66@gmail.com', 'Teknik Sipil UNS', 'Lunas'),
(548, '2018-02-22 07:49:50', '2018-02-22', 'M Riva Kanz Firdaus', '152-02-17318', 1, 'Tasikmalaya', '2000-03-01', 'Jl Amarta Raya \r\nVilla Pamulang', 'SMAN 6 TANGSEL', 'IPA', 'SAINTEK', 1, '081324221798', 'rivakanzf@gmail.com', 'Fasilkom UI', 'Lunas'),
(549, '2018-02-23 08:12:25', '2018-02-23', 'Cut raudhatul zahbi', '', 0, 'Jakarta', '2000-04-03', 'Jalan haji usman rt 02 rw 08 ciputat', 'Sman 4 Tangsel', 'IPA', 'SAINTEK', 1, '0895394755761', 'cutraudhaatul@gmail.com', 'Pendidikan biologi dan uin jakarta', ''),
(550, '2018-02-23 13:41:53', '2018-02-23', 'Teti Maharani', '', 0, 'Jakarta', '2000-01-15', 'Jl. Tanah Tinggi 1A rt.014 rw.01 no. 18 kec. Johar Baru  JAK-PUS', 'SMK Farmasi PUSKESAD', 'Lainnya', 'SAINTEK', 1, '087775664687', 'tetimaharani@gmail.com', 'Farmasi', ''),
(551, '2018-02-23 15:12:41', '2018-02-23', 'Nurul Latifah', '153-02-17318', 1, 'Magelang', '2000-06-26', 'Jalan Swadaya No. 36 RT 02/09 Pondok petir Bojongsari Depok', 'SMAN 6 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '083896527878', 'latifah0141@gmail.com', 'Fisika UIN', 'Lunas'),
(552, '2018-02-23 15:14:55', '2018-02-23', 'Zhafarina Fildzah', '399-05-17318', 0, 'Tangerang', '2001-02-25', 'Pondok Maharta Blok H1/14 Ciledug, Tangerang Selatan', 'MAN 10 JAKARTA', 'Agama', 'SOSHUM', 2, '082110168815', 'zhafarinafildzah@ymail.com', 'UNPAD, UIN JAKARTA -SASTRA ARAB', 'Lunas'),
(553, '2018-02-23 22:30:08', '2018-02-24', 'Suci Fadilah', '197-02-17318', 1, 'Purbalingga', '1999-12-25', 'Jln. Kapuk muara Rt 16/04', 'SMAN 111 JAKARTA', 'IPA', 'SAINTEK', 1, '083872098125', 'sucifadilah70@gmail.com', 'Pendidikan Biologi', 'Lunas'),
(554, '2018-02-24 00:12:02', '2018-02-24', 'Chandra maulana', '', 0, 'Purworejo 11 juli 2000', '2018-02-24', 'Perum puri bintaro hijau .pondok aren', 'SMAN 4 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '087780454361', 'Chandraishak@yahoo.co.id', 'Hukum Universita Diponogori', ''),
(555, '2018-02-24 08:14:42', '2018-02-24', 'Ajrina Salsabila ', '154-02-17318', 0, 'Tangerang ', '2000-08-06', 'Jln Maharta 8 blok b6 no17 Rt004 Rw010 Kel. Pondok Kacang timur Kec. Pondok Aren', 'SMA MUHAMMADIYAH 1TANGERANG', 'IPA', 'SAINTEK', 1, '085718309191', 'ajrina345@gmail.com', 'Matematika ', 'Lunas'),
(556, '2018-02-24 09:38:24', '2018-02-24', 'Inggrid Merryana Putri', '411-05-17318', 0, 'Tangerang', '2000-10-30', 'Jl.Gelora V no.125 Pd.Kacang Timur,Kec.Pd.Arrn,Tangerang Selatan', 'Sma Muhammadiyah 1 Tangerang', 'IPA', 'SOSHUM', 2, '081283366646', 'inggridmerryana@gmail.com', 'Pend.Bahasa Indonesia,PTN = UIN Jakarta', 'Lunas'),
(557, '2018-02-24 11:29:18', '2018-02-24', 'Mellynia Eka Pratiwy', '', 0, 'Jakarta, 15 Mei 2000', '2000-05-15', 'Asrama Polri Ciledug \r\nJl. Bhayangkara 9 Rt03 Rw02 No : 45', 'SMK Kesehatan Letris Indonesia', 'IPA', 'SAINTEK', 1, '089679614133', 'mellyniapratiwy196@gmail.com', 'Keperawatan - Universitas negeri solo', ''),
(558, '2018-02-24 13:00:48', '2018-02-24', 'Firda Rahmawati', '155-02-17318', 1, 'Tangerang ', '2000-08-08', 'Jl. Cimandiri Rt 04 Rw 05 No 73. Cipayung-Ciputat', 'Sma Negeri 8 Tangerang Selatan ', 'IPA', 'SAINTEK', 1, '085697687002', 'firdarhmwt9@gmail.com', 'Pendidikan Biologi& UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(560, '2018-02-24 13:20:18', '2018-02-24', 'Annida Elsy Rianda ', '400-05-17318', 0, 'Tangerang', '2000-05-15', 'Perumahan Taman Serua, Jl. Krisan, blok.i1-14', 'SMAN 8 Tangsel', 'IPC', 'SOSHUM', 2, '089603560210', 'cici1505@gmail.com', 'Kedokteran / Psikologi UIN ', 'Lunas'),
(561, '2018-02-24 14:45:28', '2018-02-24', 'Marthdilla Setyarana Prahmadisti', '', 0, 'Manado', '2000-03-29', 'Jl. Duren tiga selatan no. 3B rt.005 rw.002,kel. Duren tiga kec. Pancoran kodya jakarta selatan. (Perumahan 7 Residen)', 'SMA N 8 Tangerang Selatan', 'IPC', 'SOSHUM', 2, '081254745563', 'marthdillarana29@gmail.com', 'Psikologi, UIN', ''),
(562, '2018-02-25 02:40:49', '2018-02-25', 'Muhammad Raihan', '156-02-17318', 0, 'Tangerang ', '2000-06-12', 'Taman Chrysant 2 N7/3 BSD. CIATER- SERPONG.TANGSEL', 'SMA GLOBAL.ISLAMIC SCHOOL 2 SERP', 'IPA', 'SAINTEK', 1, '081286762518', 'kusnadidrs1015@gmail.com', 'Teknik Informatika UNSOED', 'Lunas'),
(563, '2018-02-25 07:06:47', '2018-02-25', 'Amaliatun Hasanah', '', 0, 'Jakarta', '2000-07-03', 'Jl. Bentengan II rt. 010 rw. 05 No. 19', 'SMA WIJAYA', 'IPS', 'SOSHUM', 2, '083131720340', 'amaliatunhasanah94@gmail.com', 'Ekonomi dan Bisnis', ''),
(564, '2018-02-25 12:21:28', '2018-02-25', 'Lulu Nailul Huda', '412-05-17318', 0, 'Tangerang', '1999-10-09', 'Jln. Pd. Serut. No.15 RT/RW 003/003 Kec. PD. Kacang Timur, Kel. Pd. Aren, Tangsel', 'MAN 10 Jakarta', 'IPS', 'SOSHUM', 2, '08186076329', 'luluhuda52@gmail.com', 'Pend. Geografi - Univ. Pendidikan Indonesia', 'Lunas'),
(565, '2018-02-25 12:48:15', '2018-02-25', 'Alyssa nur rahma ', '401-05-17318', 0, 'Tangerang', '2000-03-11', 'Jl.tarumanegara no.19 rt 01/rw 10', 'SMAN 8 Tangsel', 'IPS', 'SOSHUM', 2, '0895377371010', 'alyssanurrahma@gmail.com', 'Akutansi & uin jakarta', 'Lunas'),
(566, '2018-02-27 05:56:24', '2018-02-27', 'Meliyyana Safitri', '402-05-17318', 0, 'Bekasi', '2000-05-18', 'Jalan. H. Pelor rt. 06 rw. 04 Rawalumbu, kota Bekasi ', 'MAN 2 Bekasi', 'IPC', 'SOSHUM', 2, '089693083099', 'meliyyanasafitri18@gmail.com', 'komunikasi dab penyiaran islam', 'Lunas'),
(567, '2018-02-27 06:03:02', '2018-02-27', 'Elsha Fitria', '157-02-17318', 0, 'Jakarta ', '2001-01-17', 'mutiara Gadig Timur Jalan Bangka 01 no 36 rt 07 rw 31 Bekasi timur', 'Man 2 Bekasi', 'IPA', 'SAINTEK', 1, '085811172586', 'elshafitria20@gmail.com', 'kimia dan UIN Syarif Hidayatullah', 'Lunas'),
(568, '2018-02-27 07:28:43', '2018-02-27', 'Fadhila Anisa', '403-05-17318', 0, 'Bekasi', '2000-12-06', 'Jl. Idola raya kp.rawa sapi no rumah 63 Gg.plengken blok A no. 84 rt03/rw10', 'MAN 2 KOTA BEKASI', 'IPC', 'SOSHUM', 2, '089602595083', 'fadhilaaniisaa@gmail.com', 'Pendidikan seni tari & UPI Bandung', 'Lunas'),
(569, '2018-02-27 09:00:35', '2018-02-27', 'Rahmawati', '186-02-17318', 1, 'Blora', '2000-02-24', 'Jl. Tanjung Wangi no.151 Rt. 0012/Rw. 0012 Kel. Penjaringan Kec. Penjaringan Jakarta Utara Kodepos : 14440', 'SMAN 111 JAKARTA', 'IPA', 'SAINTEK', 1, '087784095154', 'leearin24@gmail.com', 'keperawatan - UIN syarief hidatullah ', 'Lunas'),
(570, '2018-02-27 15:02:26', '2018-02-27', 'Rizki aulia putri', '428-05-17318', 0, 'Jakarta', '1999-11-06', 'Jln almubarok 2 rt003/02 no:79', 'Man 10 jakarta', 'IPS', 'SOSHUM', 2, '089505088528', 'aulia061199@gmail.com', 'PGMI uin jakarta', 'Lunas'),
(571, '2018-02-28 04:42:01', '2018-02-28', 'Moch. Zida fabial yustisianif', '406-05-17318', 0, 'Pati', '2000-02-02', 'Jl. Jurang mangu barat rt 01/02 pondok aren tangerang selatan', 'Sma muhammadiyah 1 tangerang', 'IPA', 'SOSHUM', 2, '089618450478', 'zidafabialyustisianif@gmail.com', 'Hukum', 'Lunas'),
(572, '2018-02-28 06:59:05', '2018-02-28', 'Niken kurniawati', '407-05-17318', 0, 'Tangerang', '2000-03-04', 'Pondok maharta blok c28 no 7 rt 09 Rw 11 kelurahan: pondok kacang timur. kecamatan: pondok aren', 'Sma Muhammadiyah 1 tangerang', 'IPA', 'SOSHUM', 2, '089627558388', 'kurniawatiniken1@gmail.com', 'Pendidikan bahasa Inggris uin', 'Lunas'),
(573, '2018-02-28 08:23:48', '2018-02-28', 'Putri Farras Syahti Jabir Abdillah', '404-05-17318', 0, 'Jakarta', '1999-01-26', 'Vila Dago Alam Asri 2 Blok I6 No. 9', 'SMAN 6 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '085718092083', 'farrasparkyu@gmail.com', 'Desain interior ITB', 'Lunas'),
(574, '2018-02-28 08:27:54', '2018-02-28', 'Nurul ainatun nisa', '413-05-17318', 0, 'Tangerang, 10 November 1999', '1999-11-10', 'Jl. Lembang 2 lama no.44 GG h.maih', 'SMA Muhammadiyah 1 Tangerang', 'IPA', 'SOSHUM', 2, '085692194029', 'nishanurul9@gmail.com', 'Akutansi', 'Lunas'),
(575, '2018-02-28 10:11:46', '2018-02-28', 'Nazlila Maysifa', '405-05-17318', 0, 'Jakarta, 19 mei 2000', '2018-02-28', 'Pondok maharta blok D4 no 24 rw011 rt011', 'Sma muhammadiyah 1 ciledug', 'IPA', 'SAINTEK', 1, '081212887400', 'nazlilamaysifa25@gmail.com', 'PGSD UIN', 'Lunas'),
(577, '2018-02-28 12:39:16', '2018-02-28', 'vidtiya eka putri', '170-02-17318', 1, 'jakarta', '2000-12-12', 'jalan pondok kacang timur rt 003 rw 003 no 112 15225', 'sman 7 tangerang selatan', 'IPA', 'SAINTEK', 1, '0895611537204', 'vidtiyaekaputri1@gmail.com', 'keperawatan UIN Jakarta', 'Lunas'),
(578, '2018-03-02 01:01:59', '2018-03-02', 'RAFIDA AISYAH FITRI', '158-02-17318', 1, 'Tangerang', '2000-05-21', 'Kp. Paninggilan No. 16 Rt/Rw 02/08, Paninggilan, Ciledug, Tangerang', 'SMAN 12 TANGERANG', 'IPA', 'SAINTEK', 1, '081285389883', 'rafidasyah22@gmail.com', 'Kimia - UIN Jakarta', 'Lunas'),
(579, '2018-03-02 01:12:14', '2018-03-02', 'Nadira Ruby Irianto', '168-02-17318', 0, 'Ankara, Turki', '1999-07-27', 'Jalan Eretan 1 no. 75 RT06/RW01 Condet, Jakarta Timhr', 'SMA PB Soedirman', 'IPA', 'SAINTEK', 1, '081808045415', 'nadiraruby@gmail.com', 'Fakultas Kedokteran, Universitas Indonesia', 'Lunas'),
(580, '2018-03-02 01:44:47', '2018-03-02', 'Hania Ariane', '', 0, 'Jakarta', '1999-08-27', 'Jalan Barito Raya no.178 Depok Timur rt 4 rw 15 kecamatan sukmajaya (depan smp negeri 3 depok) ', 'SMAN 7 DEPOK', 'IPA', 'SAINTEK', 1, '08119992799', 'arianehania27@yahoo.co.id', 'Sekolah Farmasi - Institut Teknologi Bandung', ''),
(581, '2018-03-03 23:50:16', '2018-03-04', 'Wina putri syabrina', '167-02-17318', 0, 'Jakarta ', '2000-10-10', 'Jalan talas 1 rt 01 rw 10 pondok cabe ilir', 'Sman 8 tangerang selatan', 'IPA', 'SAINTEK', 1, '089679247662', 'winasybr@gmail.com', 'Kesmas Uin', 'Lunas'),
(582, '2018-03-04 03:19:35', '2018-03-04', 'Mega Dwi Bernadeta', '414-05-17318', 0, 'Jakarta', '2000-01-27', 'Jl. Pondok Cabe Raya gg kelor 1 rt/rw 003/03 kel pondok cabe ilir kec pamulang tangerang selatan', 'SMAN 8 TANGSEL', 'IPS', 'SOSHUM', 2, '087889856634', 'megadwi.bernadeta@gmail.com', 'Psikologi dan Manajemen & UIN ', 'Lunas'),
(583, '2018-03-04 03:29:20', '2018-03-04', 'Hasna Adiba Rambe', '171-02-17318', 0, 'Jakarta', '1999-02-08', 'Jl gunung indah II Rt003/011 ', 'SMAN 8 TANGSEL', 'IPA', 'SAINTEK', 1, '085776579469', 'Hasnaadiba98@gmail.com', 'Kesehatan Masyarakat & UIN ', 'Lunas'),
(584, '2018-03-04 04:07:26', '2018-03-04', 'Farhan ardiansyah', '442-05-17318', 0, 'Jakarta', '2000-05-12', 'Jl. Gang betet dalam no 28 rt 01/07', 'Smk bina karya', 'Lainnya', 'SOSHUM', 2, '085693934013', 'farhanwalker106@gmail.com', 'Ilmu komputer ', 'Lunas'),
(585, '2018-03-04 04:37:07', '2018-03-04', 'Vida Yuninda', '172-02-17318', 1, 'Jakarta', '2000-06-14', 'Jalan kubis 3 No.65 A Rt 002/05 Pondok Cabe Ilir Pamulang', 'Sman 8 Tangsel', 'IPA', 'SAINTEK', 1, '0895361853902', 'vidaayuninda@gmail.com', 'Kedokteran', 'Lunas'),
(586, '2018-03-04 06:52:26', '2018-03-04', 'SARASWATY', '', 0, 'TANGERANG', '2000-08-08', 'Komp. Pinang griya ciledug', 'SMAN 12 TANGERANG', 'IPA', 'SAINTEK', 1, '0895322404843', 'sarasshadley@gmail.com', 'PSIKOLOGI & UGM', ''),
(587, '2018-03-04 09:50:33', '2018-03-04', 'Fani amany', '432-05-17318', 0, 'Tangerang', '2000-08-18', 'Komplek puri husada agung blokD10 no5 rt02/10', 'Sman 1 gunungsindur', 'IPS', 'SOSHUM', 2, '089683232829', 'fanyamany@gmail.com', 'Psikologi', 'Lunas'),
(588, '2018-03-04 09:50:35', '2018-03-04', 'Ismi Meilaniasari', '', 0, 'Bogor', '2000-02-23', 'Jl.Pahlawan Desa Cibinong No.46 Rt.04 Rw.01 Kecamatan Gunung Sindur Kab.Bogor', 'SMA NEGERI 1 PARUNG', 'IPS', 'SOSHUM', 2, '089654228537', 'ismimeilania@gmail.com', 'Pendidikan bahasa dan sastra indonesia UIN Jakarta', ''),
(589, '2018-03-04 09:53:42', '2018-03-04', 'Argithania Mhelasti Fitrah', '415-05-17318', 0, 'Bogor', '2000-12-23', 'Jl.Pendidikan No.16 RT 01/01 Ds.Cibadung Kec. Gunungsindur Kab.Bogor kode pos 16340', 'SMAN 1 Gunungsindur', 'IPS', 'SOSHUM', 2, '089637164593', '99argithaniamf@gmail.com', 'Psikologi', 'Lunas'),
(590, '2018-03-04 14:26:38', '2018-03-04', 'Ari Haryadi', '419-05-17318', 0, 'Bogor, 23 Januari 2000', '2018-03-04', 'Bulaksaga rt03/06, Cibadung, Gunungsindur, Bogor', 'SMAN 1 Gunung Sindur', 'IPS', 'SOSHUM', 2, '0895800269552', 'akbarpiss83@gmail.com', 'Akuntansi & UIN Jakarta', 'Lunas'),
(591, '2018-03-04 22:45:03', '2018-03-05', 'Febby Diah Syahputri', '180-02-17318', 1, 'Samarinda', '2000-06-04', 'L\'Avenue Apartment N2I, Jalan Raya Pasar Minggu Kav.16, Pancoran, Jakarta Selatan', 'SMAS Sampoerna', 'IPA', 'SAINTEK', 1, '081299267823', 'fbbydh124@gmail.com', 'FK UGM', 'Lunas'),
(592, '2018-03-05 00:10:30', '2018-03-05', 'nisfi fadilah', '', 0, 'Bogor', '2000-11-07', 'Jln raya parung bogor Lebak wangi Gg H Minggoe rt 02/02 no 47 desa pamagarsari kec.parung kab.bogor 16330', 'SMA NEGERI 1 PARUNG', 'IPS', 'SOSHUM', 2, '089638943426', 'nisfifadilah@gmail.com', 'manajemen universitas uin syarif hidayatullah jakarta', ''),
(593, '2018-03-05 00:13:02', '2018-03-05', 'vyra nur maulidia', '', 0, 'Bogor', '2000-06-12', 'desa waru jaya rt 06/05 jln demang arya parung bogor 16330', 'SMA NEGERI 1 PARUNG', 'IPS', 'SOSHUM', 2, '083112455109', 'vyranurmaulidya@gmail.com', 'psikologi di universitas uin syarif hidayatullah jakarta', ''),
(594, '2018-03-05 01:05:03', '2018-03-05', 'SALMA SALSABILA', '416-05-17318', 0, 'Bogor', '2000-08-27', 'Kp.cibinong rt04/01 no.31', 'SMAN 1 GUNUNG SINDUR', 'IPS', 'SOSHUM', 2, '085880018152', 'salmasalsabila827@gmail.com', 'Manajemen UIN Jakarta', 'Lunas'),
(595, '2018-03-05 01:51:10', '2018-03-05', 'Gusti maya pangesti', '424-05-17318', 0, 'Kulonprogo', '2000-09-03', 'Kp.cibarengkok rt03/03 pengasinan gunungsindur bogor', 'Sma 1 gumungsindur', 'IPS', 'SOSHUM', 2, '089672847416', 'gustimayapangesti03@gmail.com', 'Akutansi', 'Lunas'),
(596, '2018-03-05 09:58:53', '2018-03-05', 'Putri Mahirah Afladhanti', '175-02-17318', 0, 'Jakarta', '2018-01-01', 'Jl. Wuluh 1/37 Jakarta Barat', 'SMAN 78 Jakarta', 'IPA', 'SAINTEK', 1, '081319467543', 'mahirah.afladhanti@gmail.com', 'Fakultas kedokteran Unsoed', 'Lunas'),
(597, '2018-03-05 13:43:55', '2018-03-05', 'Bagus Farhansyah', '418-05-17318', 0, 'Jakarta', '2000-06-27', 'Jl. Beringin 1RT04/07 no 20a kelurahan pamulang barat kecamatan pamulang kota tangerang selatan', 'sman 6 kota tangerang selatan', 'IPS', 'SOSHUM', 2, '081383813089', 'Bagusfarhansyah8@gmail.com', 'hubungan Internasional UIN Jakarta', 'Lunas'),
(598, '2018-03-06 00:06:49', '2018-03-06', 'lala', '', 0, 'we,fe', '0000-00-00', 'e,rv e.v', 'ev e;/v', 'IPA', 'SAINTEK', 1, '098e293e23y7', 'lalala@gmail.com', 'fk', ''),
(599, '2018-03-06 03:57:42', '2018-03-06', 'Roro jihan hanifah apriliani sari', '435-05-17318', 0, 'Tangerang', '2000-04-30', 'Griya indah serpong blokI7 no10', 'Sman 1 gunungsindur', 'IPS', 'SOSHUM', 2, '085213348561', 'rorojihan038@gmail.com', 'Sosiologi', 'Lunas'),
(600, '2018-03-06 05:46:04', '2018-03-06', 'Putri Oktavianty', '', 0, 'Tangerang ', '1999-10-28', 'Puri serpong 1 blok E1 no 17 kec.Setu kota Tangerang Selatan provinsi Banten', 'SMAN 11 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081286077855', 'putri.oktavianty28@gmail.com', 'Ilmu gizi (IPB) ', ''),
(601, '2018-03-06 09:47:06', '2018-03-06', 'Maylisa Natalia Corry', '', 0, 'Samarinda, 23 Mei 2000', '2000-05-23', 'L’Avenue Apartment, North Tower Unit 18i (Sampoerna)\r\nJln. Raya Pasar Minggu Kav.16 RT.7/RW.9, Pancoran\r\nJakarta Selatan 12780', 'SMA Sampoerna', 'IPA', 'SAINTEK', 1, '082154174991', 'maylisacorry35@gmail.com', 'Psikologi UGM', 'Lunas'),
(602, '2018-03-06 09:52:20', '2018-03-06', 'Alifia Nur Aisyah', '427-05-17318', 0, 'Purbalingga', '2000-02-08', 'Jl. Raya pasar minggu kav 16 RT.7/RW.9 Pancoran, Jakarta Selatan', 'SMA Sampoerna', 'IPS', 'SOSHUM', 2, '089654190251', 'alifianna28@gmail.com', 'Ilmu Komunikasi UNPAD', 'Lunas'),
(603, '2018-03-06 11:15:10', '2018-03-06', 'Dwi Kurnia Haryanto Utomo', '417-05-17318', 0, 'Jakarta', '2000-02-08', 'JL.Wahid Hasyim Cipadu Rt 01/07 No.4 Kelurahan Cipadu,Kecamatan Larangan,Kota Tangerang Banten,Kode pos:15156', 'MA ANNAJAH', 'IPS', 'SOSHUM', 2, '081212874849', 'uchiha.nino80@gmail.com', 'Manajemen', 'Lunas'),
(604, '2018-03-06 13:34:39', '2018-03-06', 'Satrio Agung Subekti', '', 0, 'Tanggerang Selatan', '1998-06-23', 'jl wadassari 3 rt 011/002 no: 1 pondok betung, pondok aren tanggerang selatan, banten', 'Pondok Modern Darussalam Gontor', 'IPS', 'SOSHUM', 2, '081330300123', 'satrioagungsubekti@gmail.com', 'Akutansi ( UIN Syarif Hidayatullah Jakarta)', ''),
(605, '2018-03-06 17:03:57', '2018-03-07', 'Wuslatun Ni\'mah', '174-02-17318', 1, 'Rembang', '1999-10-28', 'Jalan Kepa Timur Raya RT004/08 no. 178', 'SMAN 65 Jakarta', 'IPA', 'SAINTEK', 1, '081222825876', 'wuslatunnimah28@gmail.com', 'oceanografi undip', 'Lunas'),
(606, '2018-03-07 09:21:52', '2018-03-07', 'daffa mahadika syaifullah', '', 0, 'tangerang selatna', '2000-05-21', 'jl h gadung 6 no 83 rt 005 rw 003 pondok ranji ciputat timur tangerang selatan banten 15412', 'sman 4 tangerang selatan', 'IPA', 'SAINTEK', 1, '08111862105', 'daffa0521@gmail.com', 'teknik sipil UB', ''),
(607, '2018-03-07 12:28:07', '2018-03-07', 'RAYHAN RAZIF TAUFIQ ', '173-02-17318', 0, 'Tangerang ', '2000-03-18', 'Perum. Taman Akasia blok C3 desa waru kec parung kab Bogor Prov jabar 16330', 'SMK TARUNA TERPADU 1 BOGOR ', 'Lainnya', 'SAINTEK', 1, '087886282801', '95rayhan.razif.t@gmail.com', 'Farmasi & Universitas Islam Negeri Jakarta ', 'Lunas'),
(608, '2018-03-08 12:58:10', '2018-03-08', 'Shalsa Billa', '', 0, 'Bogor, 16 Agustus 2000', '2000-08-16', 'Jl. Pendongkelan Rt10/16 No. 126\r\nKapuk, Cengkareng, DKI Jakarta', 'SMAN 33 Jakarta', 'IPS', 'SOSHUM', 2, '082210145855', 'shalsabilla0016@gmail.com', 'UNJ - Pendidikan Bahasa Arab', ''),
(609, '2018-03-08 13:26:55', '2018-03-08', 'Eki Chandra ', '', 0, 'Cupak', '1999-11-26', 'Jl.Griya Asri BLOK B11 No.10, Kelurahan Jelupang, Bumi Serpong Damai', 'SMAN 1 SUNGAI PENUH', 'IPA', 'SAINTEK', 1, '089662980953', 'ekichandra99@gmail.com', 'Pendidikan Dokter & Universitas Sriwijaya', ''),
(610, '2018-03-08 15:44:05', '2018-03-08', 'Salsabila Nur Syifa', '430-05-17318', 0, 'Jakarta', '1999-12-19', 'Jl. Arimbi 1 Pd. Benda Pamulang Blok B1 No. 94', 'SMAN 1 TANGSEL', 'IPS', 'SOSHUM', 2, '085782618233', 'salsabila.nursyifa@yahoo.com', 'Kesejahteraan sosial dan antropologi / UI', 'Lunas'),
(611, '2018-03-09 00:11:59', '2018-03-09', 'Sherina Helmyza ', '', 0, 'Jakarta', '1999-08-09', 'Jl.Kavling DKI 1, Cipayung, Jakarta Timur ', 'SMAN 64 JKT', 'IPS', 'SOSHUM', 2, '089693844914', 'sherinahelmyza@gmail.com', 'Kriminologi- UI,  Pendidikan Bahasa Jepang - UNJ', ''),
(612, '2018-03-09 00:13:30', '2018-03-09', 'AJENG PUTRIAFNI S', '423-05-17318', 0, 'Jakarta', '2000-04-21', 'Jalan Beringin Raya No. 25 RT/RW. 015/02 Cengkareng, Jakarta Barat 11730', 'SMA NEGERI 84 JAKARTA', 'Bahasa', 'SOSHUM', 2, '087780997779', 'ps_ajeng@yahoo.com', 'S1 Psikologi', 'Lunas'),
(613, '2018-03-09 00:18:05', '2018-03-09', 'Siti Aisah', '', 0, 'Kuningan', '2000-01-24', 'Jl. Gg. H. Musanif no.1A rt 08/008 Taman Kota, Kedaung Kali Angke, Jakarta Barat', 'SMAN 84 Jakarta', 'IPA', 'SAINTEK', 1, '089531360447', 'sitiaissah240100@gmail.com', 'UIN Syarif Hidayatullah Jakarta', ''),
(614, '2018-03-09 02:49:41', '2018-03-09', 'Alya Shabrina Zata Amani', '438-05-17318', 0, 'Jakarta', '2018-03-16', 'Jl. Raya Pasar Minggu Kav. 16, RT.7/RW.9, Pancoran, Gatot Subroto, RT.7/RW.9, Pancoran, RT.7/RW.9, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780', 'Sampoerna Academy', 'IPS', 'SOSHUM', 2, '087785152033', 'alyashabr@gmail.com', 'Bisnis Islam, UI', 'Lunas'),
(615, '2018-03-09 06:05:05', '2018-03-09', 'Aditya Hermawan', '', 0, 'Jakarta', '1998-09-24', 'Jl. Ptb angke Pesing no 20 RT/RW : 02/08 Jakarta Barat', 'Sman 19 Jakarta', 'IPS', 'SOSHUM', 2, '085921300682', 'hermawanadityaap99@gmail.com', 'ILMU EKONOMI UI', ''),
(616, '2018-03-09 06:17:01', '2018-03-09', 'Maulana rafli al fadzry', '', 0, 'Jakarta', '2000-05-17', 'Jl. Melina 1 no.11 4/8 komplek pertamina kelurahan pondok ranji kecamatan ciputat timur', 'MA aliyah pembangunan ', 'IPS', 'SOSHUM', 2, '081286071336', 'maulanarafli388@gmail.com', 'Ilkom', ''),
(617, '2018-03-09 13:15:53', '2018-03-09', 'Ivoryta arinda', '182-02-17318', 1, 'Samarinda', '2000-06-17', 'La\'venue Apartmen, Jalan Raya Pasar Minggu Kav.16 RT 07 RW 09', 'SMA Sampoerna Academy', 'IPA', 'SAINTEK', 1, '082154243351', 'rinda.10vo@gmail.com', 'MIPA & Universitas Mulawarman', 'Lunas'),
(618, '2018-03-10 05:49:51', '2018-03-10', 'Muthia Melati Putri', '', 0, 'Tangerang', '2000-08-19', 'Kampung sawah lama ciputat, jalan jalak 2 no 24c', 'SMAN 11 TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '089659722796', 'muthiamelati5@gmail.com', 'Teknologi pangan Universitas sebelas maret', ''),
(619, '2018-03-10 05:49:52', '2018-03-10', 'nurul huda', '', 0, 'tangerang ', '2000-04-03', 'Jl. Jombang raya kp rawa barat', 'sman 11 tangsel', 'IPA', 'SAINTEK', 1, '085817983700', 'hudan1910@gmail.com', 'arsitektur lansekap ipb', ''),
(620, '2018-03-10 09:09:06', '2018-03-10', 'Sajid Rafif Millenio', '', 0, 'Tangerang', '2000-01-03', 'Villa Mutiara jln. Intan 2 blok EE no.5 sawah baru,  Jombang - ciputat', 'SMAN 4 Tangerang Selatan', 'IPA', 'SAINTEK', 1, '087889925280', 'afifagif@gmail.com', 'Sistem Informasi & UPN VETERAN JAKARTA', ''),
(621, '2018-03-11 00:09:49', '2018-03-11', 'Nadhea Meivelia ', '', 0, 'Depok', '2001-05-12', 'Jalan masjid al barokah rt01/015 srengseng sawah jagakars jakarta selatan', 'MAN 7 Jakarta', 'IPA', 'SAINTEK', 1, '089632042554', 'nadheameivelia@gmail.com', 'Fakultas teknik pertambangan dan perminyakan Institut Teknologi Bandung', ''),
(623, '2018-03-11 13:41:01', '2018-03-11', 'Siti Nurjanah Firmansyah', '181-02-17318', 1, 'BATAM', '1999-03-27', 'Lavenue apartment pancoran', 'Sampoerna Academy', 'IPA', 'SAINTEK', 1, '081378194947', 'Snurjanahfirmansyah@gmail.com', 'Kimia FMIPA - UI', 'Lunas'),
(624, '2018-03-11 21:27:49', '2018-03-12', 'Ega Oktavia', '', 0, 'Pekalongan', '1999-10-20', 'Jl.Panda Raya RT02/RW06 Pondok Ranji', 'SMAN 4 KOTA TANGERANG SELATAN', 'IPA', 'SAINTEK', 1, '081514265220', 'viaoktaega2@gmail.com', 'Statistika IPB', ''),
(625, '2018-03-12 08:46:15', '2018-03-12', 'Masadjie Estuning Prasetyo', '429-05-17318', 0, 'Jakarta', '2000-07-30', 'Jl. Anggrek VII No.224 Wadassari 4 Rt 5 Rw 2 Pondok Betung, Pondok Aren', 'SMA Negeri 8 Tangerang Selatan', 'IPS', 'SOSHUM', 2, '085945033833', 'prasetyoaji108@gmail.com', 'Ilmu Hukum & UIN', 'Lunas'),
(626, '2018-03-12 11:08:52', '2018-03-12', 'Khansa Muthiah', '196-02-17318', 1, 'JAKARTA', '2000-11-15', 'Jln tpu parakan rt 03/08, pondok benda, pamulang, tangerang selatan', 'SMK kesehatan Letris Indonesia 2', 'Lainnya', 'SAINTEK', 1, '081219039072', 'khansamuthiah23@gmail.com', 'Kesehatan Masyarakat', 'Lunas'),
(627, '2018-03-12 11:14:02', '2018-03-12', 'Akmal Ramadhan', '177-02-17318', 1, 'Tangerang', '1998-12-04', 'Komplek Puspiptek Blok VB No. 8, Setu, Tangerang Selatan', 'SMAN 12 Kota Tangerang Selatan', 'IPA', 'SAINTEK', 1, '085695191983', 'ramadak18@gmail.com', 'Kimia Murni - UIN Syarif Hidayatullah Jakarta', 'Lunas'),
(628, '2018-03-12 13:41:58', '2018-03-12', 'Bravo Lazarissi Christofer Kaban', '', 0, 'Medan 11 Juni 2000', '2000-06-11', 'Jl Mahoni Raya no 24 Jakarta Timur', 'Sampoerna academy', 'IPS', 'SOSHUM', 2, '087875608339', 'lazarissikaban@gmail.com', 'Feb UI ', ''),
(629, '2018-03-13 09:26:13', '2018-03-13', 'Yenni thasha', '190-02-17318', 1, 'Brebes', '2000-10-09', 'Jalan sawah lio gang 9 rt 003 rw 006 no 12A Jembatan Lima Tambora Jakarta Barat', 'Sman 111 jakarta', 'IPA', 'SAINTEK', 1, '089638001373', 'yennithashya66792@gmail.com', 'Kimia UIN', 'Lunas'),
(630, '2018-03-13 09:46:50', '2018-03-13', 'Renisah Nur', '179-02-17318', 1, 'Balikpapan', '2001-02-09', 'L’Avenue Building,, North Tower Jalan Raya Pasar Minggu Kav. 16, Pancoran, RT.7/RW.9, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780', 'Sampoerna Academy', 'IPA', 'SAINTEK', 1, '085347319735', 'renisahnuricha@gmail.com', 'FK UGM', 'Lunas'),
(631, '2018-03-13 10:56:12', '2018-03-13', 'Muhammad Algiffary firmansyah', '', 0, 'Tangerang', '2000-11-03', 'Perumahan citra prima serpong blok G4 no 12', 'MAN 1 TANGSEL', 'IPS', 'SOSHUM', 2, '0895352993736', 'muhammadalgi47@gmail.com', 'Komunikasi dan penyiaran islam & UIN', ''),
(632, '2018-03-13 12:57:20', '2018-03-13', 'Reihan Nazila', '433-05-17318', 0, 'jakarta', '2001-01-12', 'jalan kavling kesehatan II perumahan azalea no 7 rt 02/09 cipayung ciputat', 'SMAN 8 TANGSEL', 'IPA', 'SOSHUM', 2, '081314170152', 'reihannazilla1@gmail.com', 'perbankan, UIN syarif hidayatullah', 'Lunas'),
(633, '2018-03-13 13:39:21', '2018-03-13', 'Vicky Alkahfi', '195-02-17318', 0, 'Jakarta', '1999-11-02', 'Jl. Kavling rt.0006/001 kecamatan cipayung , Jakarta Timur', 'SMK Analisis Kimia TH', 'IPA', 'SAINTEK', 1, '081317797487', 'Vckalkahfi@gmail.com', 'Kimia-UIN Kimia-UNP Biologo-UNP', 'Lunas'),
(634, '2018-03-13 13:45:20', '2018-03-13', 'Gilang Ramadhan', '439-05-17318', 0, 'Jakarta', '1999-01-07', 'Jl. Pule 1 rt06/10 no.22  kelurahan cijantung, kecamata pasar rebo Jakarta timur', 'SMAN 88 Jakarta', 'IPS', 'SOSHUM', 2, '089517158336', 'gilangkuy070199@gmail.com', '1.pendidikan kesejahteraan keluarga -UNJ 2.sosiologi -UNJ 3.arkeologi -UI', 'Lunas'),
(635, '2018-03-14 05:41:04', '2018-03-14', 'karenina ibrahim', '', 0, 'Depok', '2000-07-18', 'jl kemiri viii rt 02 rw 04 pd cabe udik', 'SMAN 8 TANGSEL', 'IPA', 'SAINTEK', 1, '08981372908', 'kareninaibrahim1807@gmail.com', 'Agribisnis, UIN syarif hidayatullah', ''),
(636, '2018-03-14 05:44:24', '2018-03-14', 'Hanida Andhia Hafifah', '184-02-17318', 1, 'Garut', '1999-11-10', 'jalan poncol indah 3 no.29 rt05 rw02 cirendeu ciputat', 'SMAN 8 TANGSEL', 'IPA', 'SAINTEK', 1, '089525950248', 'hanidahafifah@gmail.com', 'akuntansi, UIN syarif hidatullah', 'Lunas'),
(637, '2018-03-15 00:19:38', '2018-03-15', 'Clareesa nanindita', '', 0, 'Bogor', '2000-11-09', 'Kp.kebon kopi rt03/07', 'Sman 1 gunungsindur', 'IPS', 'SOSHUM', 2, '089601103430', 'icaimam12@gmail.com', 'Pendidikan sosiologi', ''),
(638, '2018-03-15 01:35:44', '2018-03-15', 'Putri nur alia', '189-02-17318', 0, 'Jakarta', '1999-04-02', 'Jl Kemanggisan Ilir XI', 'Ma Manbaul ulum', 'IPA', 'SAINTEK', 1, '087873570037', 'putrinuralia75@gmail.com', 'Agribisnis IPB, Biologi ITS, Teknik Pertanian UNPAD', 'Lunas'),
(639, '2018-03-15 02:00:34', '2018-03-15', 'hafizh umar syafiqh', '191-02-17318', 1, 'tangerang', '2000-01-28', 'perum pws jl. azelia1 no .3 margasari tigaraksa tangerang', 'man 1 tangerang ', 'IPA', 'SAINTEK', 1, '081294396578', 'hzaningsih1203@gmail.com', 'fkm uin syarif hidatyatullah ', 'Lunas'),
(640, '2018-03-15 09:47:07', '2018-03-15', 'Pratama R', '183-02-17318', 0, 'Jakarta', '1998-09-25', 'Puribeta jl tanjung 3 no 33', 'SMAN 70 ', 'IPA', 'SAINTEK', 1, '081315716520', 'rahmatpratama90@yahoo.com', 'teknik mesin UI', 'Lunas'),
(641, '2018-03-15 10:44:42', '2018-03-15', 'boy brianda darama sandy', '', 0, 'bekasi 16-12-2000', '2000-12-16', 'Desa Cibinong Kecamatan Gunungsindur Kab.bogor\r\nPuri PHA(depkes)blok D17 NO38 RT02 RW12', 'SMAN 1GUNUNGSINDUR', 'IPS', 'SOSHUM', 2, '089653079643', 'boy.brianda@yahoo.co.id', 'sosiologi', ''),
(642, '2018-03-15 11:11:49', '2018-03-15', 'Jihad hawari ihsan', '', 0, 'Jakarta', '1998-08-31', 'Jl. Penggilingan penggilingan baru 1', 'MAS PERSIS 69', 'IPA', 'SAINTEK', 1, '081384514712', 'exzeew@gmail.com', 'Kedokteran', ''),
(643, '2018-03-15 12:05:48', '2018-03-15', 'Muhammad Irfan Al', '', 0, 'Baturaja', '2000-08-14', 'Komplek Cipondoh Makmur RT 009 RW 06 blok k 11 nomor 3 kelurahan cipondoh makmur kecamatan cipondoh tangerang kota tangerang banten 15148', 'SMK Telkom Jakarta', 'Lainnya', '', 0, '087786799517', 'Ghiffari4515@gmail.com', 'Teknik Perkapalan - Universitas Diponegoro', ''),
(644, '2018-03-15 13:58:26', '2018-03-15', 'Syifa Maulida Putri ', '187-02-17318', 0, ' Bekasi ', '2000-07-08', ' Pondok ungu permai, blok ae 4 no 5, rt 006 rw 010, kel bahagia, babelan, kab bekasi, jawa barat', 'Sma Muhammadiyah 1 Tangerang ', 'IPA', 'SAINTEK', 1, '081806289911 ', 'syifamaulidap03@gmail.com', 'kedokteran gigi ', 'Lunas'),
(645, '2018-03-15 14:10:07', '2018-03-15', 'Ilma Nurtavia Zahra ', '188-02-17318', 1, 'Tangerang', '2000-06-13', 'Kp.pedurenan timur,rt 02 rw 01 no.1 ,kel.pondok pucung ,kec.karang tengah , kota tangerang ', 'Sma Muhammadiyah 1 Tangerang', 'IPA', 'SAINTEK', 1, '085842060648', 'Nazlila.maysifa20@gmail.com', 'Kedokteran gigi', 'Lunas'),
(646, '2018-03-16 02:20:29', '2018-03-16', 'Tasya Chayatunnufus', '198-02-17318', 0, 'Jakarta,25 November 1999', '2018-01-01', 'Jln. P Jelambar Jaya no: 29 RT: 003/02', 'MAS PERSIS 69 MATRAMAN', 'IPA', 'SAINTEK', 1, '082298833011', 'tasya_chayatunnufus25@yahoo.com', 'kedokteran', ''),
(647, '2018-03-16 02:49:32', '2018-03-16', 'Fahrul rizky', '440-05-17318', 0, 'Jakarta', '2000-05-28', 'Jl luar batang II ', 'SMK PLUIT RAYA', 'IPS', 'SOSHUM', 2, '089690761477', 'Fahrul.risky28@gmail.com', 'Manajemen', 'Lunas'),
(648, '2018-03-16 02:49:41', '2018-03-16', 'Qori Febrianto', '436-05-17318', 0, 'Jakarta', '2000-02-16', 'Jl.  Jembatan gambang  Rt 002 RW 001 Jakarta Utara ', 'SMK Pluit Raya ', 'Lainnya', 'SOSHUM', 2, '088211747395', 'qorifebrianto@gmail.com', 'Psikologi UIN Jakarta ', 'Lunas'),
(649, '2018-03-16 02:57:29', '2018-03-16', 'Anggy oktafia', '441-05-17318', 0, 'Jakarta', '1999-10-06', 'Jl. Pluit Dalam 3 Rt 09/Rw 08 ', 'SMK Pluit Raya', 'Lainnya', 'SOSHUM', 2, '085771331828', 'anggioktafia06@gmail.com', 'PGSD UNJ', 'Lunas'),
(650, '2018-03-16 03:40:03', '2018-03-16', 'Ahmad Maulana', '437-05-17318', 0, 'Jakarta', '2000-06-29', 'Jl.Rawa Bebek Rt01/012 No.76 kel/kec. Penjaringan', 'SMK Pluit Raya', 'Lainnya', 'SOSHUM', 2, '087880677064', 'maulana2906@gmail.com', 'PLB UNJ', 'Lunas'),
(651, '2018-03-16 03:48:07', '2018-03-16', 'Fahru Robiansyah', '', 0, 'Jakarta, 01-November-1999', '2018-03-16', 'Jalan. Tanjung wangi rt03 rw12 Penjaringan Jakarta Utara', 'SMK Pluit Raya Jakarta', 'Lainnya', 'SOSHUM', 2, '087882344038', 'fahrurobi@gmail.com', 'Ilmu Komunikasi & ITB', ''),
(652, '2018-03-16 04:47:19', '2018-03-16', 'Febri Ilhamul Khoir', '', 0, 'Jakarta', '1999-02-14', 'Jl. Permata Ujung', 'MAS Persis 69', 'IPA', 'SAINTEK', 1, '081517427616', 'febriilhamul69@gmail.com', 'Kesehatan Masyarakat UI', ''),
(653, '2018-03-16 04:58:34', '2018-03-16', 'Hana Huwaida', '193-02-17318', 0, 'Jakarta', '1999-09-10', 'jalan buaran III no 56a', 'MAS Persis 69', 'IPA', 'SAINTEK', 1, '085694735442', 'hana.huwai@gmail.com', 'Teknologi Pangan IPB', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `workshop_parsial`
--

CREATE TABLE `workshop_parsial` (
  `id` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_daftar` date DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `kampus_asal` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `workshop_parsial`
--

INSERT INTO `workshop_parsial` (`id`, `waktu`, `tgl_daftar`, `nama`, `kampus_asal`, `alamat`, `email`, `no_hp`, `pembayaran`) VALUES
(2, '2018-03-05 08:54:46', '2018-03-05', 'Helly Tirta Sumitra', 'Bina Nusantara University', 'Jl Kamboja no 23 Kota Bambu Utara Tomang Jakarta Barat', 'hellytirta@gmail.com', '081806999908', 'Lunas'),
(3, '2018-03-06 02:57:35', '2018-03-06', 'Rafi Aditya Pratama', 'Pelajar', 'Jalan Angsana 1 Pamulang Timur Rt 001 Rw 008 No 16', 'rafiateam20@gmail.com', '085811857504', ''),
(4, '2018-03-06 03:40:09', '2018-03-06', 'Siti fani nafkhatin', 'Atta halilintar', 'Griya tugu asri blok c7 no 14', 'Faninafkhatin@gmail.com', '085019784101', ''),
(5, '2018-03-06 03:54:25', '2018-03-06', 'Marliana salwa utami', 'MAN 19 JAKARTA', 'Jalan bintaro permai III JAKARTA SELATAN', 'salwautami0203@gmail.com', '0895328010941', ''),
(6, '2018-03-06 04:17:24', '2018-03-06', 'Ida jumarida', 'Gramedia', 'Jalan Matraman dalam 3 Jakarta pusat', 'idajumarida@gmail.com', '081287171302', 'Lunas'),
(7, '2018-03-06 04:38:23', '2018-03-06', 'inna septiani', 'pelajar', 'jl tmii pintu 2 bawah rt 13/03 (jalan jembatan bandung) no 55 kec.makasar kel.pinang ranti jakarta timur', 'innaseptiani64@gmail.com', '085218801001', 'Lunas'),
(8, '2018-03-06 04:59:44', '2018-03-06', 'Ruth Jessica Haryanto', 'Kerja ', 'Pondok Hijau Golf Gading Serpong', 'ruthjessicaharyanto07@gmail.com', '08118070312', 'Lunas'),
(9, '2018-03-06 05:33:40', '2018-03-06', 'Adinda Luthfia Mentari', 'SMA YAPEMRI DEPOK', 'Jl. Melur 1 no:55 Rt:001 Rw:006 Depok 2 timur ', 'adindaluthfiamentati@gmail.com', '082111353113', ''),
(10, '2018-03-08 01:09:54', '2018-03-08', 'Hakan Ahmad Fatahillah', 'Universitas Indonesia', 'Vila Dago Alam Asri 3 J16/3A', 'fatahillah.hakanahmad@gmail.com', '085890707527', ''),
(12, '2018-03-10 04:11:23', '2018-03-10', 'Ajeng fera', 'Mahasiswa Pendidikan Ekonomi', 'Jalan Masjid Assalafiyah RT. 002/004 No. 41. kota Depok', 'ajengfera102@gmail.com', '0822-1130-2697', ''),
(13, '2018-03-11 02:53:18', '2018-03-11', 'Putra Gema Nusa', 'UIN Syarif Hidayatullah Jakarta', 'Jl. H. Konim RT 02 RW 01 Nomor 21 Kelurahan Grogol Kecamatan Limo Kota Depok', 'putra.gemanusa13@mhs.uinjkt.ac.id', '085811454005', 'Lunas'),
(14, '2018-03-12 02:18:06', '2018-03-12', 'Shabrina nur Adzani', 'Pelajar', 'Jalan j buntu no5 rt2 rw12', 'princesszbina23@gmail.com', '085771175784', 'Lunas'),
(15, '2018-03-12 05:04:13', '2018-03-12', 'Zahra melaningtyas', 'MAN 19 JAKARTA', 'Jalan wadassari 2 pondok Betung kec. Aren', 'zmelaningtyas13@gmail.com', '089530232731', ''),
(16, '2018-03-12 06:58:43', '2018-03-12', 'Ahmad triawan', 'PKN-STAN', 'Dsn. Bendungan RT 03 Rw 02, Bendungan, Kudu, Jombang', 'ahmadpermail@gmail.com', '085852305053', 'Lunas'),
(17, '2018-03-12 22:59:03', '2018-03-13', 'Annisatul istiqomah', 'Smk kartika x2', 'Jl hj buang ulujami rt/rw 07/007 no.95', 'anisaputri195@gmail.com', '087884587041', ''),
(18, '2018-03-15 14:29:14', '2018-03-15', 'Shania Nabila', 'Universitas Sahid Jakarta', 'Jalan Gatotkaca I Nomor 14 Jatiasih Bekasi', 'shanianabila30@gmail.com', '081284164104', ''),
(19, '2018-03-15 16:32:39', '2018-03-15', 'Vita Nurrahma B', 'Bina Nusantara', 'Jatibening estate C4/16 Bekasi', 'simpsonvita97@gmail.com', '081210764330', ''),
(20, '2018-03-17 03:28:13', '2018-03-17', 'christiana tresna', 'personal', 'vila nusa indah v2 no 11 bojong kulur ,gunung putri kab bogor', 'tresnachristiana@gmail.com', '08164217394', ''),
(21, '2018-03-18 11:19:09', '2018-03-18', 'Dhea Rizki Pratiwi', 'UIN Syarif Hidayatullah', 'Jl. Kp. Salo 005/04, No.98 Jakarta Barat', 'dhearp99@gmail.com', '089611589089', ''),
(22, '2018-03-19 01:26:11', '2018-03-19', 'Jamaludin', 'Uin jakarta ', 'Jl. Ir. h Juanda tanggerang selatan ciputat timur ', 'djamaludin270298@gmail.com', '082319802017', ''),
(23, '2018-03-19 03:07:35', '2018-03-19', 'Sovia nabila', 'Mahasiswa', 'Jalan cirendeu raya no 6A samping masjid At-taubah cirendeu', 'sovianabila30@gmail.com', '081219322037', ''),
(24, '2018-03-20 06:51:14', '2018-03-20', 'Iffah silmi', 'HalalMart HNI', 'Villa Mutiara Gading 2', 'iffahsilmi30@gmail.com', '081381769669', 'Lunas'),
(25, '2018-03-21 06:09:42', '2018-03-21', 'Nadya Rahmatil Wahidah ', 'Universitas Muhammadiyah Prof. Dr. Hamka (UHAMKA) ', 'Jl. Ciputat Raya, Rt/Rw 05/01, pondok pinang, kebayoran lama, Jakarta selatan ', 'nadyarahmatilwahidah26@gmail.com', '081321108914', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pemain_futsal`
--
ALTER TABLE `data_pemain_futsal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_peserta_singcomp`
--
ALTER TABLE `data_peserta_singcomp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expired`
--
ALTER TABLE `expired`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `futsal_parsial`
--
ALTER TABLE `futsal_parsial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_tryout_sbmptn`
--
ALTER TABLE `hasil_tryout_sbmptn`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `olimpiade_parsial`
--
ALTER TABLE `olimpiade_parsial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `singcomp_parsial`
--
ALTER TABLE `singcomp_parsial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sk`
--
ALTER TABLE `sk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tryout_sbmptn_parsial`
--
ALTER TABLE `tryout_sbmptn_parsial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `workshop_parsial`
--
ALTER TABLE `workshop_parsial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `data_pemain_futsal`
--
ALTER TABLE `data_pemain_futsal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `data_peserta_singcomp`
--
ALTER TABLE `data_peserta_singcomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `expired`
--
ALTER TABLE `expired`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `futsal_parsial`
--
ALTER TABLE `futsal_parsial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `hasil_tryout_sbmptn`
--
ALTER TABLE `hasil_tryout_sbmptn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT untuk tabel `olimpiade_parsial`
--
ALTER TABLE `olimpiade_parsial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `singcomp_parsial`
--
ALTER TABLE `singcomp_parsial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `sk`
--
ALTER TABLE `sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tryout_sbmptn_parsial`
--
ALTER TABLE `tryout_sbmptn_parsial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT untuk tabel `workshop_parsial`
--
ALTER TABLE `workshop_parsial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
