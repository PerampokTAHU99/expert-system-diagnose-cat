-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 01:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnose_cat`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id_diagnose` int(5) NOT NULL,
  `date` date NOT NULL,
  `diagnosticResult` text NOT NULL,
  `id_disease` int(4) NOT NULL,
  `id_symptom` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `idDisease` int(4) NOT NULL,
  `codeOfDisease` varchar(5) NOT NULL,
  `nameOfDisease` varchar(30) NOT NULL,
  `latinNameOfDisease` varchar(40) NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `precaution` text NOT NULL,
  `solution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`idDisease`, `codeOfDisease`, `nameOfDisease`, `latinNameOfDisease`, `picture`, `description`, `precaution`, `solution`) VALUES
(1001, 'P01', 'Cacingan', 'Helminthiasis', NULL, 'Penyakit ini disebut Helminthiasis atau kecacingan. Pada umumnya, kucing dapat terinfeksi lebih dari satu jenis cacing parasit pada waktu yang sama dan juga dapat ditularkan ke manusia,ada umumnya, kucing yang mengalami helminthiasis akan memiliki perut buncit, membran nictitans (selaput mata) terlihat, kurus, rambut rontok dan kusam, tidak selera makan, diare (feses coklat-kuning pasta dengan bau menyengat dan berdarah), lemas hingga kematian jika telah terinfeksi berat. Selain itu, gejala spesifik yang dapat diamati adalah ditemukannya segmen cacing pada feses kucing.', 'Berikut beberapa langkah pencegahan yang dapat dilakukan untuk meminimalisir risiko terjadinya infeksi endoparasit ini.  1. Membersihkan kandang kucing setiap hari, meliputi seluruh peralatannya seperti tempat makan, litter box, tempat tidur, dan lainnya.  2. Memandikan kucing seperlunya saja, tidak kurang dari 2 minggu sekali. Hal ini karena kucing berisiko dapat menelan telur cacing saat dimandikan.  3. Mengurangi frekuensi kucing bermain di luar rumah.  4. Mengatur pakan yang sesuai dan terjamin kebersihannya.', 'Setelah benar-benar memastikan bahwa kucing Anda mengalami penyakit kecacingan atau helminthiasis, maka langkah terbaik yang dapat dilakukan yaitu membawa kucing kesayangan Anda ke dokter hewan. Dokter hewan akan memeriksa lebih lanjut jenis parasit cacing yang menginfeksi kucing serta pengobatan yang tepat dan sesuai dengan kondisi kucing anda.'),
(1002, 'P02', 'Kudis', 'Skabies', NULL, 'Scabies atau kudis merupakan penyakit kulit menular yang bisa dialami oleh manusia serta hewan, termasuk hewan berbulu seperti kucing. Sedangkan scabies kucing merupakan kudis pada kucing yang disebabkan oleh parasit yang disebut dengan Notoedres cati dan Sarcoptes scabiei, Sarcoptes scabiei merupakan parasit dari keluarga Sarcoptidae. Parasit jenis ini akan masuk ke dalam kulit kucing dan kemudian menjadi scabies. Induk Sarcoptes scabiei biasanya akan bertelur di bawah kulit menyebabkan kucing menjadi gatal, hingga akhirnya muncul scabies kucing di area telinga, Sedangkan Notoedres cati merupakan parasit dari sarcoptiformes family. Jenis parasit ini hampir sama dengan Sarcoptes scabiei var canis yang menyebabkan scabies pada anjing. Bedanya, jenis parasit ini lebih kecil, telurnya bulat dan anus punggung. Ukurannya begitu kecil, sehingga hanya bisa terlihat menggunakan mikroskop.Scabies kucing menyebabkan kucing merasa sangat gatal. Biasanya, gatalnya menyerang area kepala terutama sekitar telinga. Pada kucing, penyakit ini bisa menimbulkan rasa tidak nyaman, gatal-gatal, iritasi kulit, bahkan kulit berkerak.Scabies kucing dapat ditularkan melalui kontak fisik dengan hewan berbulu lain yang terkena scabies, atau kontak dengan barang-barang yang terdapat tungau Sarcoptes scabiei dan Notoedres cati.Scabies kucing umumnya lebih banyak menular pada sesama kucing. Namun, terkadang scabies dari kucing juga bisa menular pada manusia. Penularan ini biasanya juga bisa disebabkan oleh kutu atau tungau dari kucing.\r\n', 'Scabies kucing memiliki beberapa gejala umum. Apabila kucing peliharaan Anda menunjukkan gejala berikut, sudah bisa dipastikan ia terkena scabies kucing.\r\n1. Kucing sering menjilat, menggigit, atau menggaruk area tubuh yang terkena tungau.\r\n2. Area tubuh yang sering digaruk karena adanya tungau, dapat menyebabkan kerontokan bulu kucing.\r\n3. Terlihat bercak bersisik pada kulit, luka, atau koreng.\r\n4. Tungau telinga biasanya membuat kucing sering menggelengkan kepala atau meletakkan telinga pada lantai.\r\n5. Tungau telinga juga sering menyebabkan kotoran dan residu tungau menumpuk di bagian telinga.\r\n6. Bulu kucing menjadi rontok atau pitak.\r\n7. Kulit kucing menjadi kemerahan dan mengalami iritasi dan kemerahan.\r\n8. Kulit kucing berkerak atau berkerut, terutama pada area telinga.', 'Usai mengenal apa itu scabies kucing, jenis-jenisnya serta gejalanya. Maka selanjutnya adalah mengetahui cara penanganannya. Jika gejala yang disebutkan sebelumnya muncul di kucing Anda, tidak perlu panik karena dokter hewan akan mengatasinya, Hal pertama yang harus dilakukan saat kucing terkena scabies adalah dengan segera membawa ke dokter. Dengan membawanya ke dokter akan mencegah mencegah penularan tungau ke hewan peliharaan lain yang ada di rumah, Ketika kucing dibawa ke klinik, dokter hewan akan melakukan pemeriksaan terlebih dahulu. biasanya  dokter akan mengambil bagian di area yang terkena dan melihatnya menggunakan mikroskop untuk memastikan bahwa benar ini adalah tungau atau scabies, Setelah diperiksa, dokter akan meresepkan obat untuk membantu proses penyembuhan kucing peliharaan Anda. Adapun obat yang bisa digunakan adalah obat kutu dan heartworm. Selain itu, dokter juga akan menyarankan sampo khusus dan obat penenang untuk membuat kucing lebih rileks, Selain itu dalam masa penyembuhan, kucing peliharaan yang terkena scabies kucing sebaiknya dipisahkan dari hewan peliharaan lainnya agar bisa terlindungi. Terakhir, Anda harus segera membersihkan tempat-tempat yang sering disinggahi dan disentuh kucing. Hal ini agar tungau bisa hilang dan tidak hinggap ke hewan peliharaan lain.'),
(1003, 'P03', 'Pijal, kutu, caplak', 'Ektoparasit', NULL, 'Kucing yang dipelihara maupun tidak dipelihara dapat terserang oleh ektoparasit. Infestasi ektoparasit pada kucing merupakan infeksi yang disebabkan oleh parasit yang hidup diluar tubuh inang. Ektoparasit yang sering menginfestasi kucing yaitu kutu, tungau, dan pinjal. Spesies ektoparasit yang menginfestasi kucing yaitu kutu Felicola subrostatus, pinjal Ctenocephalides felis, tungau Otodectes cynotis dan Sarcoptes scabei, Ektoparasit ini menimbulkan kesakitan dan ketidaknyaman serta gejala klinis yang khas dari infestasi ektoparasit tersebut Jenis ektoparasit yang paling banyak menginfeksi kucing adalah pinjal (Ctenocephalides felis) yang ditemukan pada karnivora di seluruh dunia.', 'apabila kamu tidak ingin kucing peliharaanmu terpapar berbagai parasit, lakukan beberapa langkah pencegahan yang diperlukan.\r\n1. Tidak membiarkannya bermain di luar rumah tanpa pengawasa\r\n2. Tidak mempertemukan kucing peliharaan dengan kucing liar\r\n3. Sering membersihkan dan mendisinfeksi lingkungan sekitar\r\n4. Rutin memandikan atau Grooming kucing 5. Pemberian obat tetes kutu\r\n', 'Namun, untuk penggunaan  obat ini harus dikonsultasikan dengan dokter hewan karena ada tata cara penggunaan dan dosis yang diperlukan\r\n'),
(1004, 'P04', 'Koksidiosis', 'Koksidiosis', NULL, 'Koksidia merupakan infeksi protozoa yakni jenis coccidia yang menginvasi saluran intestinal pada anjing dan kucing. Jenis Coccidia yang menyerang anjing yakni Isospora canis sedangkan pada kucing yakni Isospora felis. Hewan yang terinfeksi coccidiosis akan menunjukkan gejala klinis yakni seperti diare, muntah, dehidrasi, inappetide, berat badan menurun dan pada kasusparah dapat menyebabkan kematian.', 'Kebersihan merupakan tindakan paling penting untuk mencegah infeksi parasit pada anjing dan kucing. Tinja harus dibuang dari jalan-jalan, kandang dan halaman untuk latihan anjing tiap-tiap hari secara teratur. Bila mungkin semua itu harus berlantai beton. Kandang dan sebagainya harus diatur sedemikian rupa sehingga tiap-tiap bagian terkena sinar matahari langsung meskipun hanya sebentar, karena sinar matahari akan membunuh telur, larva, atau ookista bila semua itu tidak tertutup oleh debu, tinja atau tumbuh-tumbuhan pelindung. Pakan dan minum dicegah terkontaminasi dari tinja.\r\n', 'Pengobatan yang diberikan berupa obat antibiotik dan antiparasit (metronidazole), antidiare, dan obat cacing sesuai dosis dan anjuran oleh dokter.'),
(1005, 'P05', 'Radang Tenggorokan', 'Feline Viral Rhinotracheitis', NULL, 'Penyakit ini disebabkan oleh virus herpes dan dapat menyebabkan permasalahan pada saluran nafas bagian atas. Masa inkubasi yaitu masa dari masuknya virus sampai timbulnya gejala berkisar antara 3-5 hari.\r\n\r\nKucing dari segala usia berpotensi terinfeksi tetapi lebih beresiko pada anak kucing. Induk kucing yang bunting dan kucing dengan kekebalan tubuh jelek juga mempunyai resiko tinggi tertular Feline Rhinotracheitis.\r\n', 'Penyebab kucing terserang penyakit ini adalah populasi kucing yang terlalu padat di dalam rumah, Ventilasi dan sanitasi yang buruk, Nutrisi yang kurang, dan Stres\r\n\r\nJadi harus diperhatikan tempat dan lingkungan untuk si kucing.\r\n', 'Dokter hewan biasanya akan melakukan berbagai tindakan untuk menyembuhkan penyakit ini secara menyeluruh. Pertama, perbaikan nutrisi agar tidak dehidrasi termasuk dengan infus jika diperlukan. Kedua, pemberian antibiotik untuk mencegah infeksi sekunder dari bakteri. Ketiga, pemberian obat untuk pernafasan dan mata.\r\n\r\nKesembuhan kucing sangat bergantung pada kekebalan tubuh, nutrisi yang baik, dan cairan tubuh yang terjaga, biasanya akan membaik dalam waktu tujuh hingga sepuluh hari.\r\n\r\nSatu-satunya pencegahan terhadap Feline Rhinotracheitis adalah dengan vaksin tricat atau tetracat.'),
(1006, 'P06', 'Pernafasan', 'Feline Calicivirus', NULL, 'Feline Calicivirus adalah suatu penyakit yang disebabkan oleh virus dari famili caliciviridae. Virus calici ini merupakan salah satu dari jenis cat flu yang paling sering menyerang kucing selain herpes virus (FHV).Virus ini dapat masuk ke dalam tubuh melalui mata, hidung (pernafasan) dan mulut. Karena partikel virus yang sangat kecil dan mudah menempel pada sembarang tempat, seperti lantai, tempat tidur kucing, makanan, air minum, dan bahkan baju atau tangan manusia yang tidak steril, maka penularan dapat sangat cepat terjadi. Masa inkubasi dari virus ini relatif cepat yaitu 2 – 4 hari.Saat virus calici ini sudah masuk ke dalam tubuh, maka selanjutnya virus ini akan memperbanyak diri (replikasi) pada sel epitel di saluran pernafasan, conjunctiva, lidah dan pnemuosit alveoli paru-paru.', 'Pencegahan terbaik untuk menghindari terjadinya infeksi virus ini adalah dengan melakukan vaksinasi secara rutin. Umumnya vaksin untuk virus calici ini tidak sendiri, melainkan vaksin gabungan dengan virus herpes.', 'Diagnosa untuk virus ini umumnya hanya berdasarkan gejala klinis saja. Untuk definitif diagnosa maka perlu dilakukan isolasi virus, yang dapat diambil dari sample air liur (saliva), swab hidung atau darah. Teknik PCR merupakan cara terbaik untuk mengetahui infeksi virus ini secara pasti.'),
(1007, 'P07', 'Parvo', 'Feline Panleukopenia', NULL, 'Feline panleukopeniavirus (FP) menyerang saluran pencernaan, sistem imun, hingga sistem saraf kucing,Sama seperti Feline herpesvirus (FHV), FP juga merupakan penyakit virus yang sangat menular antar kucing. Kitten atau anak kucing dan kucing yang tidak divaksinasi paling berisiko terkena penyakit FP, meski tidak menutup kemungkinan virus ini menginfeksi kucing dari segala usia. Kitten atau anak kucing dan kucing yang tidak divaksinasi paling berisiko terkena penyakit FP, meski tidak menutup kemungkinan virus ini menginfeksi kucing dari segala usia. Virus ini menginfeksi dan membunuh sel-sel dengan sangat cepat, seperti sel di sumsum tulang, usus, dan janin yang sedang berkembang.\r\n', 'Pencegahan agar kucing tidak terserang Feline panleukopenia virus adalah dengan melakukan vaksinasi. Kucing dapat diberikan vaksinasi pertama kali pada usia 9 minggu. Desinfeksi lingkungan juga perlu dilakukan untuk menghindari kejadian berulang karena virus dapat bertahan di lingkungan hingga 1 tahun.', 'Jika mengamati ada yang tidak beres dengan kucing di rumah, pisahkan dengan kucing lain, perhatikan perubahan lain yang kucing tunjukkan, agar lebih mudah untuk dijelaskan ke dokter hewan.\r\n'),
(1008, 'P08', 'Kutu Telinga', 'Ear Mite', NULL, 'Ear Mite adalah tungau telinga yang umum dialami kucing. Parasit ini menyukai kulit saluran kecil telinga kucing yang lembap dan hangat, bahkan menjalani sebagian besar siklus kehidupannya di sana.\r\n', 'Tindakan terbaik yang harus dilakukan jika melihat adanya tanda iritasi kulit pada kucing peliharaan adalah menghubungi dokter hewan. Dokter hewan akan merekomendasikan produk perawatan hewan yang dijual bebas seperti sampo atau anti-parasit untuk menghilangkan tungau.Mengobati tungau kucing harus dilakukan segera setelah melihat gejala awal. Hal ini untuk mencegah penularan dan masalah menjadi lebih serius. Cara terbaik untuk mengobati tungau kucing yang menyebabkan rambut rontok, yaitu dengan memandikan kucing dengan sampo khusus hewan peliharaan. ', 'Jika kucing tampak kesakitan selama proses pembersihan, segera hentikan dan bawa kucing ke dokter hewan. Dokter mungkin memberikan obat suntik tambahan jika diperlukan. Obat tetes telinga yang efektif mengandung piretrin atau selamectin, yang berbentuk obat tetes. Meskipun obat tungau telinga kucing dapat dibeli secara bebas, tapi obat yang diresepkan dokter hewan umumnya lebih efektif. \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(5) NOT NULL,
  `typeOfRole` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `typeOfRole`) VALUES
(4001, 'admin'),
(4002, 'doctor'),
(4003, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `idSymptom` int(4) NOT NULL,
  `codeOfSymptom` varchar(5) NOT NULL,
  `descOfSymptom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`idSymptom`, `codeOfSymptom`, `descOfSymptom`) VALUES
