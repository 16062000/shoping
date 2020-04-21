-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Apr 2020 pada 13.00
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_bank`
--

CREATE TABLE `shop_bank` (
  `id_bank` int(11) NOT NULL,
  `name_bank` varchar(100) NOT NULL,
  `logo_bank` varchar(40) NOT NULL,
  `state_bank` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_bank`
--

INSERT INTO `shop_bank` (`id_bank`, `name_bank`, `logo_bank`, `state_bank`) VALUES
(1, 'Bank BCA', 'bca.png', 1),
(2, 'Bank BRI', 'bri.png', 1),
(3, 'Bank BNI', 'bni.png', 1),
(4, 'Bank Mandiri', 'mandiri.jpg', 1),
(5, 'Bank Mega', 'mega.png', 1),
(6, 'Bank Jatim', 'jatim.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_category`
--

CREATE TABLE `shop_category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_category`
--

INSERT INTO `shop_category` (`id_category`, `category`, `state`) VALUES
(1, 'Barang Bekas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_image_product`
--

CREATE TABLE `shop_image_product` (
  `id_image_product` int(11) NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_options`
--

CREATE TABLE `shop_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_provinsi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_kab` int(11) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_page`
--

CREATE TABLE `shop_page` (
  `how_to_buy` text NOT NULL,
  `about_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_page`
--

INSERT INTO `shop_page` (`how_to_buy`, `about_us`) VALUES
('<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style=\"font-family: arial, helvetica, sans-serif;\">.....</span></p>\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_payment`
--

CREATE TABLE `shop_payment` (
  `id_payment` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_payment`
--

INSERT INTO `shop_payment` (`id_payment`, `id_bank`, `number`, `name`, `state`) VALUES
(1, 1, '11002299', 'BTK', 0),
(2, 2, '33774466', 'LIDYA', 0),
(3, 3, '22993366', 'EVA', 0),
(4, 4, '55229966', 'LIDYA', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_product`
--

CREATE TABLE `shop_product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `information_product` text NOT NULL,
  `price_product` int(11) NOT NULL,
  `discount_product` int(11) NOT NULL,
  `weight_product` int(11) NOT NULL,
  `category_product` int(11) NOT NULL,
  `stock_product` int(11) NOT NULL,
  `image_product` varchar(50) NOT NULL,
  `slug_product` text NOT NULL,
  `state_product` int(1) NOT NULL,
  `state_discount` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_product`
--

INSERT INTO `shop_product` (`id_product`, `name_product`, `information_product`, `price_product`, `discount_product`, `weight_product`, `category_product`, `stock_product`, `image_product`, `slug_product`, `state_product`, `state_discount`) VALUES
(31, 'Mesin Cuci', 'Barang Bekas Pemakaian , Kondisi 70 % , Type LG , ', 450000, 259000, 1000, 1, 10, 'CC.jpeg', 'Mesin Cuci', 1, 1),
(32, 'AC', 'Kondisi 80%', 350000, 270000, 1000, 1, 0, 'AC.png', 'AC', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_session`
--

CREATE TABLE `shop_session` (
  `id` varchar(200) DEFAULT NULL,
  `ip_address` varchar(18) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('inl941ifg0l84kviho6uvvlbto6071ne', '36.76.121.227', '__ci_last_regenerate|i:1533453569;', '1533453591'),
('mo928q9u77fiubq9p2u25876td78la4j', '36.76.121.227', '__ci_last_regenerate|i:1533455603;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533455603'),
('mo928q9u77fiubq9p2u25876td78la4j', '36.76.121.227', '__ci_last_regenerate|i:1533455603;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533455603'),
('d49be9hekapfmsrg6jb2ib5ihnop4usr', '36.76.121.227', '__ci_last_regenerate|i:1533457409;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533457409'),
('99kjlk7v05837772vlj59vk2k9bq14ah', '36.76.121.227', '__ci_last_regenerate|i:1533456003;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:18000000;s:11:\"total_items\";d:1;s:32:\"e9e7aa68903c62ec596b19cca23ba80a\";a:11:{s:2:\"id\";s:14:\"20180805145928\";s:10:\"id_product\";s:2:\"49\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"iphone_7_plus\";s:5:\"price\";d:18000000;s:5:\"berat\";i:1000;s:4:\"name\";s:13:\"IPHONE 7 PLUS\";s:11:\"information\";s:50:\"[Jumlah : 1] &rarr; <b>iphone 7 plus hitam</b><br>\";s:7:\"picture\";s:29:\"Produk2018-07-26-22-42-50.png\";s:5:\"rowid\";s:32:\"e9e7aa68903c62ec596b19cca23ba80a\";s:8:\"subtotal\";d:18000000;}}', '1533456003'),
('96alad79ge5tq8tvb1ms0meop58i0go0', '36.76.121.227', '__ci_last_regenerate|i:1533456813;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1533456813'),
('vbenfaakhucg4v88lljmnieheq4eo349', '36.76.121.227', '__ci_last_regenerate|i:1533456813;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1533456815'),
('kqm8hu598v47sb9jjsgf6f5iaib1hn6l', '36.76.121.227', '__ci_last_regenerate|i:1533457409;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533457410'),
('b9t6vadek6rjlq2vkc4g4oa0m8elg7on', '36.76.121.227', '__ci_last_regenerate|i:1533464885;', '1533464885'),
('ce97gp99jpdecenrgbqhcd73jjs3a77j', '36.76.121.227', '__ci_last_regenerate|i:1533466495;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:64000000;s:11:\"total_items\";d:2;s:32:\"8215640a8a47a3c3f768aa45fde1b6de\";a:11:{s:2:\"id\";s:14:\"20180805175152\";s:10:\"id_product\";s:2:\"48\";s:3:\"qty\";d:2;s:4:\"slug\";s:8:\"iphone_x\";s:5:\"price\";d:32000000;s:5:\"berat\";i:2000;s:4:\"name\";s:8:\"IPHONE X\";s:11:\"information\";s:45:\"[Jumlah : 2] &rarr; <b>iphone x hitam</b><br>\";s:7:\"picture\";s:29:\"Produk2018-07-26-22-39-31.png\";s:5:\"rowid\";s:32:\"8215640a8a47a3c3f768aa45fde1b6de\";s:8:\"subtotal\";d:64000000;}}', '1533466495'),
('ffkitujckpssqo780qkj8t1lte9qipkm', '36.76.121.227', '__ci_last_regenerate|i:1533466145;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:39:\"Selamat Datang <strong> KUKUH </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}', '1533466145'),
('0pgb6uhpfpb8bodl049aioqqr3h3k6l6', '36.76.121.227', '__ci_last_regenerate|i:1533466994;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1600000;s:11:\"total_items\";d:1;s:32:\"72831e29e74a6f052c96e56314f03e95\";a:11:{s:2:\"id\";s:14:\"20180805175807\";s:10:\"id_product\";s:2:\"50\";s:3:\"qty\";d:1;s:4:\"slug\";s:22:\"iphone_x_free_softcase\";s:5:\"price\";d:1600000;s:5:\"berat\";i:1000;s:4:\"name\";s:22:\"IPHONE X FREE SOFTCASE\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-22-44-49.png\";s:5:\"rowid\";s:32:\"72831e29e74a6f052c96e56314f03e95\";s:8:\"subtotal\";d:1600000;}}', '1533466994'),
('092s04gpu6feidro0f22elhg0eih324d', '36.76.121.227', '__ci_last_regenerate|i:1533467393;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1600000;s:11:\"total_items\";d:1;s:32:\"72831e29e74a6f052c96e56314f03e95\";a:11:{s:2:\"id\";s:14:\"20180805175807\";s:10:\"id_product\";s:2:\"50\";s:3:\"qty\";d:1;s:4:\"slug\";s:22:\"iphone_x_free_softcase\";s:5:\"price\";d:1600000;s:5:\"berat\";i:1000;s:4:\"name\";s:22:\"IPHONE X FREE SOFTCASE\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-22-44-49.png\";s:5:\"rowid\";s:32:\"72831e29e74a6f052c96e56314f03e95\";s:8:\"subtotal\";d:1600000;}}', '1533467393'),
('66j0jgertsv12986u24lvkobchmjtta2', '36.76.121.227', '__ci_last_regenerate|i:1533467393;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1600000;s:11:\"total_items\";d:1;s:32:\"72831e29e74a6f052c96e56314f03e95\";a:11:{s:2:\"id\";s:14:\"20180805175807\";s:10:\"id_product\";s:2:\"50\";s:3:\"qty\";d:1;s:4:\"slug\";s:22:\"iphone_x_free_softcase\";s:5:\"price\";d:1600000;s:5:\"berat\";i:1000;s:4:\"name\";s:22:\"IPHONE X FREE SOFTCASE\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-22-44-49.png\";s:5:\"rowid\";s:32:\"72831e29e74a6f052c96e56314f03e95\";s:8:\"subtotal\";d:1600000;}}', '1533467394'),
('bj08uvfmqffocsc0o14tjh9mbrd7u522', '120.188.78.249', '__ci_last_regenerate|i:1533560330;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533560495'),
('j7bfu22u9sqr080t1j8ad647b22sjsbr', '182.253.131.62', '__ci_last_regenerate|i:1533568508;', '1533568533'),
('rc8c0c3rlkjshvecs02ftibk5m0ecot4', '114.4.221.197', '__ci_last_regenerate|i:1533729944;', '1533729945'),
('uldt7iaspjlpo268hs3cnpitpte8bt7o', '120.188.39.167', '__ci_last_regenerate|i:1533837619;', '1533837620'),
('dh0fu0sa55o0tamr2nva5t53e46cdeop', '114.4.217.19', '__ci_last_regenerate|i:1533904913;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1533904952'),
('f1jvo9ggoi4rp4eet7eje5oaff26ooi6', '::1', '__ci_last_regenerate|i:1540814773;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540814843'),
('c3numk0cprprmlmh0vqf1cc2pfjiv9o4', '::1', '__ci_last_regenerate|i:1540972088;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540972235'),
('hfca15cka8bif5ofugagp2q50aktsv6u', '::1', '__ci_last_regenerate|i:1540972452;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540972583'),
('qep2rcq75ksdsmldbsbml2sp770do2b6', '::1', '__ci_last_regenerate|i:1540973215;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540973224'),
('83ne2pe0b0pgfb0b8e0f5qs30eieg8ig', '::1', '__ci_last_regenerate|i:1540974897;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540975044'),
('qkl34t22ips6kt7tjrrq6j33u81gudq8', '::1', '__ci_last_regenerate|i:1540975582;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540975858'),
('ln45arcgmlgm8vc3r9jocdfsmhf19gon', '::1', '__ci_last_regenerate|i:1540976854;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1540976925'),
('icv4k1idifuqoa5763rd12cvjesbeegp', '::1', '__ci_last_regenerate|i:1540977431;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1200000;s:11:\"total_items\";d:1;s:32:\"a2413c3b9362f069898adbf5b3538d85\";a:11:{s:2:\"id\";s:14:\"20181031161838\";s:10:\"id_product\";s:2:\"30\";s:3:\"qty\";d:1;s:4:\"slug\";s:10:\"asus_4_max\";s:5:\"price\";d:1200000;s:5:\"berat\";i:1000;s:4:\"name\";s:10:\"ASUS 4 MAX\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-22-27.png\";s:5:\"rowid\";s:32:\"a2413c3b9362f069898adbf5b3538d85\";s:8:\"subtotal\";d:1200000;}}', '1540977719'),
('g04d1j6jspk770qshv5vfuikuqfef8i1', '::1', '__ci_last_regenerate|i:1540977750;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1200000;s:11:\"total_items\";d:1;s:32:\"a2413c3b9362f069898adbf5b3538d85\";a:11:{s:2:\"id\";s:14:\"20181031161838\";s:10:\"id_product\";s:2:\"30\";s:3:\"qty\";d:1;s:4:\"slug\";s:10:\"asus_4_max\";s:5:\"price\";d:1200000;s:5:\"berat\";i:1000;s:4:\"name\";s:10:\"ASUS 4 MAX\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-22-27.png\";s:5:\"rowid\";s:32:\"a2413c3b9362f069898adbf5b3538d85\";s:8:\"subtotal\";d:1200000;}}', '1540978046'),
('np249i451ec4flofa6qasjpifa4aeq6o', '::1', '__ci_last_regenerate|i:1540978079;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:1200000;s:11:\"total_items\";d:1;s:32:\"a2413c3b9362f069898adbf5b3538d85\";a:11:{s:2:\"id\";s:14:\"20181031161838\";s:10:\"id_product\";s:2:\"30\";s:3:\"qty\";d:1;s:4:\"slug\";s:10:\"asus_4_max\";s:5:\"price\";d:1200000;s:5:\"berat\";i:1000;s:4:\"name\";s:10:\"ASUS 4 MAX\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-22-27.png\";s:5:\"rowid\";s:32:\"a2413c3b9362f069898adbf5b3538d85\";s:8:\"subtotal\";d:1200000;}}', '1540978345'),
('tr8h3i4c6nn7c4elvrf4ktmf8gi0ira5', '::1', '__ci_last_regenerate|i:1543924153;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1543924444'),
('bh6rpp39f1m7b7lrb7fd9580d21pup45', '::1', '__ci_last_regenerate|i:1543924454;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1543924537'),
('mu0j38o77jplvd77e3djegnt95kcfnkq', '::1', '__ci_last_regenerate|i:1543924823;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1543925122'),
('04egprdprib417ekhu87jd3our4d5cf3', '::1', '__ci_last_regenerate|i:1543925129;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1543925198'),
('7a54c7b89b7ddfaf8ee50156473c968c7b0339d6', '::1', '__ci_last_regenerate|i:1584115929;cart_contents|a:3:{s:10:\"cart_total\";d:799000;s:11:\"total_items\";d:1;s:32:\"ba9e849a88e6c2f8c95bf80ab7052fb9\";a:11:{s:2:\"id\";s:14:\"20200313231313\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:1;s:4:\"slug\";s:12:\"lenovo_a1000\";s:5:\"price\";d:799000;s:5:\"berat\";i:1000;s:4:\"name\";s:12:\"LENOVO A1000\";s:11:\"information\";s:36:\"[Jumlah : 1] &rarr; <b>200mh</b><br>\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-23-55.png\";s:5:\"rowid\";s:32:\"ba9e849a88e6c2f8c95bf80ab7052fb9\";s:8:\"subtotal\";d:799000;}}', '1584115993'),
('27d4816cb0e6e111ec5cc3359541dd84524d3cbf', '::1', '__ci_last_regenerate|i:1584174958;', '1584174958'),
('8209f30784f23268c0be3a4e38a21b8c4de42c5e', '::1', '__ci_last_regenerate|i:1584254106;', '1584254106'),
('d5e373f3a449dad062327ce98c7a837a8bcb0245', '::1', '__ci_last_regenerate|i:1584254462;cart_contents|a:3:{s:10:\"cart_total\";d:3196000;s:11:\"total_items\";d:2;s:32:\"7bc58ba13c17bcb150d5ee8c9c6ffc30\";a:11:{s:2:\"id\";s:14:\"20200315133634\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:2;s:4:\"slug\";s:12:\"lenovo_a1000\";s:5:\"price\";d:1598000;s:5:\"berat\";i:2000;s:4:\"name\";s:12:\"LENOVO A1000\";s:11:\"information\";s:36:\"[Jumlah : 2] &rarr; <b>merah</b><br>\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-23-55.png\";s:5:\"rowid\";s:32:\"7bc58ba13c17bcb150d5ee8c9c6ffc30\";s:8:\"subtotal\";d:3196000;}}', '1584254462'),
('50009820ff2d64fbcd80a3d04622a58f5345f954', '::1', '__ci_last_regenerate|i:1584254462;cart_contents|a:3:{s:10:\"cart_total\";d:3196000;s:11:\"total_items\";d:2;s:32:\"7bc58ba13c17bcb150d5ee8c9c6ffc30\";a:11:{s:2:\"id\";s:14:\"20200315133634\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:2;s:4:\"slug\";s:12:\"lenovo_a1000\";s:5:\"price\";d:1598000;s:5:\"berat\";i:2000;s:4:\"name\";s:12:\"LENOVO A1000\";s:11:\"information\";s:36:\"[Jumlah : 2] &rarr; <b>merah</b><br>\";s:7:\"picture\";s:29:\"Produk2018-07-26-21-23-55.png\";s:5:\"rowid\";s:32:\"7bc58ba13c17bcb150d5ee8c9c6ffc30\";s:8:\"subtotal\";d:3196000;}}', '1584254642'),
('c536b2929593b642bd89e0b15186b9299274c981', '::1', '__ci_last_regenerate|i:1584325793;', '1584325793'),
('d3b76f53082fa6af1852daa7813f31f12f8a4952', '127.0.0.1', '__ci_last_regenerate|i:1584882361;', '1584882393'),
('e8a7a32f2988ec2deb93169e9b7be49eb53e9b2a', '127.0.0.1', '__ci_last_regenerate|i:1585186556;', '1585186556'),
('461db1d9b42fa8e7551da95170bf25d0e6cdbec3', '127.0.0.1', '__ci_last_regenerate|i:1585186556;', '1585186774'),
('794bd6c1a7964617dac9b430f4dc7498ade3fc56', '::1', '__ci_last_regenerate|i:1585550743;', '1585550743'),
('2cc4e099020f195d941874cf711727c02a2d75a4', '::1', '__ci_last_regenerate|i:1585552881;', '1585552881'),
('7a1c47ee16d618e197110f4c7d5e84ec6bfe11ca', '::1', '__ci_last_regenerate|i:1585553596;', '1585553596'),
('e537d94be902e74c2908326509b9106b03f620b2', '::1', '__ci_last_regenerate|i:1585553905;', '1585553905'),
('7a50511de6ce79c71069db517354eafb0ca32b08', '::1', '__ci_last_regenerate|i:1585554207;', '1585554207'),
('67538c409beb9d2cd73f0eb6e8b4a57c2b09833e', '::1', '__ci_last_regenerate|i:1585554509;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1585554509'),
('6697a14827d84fd3d6f1c8d8e190ca440c2da454', '::1', '__ci_last_regenerate|i:1585555135;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1585555135'),
('3fc5e8d3c8c12eeb3bb2828f2894fa714b16c1d8', '::1', '__ci_last_regenerate|i:1585555448;KCFINDER|a:0:{}CIPTASHOP|a:0:{}cart_contents|a:3:{s:10:\"cart_total\";d:2430000;s:11:\"total_items\";d:3;s:32:\"e02bf971f1792aee1916bd4df84c206b\";a:11:{s:2:\"id\";s:14:\"20200330150123\";s:10:\"id_product\";s:2:\"32\";s:3:\"qty\";d:3;s:4:\"slug\";s:2:\"AC\";s:5:\"price\";d:810000;s:5:\"berat\";i:3000;s:4:\"name\";s:2:\"AC\";s:11:\"information\";s:33:\"[Jumlah : 3] &rarr; <b>gg</b><br>\";s:7:\"picture\";s:6:\"AC.png\";s:5:\"rowid\";s:32:\"e02bf971f1792aee1916bd4df84c206b\";s:8:\"subtotal\";d:2430000;}}', '1585555448'),
('0f83ee20599cbd632d9a5f68881fa0cd21bbd4e1', '::1', '__ci_last_regenerate|i:1585556421;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1585556421'),
('788a2ce92990bf5222ff710ac4d31830b52c481c', '::1', '__ci_last_regenerate|i:1585556724;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"4\";', '1585556724'),
('b5234cacb6930a3b0718859b699c9bb82b715ee9', '::1', '__ci_last_regenerate|i:1585557503;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1585557503'),
('a4634b75b8fb03a3e53a84f430a771dcd3f056cc', '::1', '__ci_last_regenerate|i:1585557503;KCFINDER|a:0:{}CIPTASHOP|a:0:{}', '1585557539'),
('9cc7630bfd06a077656e7ec872812e238c01f77d', '::1', '__ci_last_regenerate|i:1585644882;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1585645035'),
('bffc9033b1d6f78e185c66a5d8cc90847aeea502', '::1', '__ci_last_regenerate|i:1585842908;', '1585842908'),
('9991ad3078edeed2d4d987efbf22837750477f38', '::1', '__ci_last_regenerate|i:1585995928;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1585995928'),
('ec669e54f7aab0aac0edc9aaaaab820567d208bb', '::1', '__ci_last_regenerate|i:1585996438;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1585996438'),
('c7c9d87985d66e392f657bb9379bf9e700809781', '::1', '__ci_last_regenerate|i:1585996756;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:6475000;s:11:\"total_items\";d:5;s:32:\"e482f50dfc0e19107758ac60ec1d395c\";a:11:{s:2:\"id\";s:14:\"20200404173501\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:5;s:4:\"slug\";s:10:\"Mesin Cuci\";s:5:\"price\";d:1295000;s:5:\"berat\";i:5000;s:4:\"name\";s:10:\"Mesin Cuci\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:7:\"CC.jpeg\";s:5:\"rowid\";s:32:\"e482f50dfc0e19107758ac60ec1d395c\";s:8:\"subtotal\";d:6475000;}}', '1585996756'),
('2d32f19c01ec38d8479a87b689b622146b7ad742', '::1', '__ci_last_regenerate|i:1585997096;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:6475000;s:11:\"total_items\";d:5;s:32:\"e482f50dfc0e19107758ac60ec1d395c\";a:11:{s:2:\"id\";s:14:\"20200404173501\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:5;s:4:\"slug\";s:10:\"Mesin Cuci\";s:5:\"price\";d:1295000;s:5:\"berat\";i:5000;s:4:\"name\";s:10:\"Mesin Cuci\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:7:\"CC.jpeg\";s:5:\"rowid\";s:32:\"e482f50dfc0e19107758ac60ec1d395c\";s:8:\"subtotal\";d:6475000;}}', '1585997096'),
('62a6c5abf67b18616310c018a8cdc1f19cffe160', '::1', '__ci_last_regenerate|i:1585997401;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:6475000;s:11:\"total_items\";d:5;s:32:\"e482f50dfc0e19107758ac60ec1d395c\";a:11:{s:2:\"id\";s:14:\"20200404173501\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:5;s:4:\"slug\";s:10:\"Mesin Cuci\";s:5:\"price\";d:1295000;s:5:\"berat\";i:5000;s:4:\"name\";s:10:\"Mesin Cuci\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:7:\"CC.jpeg\";s:5:\"rowid\";s:32:\"e482f50dfc0e19107758ac60ec1d395c\";s:8:\"subtotal\";d:6475000;}}myAqua|s:1:\"2\";', '1585997401'),
('cbb2dbc87aae97493d697d8cb9908d4612976d61', '::1', '__ci_last_regenerate|i:1585997762;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:6475000;s:11:\"total_items\";d:5;s:32:\"e482f50dfc0e19107758ac60ec1d395c\";a:11:{s:2:\"id\";s:14:\"20200404173501\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:5;s:4:\"slug\";s:10:\"Mesin Cuci\";s:5:\"price\";d:1295000;s:5:\"berat\";i:5000;s:4:\"name\";s:10:\"Mesin Cuci\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:7:\"CC.jpeg\";s:5:\"rowid\";s:32:\"e482f50dfc0e19107758ac60ec1d395c\";s:8:\"subtotal\";d:6475000;}}myAqua|s:1:\"2\";', '1585997762'),
('483d0b1cd7873904fae3442d7d75817a0f9da58e', '::1', '__ci_last_regenerate|i:1585997762;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:259000;s:11:\"total_items\";d:1;s:32:\"e4ae0c36cc90a971cb9d9067fdf4a37a\";a:11:{s:2:\"id\";s:14:\"20200404175702\";s:10:\"id_product\";s:2:\"31\";s:3:\"qty\";d:1;s:4:\"slug\";s:10:\"Mesin Cuci\";s:5:\"price\";d:259000;s:5:\"berat\";i:1000;s:4:\"name\";s:10:\"Mesin Cuci\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:7:\"CC.jpeg\";s:5:\"rowid\";s:32:\"e4ae0c36cc90a971cb9d9067fdf4a37a\";s:8:\"subtotal\";d:259000;}}', '1585997937');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_setting`
--

CREATE TABLE `shop_setting` (
  `shortname_shop` varchar(20) NOT NULL,
  `longname_shop` varchar(100) NOT NULL,
  `motto_shop` varchar(100) NOT NULL,
  `location_shop` varchar(120) NOT NULL,
  `name_manage` varchar(100) NOT NULL,
  `bbm_contact` varchar(20) NOT NULL,
  `wa_contact` varchar(20) NOT NULL,
  `phone_contact` varchar(20) NOT NULL,
  `email_shop` varchar(30) NOT NULL,
  `propinsi_shop` varchar(20) NOT NULL,
  `kabupaten_shop` varchar(20) NOT NULL,
  `logo_shop` varchar(50) NOT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `google` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pos` int(1) DEFAULT NULL,
  `jne` int(1) DEFAULT NULL,
  `tiki` int(1) DEFAULT NULL,
  `gratis_ongkir_wilayah` int(1) DEFAULT NULL,
  `cod_wilayah` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_setting`
--

INSERT INTO `shop_setting` (`shortname_shop`, `longname_shop`, `motto_shop`, `location_shop`, `name_manage`, `bbm_contact`, `wa_contact`, `phone_contact`, `email_shop`, `propinsi_shop`, `kabupaten_shop`, `logo_shop`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `pos`, `jne`, `tiki`, `gratis_ongkir_wilayah`, `cod_wilayah`) VALUES
('Siberos', 'Sistem Informasi Beli Rongsokan', 'Infomasi Lelang Beli Seputar Rongsokan', 'Dander Bojonegoro', 'LIDYA', '', '0895396329144', '', 'Lidiasaja87@gmail.com', '11', '256', 'lidya.png', 'https://facebook.com/dya', 'https://twitter.com/dya', '', 'https://instagram.com/lidya.ya19', '', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_skin`
--

CREATE TABLE `shop_skin` (
  `id_skin` int(3) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `example` varchar(50) NOT NULL,
  `skin_status` int(2) NOT NULL,
  `ket` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_skin`
--

INSERT INTO `shop_skin` (`id_skin`, `skin`, `example`, `skin_status`, `ket`) VALUES
(1, 'style-1', 'style-1.PNG', 1, 'tema 1'),
(2, 'style-2', 'style-2.PNG', 0, 'tema 2'),
(3, 'style-3', 'style-3.PNG', 0, 'tema 3'),
(4, 'style-4', 'style-4.PNG', 0, 'tema 4'),
(5, 'style-5', 'style-5.PNG', 0, 'tema 5'),
(6, 'style-6', 'style-6.PNG', 0, 'tema 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_slider`
--

CREATE TABLE `shop_slider` (
  `id_slider` int(11) NOT NULL,
  `slider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_testimoni`
--

CREATE TABLE `shop_testimoni` (
  `id_testimony` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp(),
  `testimony` text DEFAULT NULL,
  `state` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_testimoni`
--

INSERT INTO `shop_testimoni` (`id_testimony`, `email`, `name`, `time`, `testimony`, `state`) VALUES
(1, 'RianBtk@gmail.com', 'RianBtk', '2020-03-26 16:22:30', 'BTK', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction`
--

CREATE TABLE `shop_transaction` (
  `id_transaction` varchar(100) NOT NULL,
  `no_invoice` varchar(40) NOT NULL,
  `kode_pembelian` varchar(40) NOT NULL,
  `name_customer` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `courier` varchar(5) NOT NULL,
  `packet` varchar(30) DEFAULT NULL,
  `to_customer` varchar(3) DEFAULT NULL,
  `price_ongkir` int(11) NOT NULL,
  `time_transaction` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_transaction` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `payment_transaction` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_transaction`
--

INSERT INTO `shop_transaction` (`id_transaction`, `no_invoice`, `kode_pembelian`, `name_customer`, `email`, `province`, `city`, `address`, `courier`, `packet`, `to_customer`, `price_ongkir`, `time_transaction`, `total_transaction`, `bank`, `payment_transaction`, `phone`, `bukti`, `no_resi`, `state`) VALUES
('20200404172814', 'INV-000000001', '92v9RV79s0', 'LIDYAS', 'lidya@gmail.com', 11, 80, 'jl bromo', 'pos', 'Paket Kilat Khusus', '1-2', 100000, '2020-04-04 10:28:14', 2800000, '4', 1, '087654345678', '', '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction_details`
--

CREATE TABLE `shop_transaction_details` (
  `id_transaction` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_transaction` int(11) NOT NULL,
  `information` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_transaction_details`
--

INSERT INTO `shop_transaction_details` (`id_transaction`, `id_product`, `qty_transaction`, `information`) VALUES
('20200404172814', 32, 10, '[Jumlah : 10] &rarr; <b>dll</b><br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_user`
--

CREATE TABLE `shop_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` text NOT NULL,
  `access_user` int(1) NOT NULL,
  `state_user` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_user`
--

INSERT INTO `shop_user` (`id_user`, `name_user`, `username_user`, `password_user`, `access_user`, `state_user`) VALUES
(4, 'LIDYA', 'user', '827ccb0eea8a706c4c34a16891f84e7b', 2, 1),
(2, 'RIAN', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  ADD PRIMARY KEY (`id_image_product`);

--
-- Indeks untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indeks untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  ADD PRIMARY KEY (`id_skin`);

--
-- Indeks untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  ADD PRIMARY KEY (`id_testimony`);

--
-- Indeks untuk tabel `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  MODIFY `id_image_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  MODIFY `id_skin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  MODIFY `id_testimony` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
