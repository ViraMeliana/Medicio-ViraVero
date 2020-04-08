-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2020 pada 10.59
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `account`
--

CREATE TABLE `account` (
  `ID_ACCOUNT` int(11) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ROLE` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `account`
--

INSERT INTO `account` (`ID_ACCOUNT`, `USERNAME`, `PASSWORD`, `EMAIL`, `ROLE`) VALUES
(1, 'vira', 'vira', 'vira@gmail.com', '1'),
(2, 've', 've', 'veronica@gmail.com', '0'),
(5, 'halo', 'halo', 'halo@gmail.com', '0'),
(6, 'pras', 'pras', 'pras@gmail.com', '0'),
(7, 'lala', 'lala', 'lala@gmail.com', '0'),
(8, 'meliana', 'meliana', 'meliana@gmail.com', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `ID_CATEGORY` int(11) NOT NULL,
  `CAT_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`ID_CATEGORY`, `CAT_NAME`) VALUES
(4, 'obat batuk'),
(5, 'obat flu'),
(6, 'obat mata'),
(7, 'obat demam anak'),
(8, 'vitamin'),
(10, 'obat sakit punggung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medicine`
--

CREATE TABLE `medicine` (
  `ID_MEDICINE` int(11) NOT NULL,
  `ID_CATEGORY` int(11) DEFAULT NULL,
  `MED_NAME` varchar(50) DEFAULT NULL,
  `IMAGE` varchar(50) DEFAULT NULL,
  `PRICE` varchar(50) DEFAULT NULL,
  `DESC_MED` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `medicine`
--

INSERT INTO `medicine` (`ID_MEDICINE`, `ID_CATEGORY`, `MED_NAME`, `IMAGE`, `PRICE`, `DESC_MED`) VALUES
(6, 6, 'Tetes Mata Rohto', '1.-Tetes-Mata-Rohto.jpg', '14000', 'Rohto merupakan brand yang berasal dari Jepang dan'),
(7, 6, 'Allegran Refresh', '2.-Refresh-Contact.jpg', '45000', 'Brand yang telah dipercaya oleh lebih dari 100 neg'),
(8, 6, 'Tetes Mata Insto', '3.-Tetes-Mata-Insto-420x420.jpg', '12000', 'Insto merupakan produk tetes mata terkemuka di Ind'),
(9, 6, 'Blink Contacts', '4.-Blink-Contacts-420x420.jpg', '55000', 'Blink merupakan brand yang berada di bawah perusah'),
(10, 6, 'Tetes Mata Sante', '5.-Tetes-Mata-Sante.jpg', '100000', 'Sante diformulasikan khusus untuk mata stres akiba'),
(11, 6, 'Tetes Mata Visine', '6.-Tetes-Mata-Visine-420x420.jpg', '13000', 'Tetes mata ini juga mampu mengetasi mata merah aki'),
(12, 6, 'Alcon Tears Naturale', '7.-Alcon-Tears-Naturale-420x420.jpg', '48000', 'Tetes mata ini mengandung Dextran 0,1% dan hydroxy'),
(13, 6, 'Lion Smile', '8.-Lion-Smile-420x420.jpg', '120000', 'Obat tetes mata asal Jepang ini merupakan salah sa'),
(14, 6, 'Tetes Mata Freshkon', '9.-Tetes-Mata-Freshkon-420x420.jpg', '17900', 'Tetes mata ini juga dapat langsung diteteskan pada'),
(15, 6, 'Cendo Cenfresh', '10.-Cendo-Cenfresh-420x420.jpg', '27000', 'Tetes mata dari Cendo Cenfresh ini tersedia dalam '),
(16, 8, 'Blackmores Vitamin C', 'blackmores.jpg', '300000', 'Blackmores mengandung ekstrak bioflavonoid untuk m'),
(17, 8, 'Puritans Pride Vitamin C', '2.-Puritans-Pride-Vitamin-C.jpg', '170000', 'Salah satu Vitamin C yang bagus untuk kulit adalah'),
(18, 8, 'Holisticare Ester C', '3.-Holisticare-Ester-C-420x420.jpg', '40000', 'Merupakan vitamin C yang tidak perih di lambung, E'),
(19, 8, 'Vitalong C', '4.-Vitalong-C-420x420.jpg', '35000', 'Vitalong C merupakan suplemen untuk mencegah terja'),
(20, 8, 'Enervon C', '5.-Enervon-C-420x420.jpg', '29500', 'memelihara daya tahan tubuh, vitamin yang satu ini'),
(21, 8, 'Natures Way', '6.-Natures-Way-420x420.jpg', '280000', 'Serupa dengan Puritans Pride Vitamin C, Natures Wa'),
(22, 8, 'Airborne Suppleme', '7.-Airborne-Supplement-420x420.jpgnt', '100000', 'Tersedia dalam bentuk tablet effervescent yang dil'),
(23, 8, 'Healthy Care Vitamin C', '8.-Healthy-Care-Vitamin-C-420x420.jpg', '230000', 'Merk Vitamin C paling laris berikutnya adalah Heal'),
(24, 8, 'You C1000', '9.-You-C1000-420x420.jpg', '7000', 'kalian akan mendapatkan manfaat Vitamin C dengan r'),
(25, 8, 'Alkaline-C', '10.-Alkaline-C-420x420.jpg', '70000', 'Vitamin C ini juga berfungsi untuk mengubah?mood, '),
(26, 5, 'Cap Ibu dan Anak (King To Nin Jiom Pei Pa Koa)', 'ibuanakflu.jpg', '22000', 'Obat ramuan Cina ini telah dikenal secara turun-te'),
(27, 5, 'Tolak Angin Flu', 'tolakangin.jpg', '3000', 'Produk dari Sido Muncul ini adalah jamu dPada saat'),
(28, 5, 'Mixagrip Flu', 'mixagrib.jpg', '19000', 'Pada saat mengalami flu, tubuh Anda membutuhkan is'),
(29, 5, 'Combi Batuk dan Flu ? Mentol', 'combi.jpg', '17000', 'Combiphar memproduksi obat batuk dan flu yang di d'),
(30, 5, 'Panadol Flu & Batuk', 'panadol.png', '?11000', 'nadol Flu dan Batuk dapat membantu meredakan berba'),
(31, 5, 'Puyer Bintang Toedjoe No. 16', 'puyer.jpg', '6000', 'Kandungan di dalamnya akan meredakan sakit kepala '),
(32, 5, 'Bodrex Flu & Batuk Berdahak PE', 'bodrex.png', '2000', 'Dahak yang lebih encer tentu akan lebih mudah dike'),
(33, 5, 'Woods Peppermint Antitussive', 'woods.png', '27500', 'Produk ini mengurangi batuk dengan cara bekerja di'),
(34, 5, 'Siladex Mucolytic & Expectorant', 'siladex.png', '115000', 'Obat batuk sirop produksi Konimex ini tidak memili'),
(35, 5, 'Rhinos SR', 'rhinos.jpg', '70000', 'Rhinos SR dirancang sebagai obat pilek yang bersif'),
(36, 7, 'Bufect Ibuprofen Suspensi', 'ibupro.jpg', '17000', 'Kandungan terbesar dari obat demam yang satu ini a'),
(37, 7, 'Pamol', 'pamol.jpg', '20000', 'Pamol,Memiliki kandungan paracetamol didalamnya. S'),
(38, 7, 'Panadol Anak', 'panadol.jpg', '50000', 'Panadol juga dapat digunakan untuk redakan sakit p'),
(39, 7, 'Paracetine Syrup', 'paracetine.jpg', '10000', 'Obat ini dapat dikonsumsi 3-4 kali. Namun untuk pe'),
(40, 7, 'Sanmol', 'sanmol.jpg', '20000', 'Salah satu kandungan yang ada pada obat Sanmol ada'),
(41, 7, 'Tempra Syrup', 'tempra.jpg', '42950', 'Empra syrup diketahui dapat membantu meredakan dem'),
(42, 7, 'Termorex Sirup', 'termorex.jpg', '12000', 'Obat ini dapat digunakan oleh anak berusia 0-12 ta'),
(43, 4, 'Woods', '', '13900', 'Obat batuk kering'),
(44, 4, 'Siladex', 'siladex.jpg', '20000', 'batuk berdahak saluran pernapasan ikut terganggu.'),
(45, 4, 'OBH', 'obh.jpg', '50000', 'dengan rasa menthol dan jahe yang melegakan tenggo'),
(46, 4, 'Takabb', 'takkab.jpg', '60000', 'Obat batuk Takabb merupakan obat batuk berbentul p'),
(47, 4, 'Konidin', 'konidin.jpg', '11500', 'Obat batuk yang satu ini dapat mengobati batuk ber'),
(48, 4, 'Komix', 'komix.jpg', '10000', 'Komix berfungsi untuk meredakan batuk dengan menek'),
(49, 4, 'Vicks', 'vicks.jpg', '18000', 'Obat ini juga mampu memberikan rasa hangat hingga '),
(50, 4, 'Laserin', 'laserin.jpg', '15000', 'Laserin tergolong ke dalam obat batuk herbal karen'),
(51, 4, 'Hufagrip', 'hufagrip.jpg', '27000', 'Obat batuk anak terbaik yang dapat kalian coba ada'),
(52, 4, 'Cap Ibu dan Anak', 'ibuanak.jpg', '50000', 'Serupa dengan Laserin, obat batuk cap Ibu dan Anak'),
(53, 4, 'Hufagrip', 'hufagrip.jpg', '27000', 'Obat batuk anak terbaik yang dapat kalian coba ada'),
(60, 4, 'Woods', 'Woods.jpg', '10000', 'obat panas'),
(61, 8, 'Vitacimin', '3_-Holisticare-Ester-C-420x420.jpg', '2000', 'Vitamin penambah vitamin c'),
(62, 4, 'Woods solusi batuk', 'Woods.jpg', '10000', 'obat panas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID_ACCOUNT`),
  ADD UNIQUE KEY `ACCOUNT_PK` (`ID_ACCOUNT`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_CATEGORY`),
  ADD UNIQUE KEY `CATEGORY_PK` (`ID_CATEGORY`);

--
-- Indeks untuk tabel `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`ID_MEDICINE`),
  ADD UNIQUE KEY `MEDICINE_PK` (`ID_MEDICINE`),
  ADD KEY `RELATIONSHIP_2_FK` (`ID_CATEGORY`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `account`
--
ALTER TABLE `account`
  MODIFY `ID_ACCOUNT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `ID_CATEGORY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `medicine`
--
ALTER TABLE `medicine`
  MODIFY `ID_MEDICINE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`ID_CATEGORY`) REFERENCES `category` (`ID_CATEGORY`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