(3001, 'G01', 'Tidak mau makan'),
(3002, 'G02', 'Batuk'),
(3003, 'G03', 'Bulu rontok'),
(3004, 'G04', 'Dehidrasi'),
(3005, 'G05', 'Kurus'),
(3006, 'G06', 'Diare disertai darah'),
(3007, 'G07', 'Gatal-gatal'),
(3008, 'G08', 'Anemia (gusi putih)'),
(3009, 'G09', 'Keluar air liur'),
(3010, 'G10', 'Diare disertai cacing'),
(3011, 'G11', 'Demam'),
(3012, 'G12', 'Dipegang telinga kesakitan'),
(3013, 'G13', 'Flu'),
(3014, 'G14', 'Bersin-bersin'),
(3015, 'G15', 'Jaringan kulit rontok'),
(3016, 'G16', 'Bengkak mata'),
(3017, 'G17', 'Keluar air mata (epifora)'),
(3018, 'G18', 'Kemerahan pada kulit'),
(3019, 'G19', 'Kerusakan selaput lendir mata'),
(3020, 'G20', 'Berbau busuk pada telinga'),
(3021, 'G21', 'Leleran hidung keruh (kental seperti nanah)'),
(3022, 'G22', 'Lemah'),
(3023, 'G23', 'Lesu'),
(3024, 'G24', 'Luka keropeng'),
(3025, 'G25', 'Luka pada mulut'),
(3026, 'G26', 'Luka pada telinga'),
(3027, 'G27', 'Menggelengkan kepala'),
(3028, 'G28', 'Muntah'),
(3029, 'G29', 'Muntah diserta cacing'),
(3030, 'G30', 'Nafas lewat mulut'),
(3031, 'G31', 'Saluran nafas tertutup lendir (ingusan)'),
(3032, 'G32', 'Sesak nafas'),
(3033, 'G33', 'Telinga selalu kotor'),
(3034, 'G34', 'Bau mulut busuk'),
(3035, 'G35', 'Tidak tenang'),
(3039, 'asa', 'aba'),
(3040, 'as', 'as'),
(3041, 'as', 'as'),
(3042, 's', 'ss'),
(3043, 'G40', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `roleId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `username`, `email`, `password`, `roleId`) VALUES
(5001, 'admin', 'admin', 'admin@gmail.com', 'admin', 4001),
(5007, 'padi', 'padi', 'pakpadioye@gmail.com', 'asd', 4001),
(5013, 'Heru Gunawan, S.KH', 'herguns', 'heru@gmail.com', 'hers', 4002),
(5017, 'Hendra Wijaya', 'hendw', 'Hendraw@gmail.com', 'hendra', 4003),
(5018, 'reynaldi', 'deden', 'reynaldi@gmail.com', 'dens', 4001),
(5019, 'Wildan Friana, S.KH', 'emo', 'emo@ymail.com', 'yatim', 4002),
(5021, 'Rosidah ', 'rosi', 'rosi@ymail.com', 'ros123', 4003),
(5025, 'test', 'test', 'test@gmail.com', 'test', 4003),
(5028, '', '', 'user', 'user', 4003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id_diagnose`),
  ADD KEY `id_disease` (`id_disease`),
  ADD KEY `id_symptom` (`id_symptom`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`idDisease`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`idSymptom`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id_diagnose` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `idDisease` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4004;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `idSymptom` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3044;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5036;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_ibfk_1` FOREIGN KEY (`id_disease`) REFERENCES `diseases` (`idDisease`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnoses_ibfk_2` FOREIGN KEY (`id_symptom`) REFERENCES `symptoms` (`idSymptom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
