-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2025 at 05:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `templateopd1`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasis`
--

CREATE TABLE `aplikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aplikasis`
--

INSERT INTO `aplikasis` (`id`, `nama`, `link`, `created_at`, `updated_at`) VALUES
(1, 'MANTAP', 'https://dlhkp.papuaselatan.go.id/', '2025-10-21 14:42:51', '2025-10-21 14:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_sampul` varchar(255) DEFAULT NULL,
  `foto_berita` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto_berita`)),
  `tanggal` date DEFAULT NULL,
  `unggulan` tinyint(1) NOT NULL DEFAULT 0,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `deskripsi`, `foto_sampul`, `foto_berita`, `tanggal`, `unggulan`, `kategori_id`, `created_at`, `updated_at`) VALUES
(13, 'BSSN Gelar Bimtek Penyelenggaraan Urusan Persandian di Papua Selatan', '<p><strong>Merauke, 16 Oktober 2025</strong>&nbsp;&mdash; Badan Siber dan Sandi Negara (BSSN) melalui Direktorat Persandian untuk Pemerintah Daerah (D32) melaksanakan&nbsp;<strong>Bimbingan Teknis (Bimtek) Penyelenggaraan Urusan Persandian</strong>&nbsp;pada tanggal&nbsp;<strong>15&ndash;16 Oktober 2025</strong>&nbsp;di&nbsp;<strong>Provinsi Papua Selatan</strong>.</p>\r\n\r\n<p>Kegiatan ini diikuti oleh perwakilan dari&nbsp;<strong>Diskominfo Provinsi Papua Selatan</strong>,&nbsp;<strong>Kabupaten Merauke</strong>,&nbsp;<strong>Kabupaten Mappi</strong>,&nbsp;<strong>Kabupaten Asmat</strong>, dan&nbsp;<strong>Kabupaten Boven Digoel</strong>. Pelaksanaan kegiatan ini berdasarkan&nbsp;<strong>Surat Perintah Nomor 4212 tanggal 11 September 2025</strong>.</p>\r\n\r\n<p>Bimtek ini bertujuan untuk meningkatkan pemahaman dan kemampuan teknis pemerintah daerah dalam bidang persandian dan keamanan siber, khususnya:</p>\r\n\r\n<ol>\r\n	<li>Optimalisasi penggunaan&nbsp;<strong>tanda tangan elektronik (TTE)</strong>&nbsp;dari BSrE.</li>\r\n	<li>Peningkatan kesadaran dan partisipasi dalam&nbsp;<strong>registrasi Tim Tanggap Insiden Siber (TTIS)</strong>&nbsp;ke NATCSIRT BSSN.</li>\r\n	<li>Penyusunan&nbsp;<strong>profil Pemda</strong>&nbsp;sebagai peta faktual pembinaan pemerintah daerah.</li>\r\n	<li>Pengisian&nbsp;<strong>instrumen Indeks KAMI</strong>&nbsp;untuk evaluasi keamanan informasi.</li>\r\n	<li>Peningkatan kemampuan teknis dalam&nbsp;<strong>instalasi sistem keamanan Wazuh</strong>.</li>\r\n</ol>\r\n\r\n<h4><strong>Rangkaian Kegiatan</strong></h4>\r\n\r\n<p>Pada&nbsp;<strong>15 Oktober 2025</strong>, kegiatan diawali dengan sesi&nbsp;<strong>optimalisasi penggunaan TTE BSrE</strong>&nbsp;oleh&nbsp;<strong>Herlan</strong>&nbsp;secara daring, dilanjutkan dengan penyampaian maksud kegiatan dan arahan oleh&nbsp;<strong>Marcelina</strong>, yang juga menekankan pentingnya registrasi TTIS ke NATCSIRT BSSN.<br />\r\nSelanjutnya,&nbsp;<strong>Kartika Wibowo</strong>&nbsp;memaparkan materi tentang&nbsp;<strong>penyusunan profil Pemda</strong>, dan&nbsp;<strong>Rindu Alifa</strong>&nbsp;memberikan bimbingan teknis mengenai&nbsp;<strong>pengisian instrumen Indeks KAMI</strong>.</p>\r\n\r\n<p>Keesokan harinya,&nbsp;<strong>16 Oktober 2025</strong>, kegiatan difokuskan pada&nbsp;<strong>bimbingan teknis instalasi Wazuh</strong>&nbsp;untuk Diskominfo Provinsi Papua Selatan.</p>\r\n\r\n<h4><strong>Tindak Lanjut</strong></h4>\r\n\r\n<p>Sebagai hasil kegiatan, pemerintah daerah diharapkan:</p>\r\n\r\n<ol>\r\n	<li>Segera melakukan&nbsp;<strong>registrasi TTIS</strong>&nbsp;ke NATCSIRT BSSN.</li>\r\n	<li>Mengisi&nbsp;<strong>survei penyusunan profil keamanan siber daerah</strong>&nbsp;yang akan menjadi dasar pembinaan BSSN tahun 2026&ndash;2029.</li>\r\n	<li>Menyelesaikan&nbsp;<strong>pengisian instrumen Indeks KAMI</strong>&nbsp;dengan benar dan tepat waktu.</li>\r\n</ol>\r\n\r\n<p>Kegiatan ini diakhiri dengan harapan agar seluruh pemerintah daerah di Papua Selatan dapat semakin siap dalam menghadapi tantangan keamanan siber daerah.</p>\r\n\r\n<p>Personel D32 yang terlibat dalam kegiatan ini adalah&nbsp;<strong>Marcelina</strong>,&nbsp;<strong>Rindu Alifa</strong>, dan&nbsp;<strong>Kartika Wibowo</strong>.</p>', 'berita/NCdeJXJKl5wQ9l1CcVQSxGbc2bOWJ1L7YgMzYyPX.jpg', '[]', '2025-12-06', 0, 9, '2025-12-06 00:27:01', '2025-12-06 00:27:01'),
(14, '“PESONA DIGITAL”: Wujudkan Papua Selatan Terhubung, Aman, dan Cerdas Berbasis Data', '<p><strong>Merauke, Oktober 2025</strong>&nbsp;&mdash; Transformasi digital di Papua Selatan kini melangkah semakin pasti!<br />\r\nDinas Komunikasi, Informatika, Statistik, dan Persandian Provinsi Papua Selatan resmi menggulirkan proyek perubahan bertajuk&nbsp;<strong>PESONA DIGITAL (Papua Selatan Terhubung, Aman, dan Cerdas Berbasis Data)</strong>&nbsp;&mdash; sebuah langkah besar menuju era pemerintahan dan layanan publik yang serba digital dan terintegrasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Dari Rancangan ke Aksi Nyata</h3>\r\n\r\n<p>Program ini lahir dari semangat untuk menghubungkan seluruh kampung di Papua Selatan melalui sistem informasi terpadu.<br />\r\nTahap awal dimulai dengan&nbsp;<strong>melaporkan hasil rancangan ke mentor</strong>, dilanjutkan&nbsp;<strong>rapat koordinasi internal</strong>, lalu&nbsp;<strong>pembentukan tim kerja lintas bidang</strong>&nbsp;yang siap tancap gas menjalankan misi digitalisasi daerah.</p>\r\n\r\n<blockquote>\r\n<p>&ldquo;Kami ingin memastikan Papua Selatan tidak hanya ikut arus digitalisasi, tapi menjadi pelopor dalam tata kelola data daerah yang transparan, aman, dan bermanfaat bagi masyarakat,&rdquo; ujar&nbsp;<strong>Nugroho Asrianto, ST., M.Si</strong>, Kepala Dinas Kominfo sekaligus Project Leader PESONA DIGITAL.</p>\r\n</blockquote>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Membangun Pondasi Digital Papua Selatan</h3>\r\n\r\n<p>Dalam tahap pelaksanaan, tim Kominfo Papua Selatan berhasil menyusun berbagai dokumen penting &mdash; mulai dari&nbsp;<strong>draft Peraturan Gubernur (PERGUB)</strong>&nbsp;tentang penyelenggaraan sistem informasi terpadu,&nbsp;<strong>SOP pengumpulan data</strong>,&nbsp;<strong>bisnis proses aplikasi</strong>, hingga&nbsp;<strong>dokumen kerja sama (MoU)</strong>&nbsp;dengan sekolah dan kampus.</p>\r\n\r\n<p>Tidak berhenti di situ, tim juga tengah&nbsp;<strong>membangun aplikasi &ldquo;PESONA DIGITAL&rdquo;</strong>&nbsp;yang nantinya akan menjadi &ldquo;rumah data&rdquo; bagi seluruh kampung, OPD, dan pelaku UMKM di Papua Selatan. Aplikasi ini memungkinkan publik mengakses data tematik daerah &mdash; mulai dari potensi wisata, UMKM, hingga profil kampung &mdash; secara cepat dan aman.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Uji Coba dan Evaluasi</h3>\r\n\r\n<p>Sebelum diluncurkan secara penuh, aplikasi&nbsp;<strong>PESONA DIGITAL</strong>&nbsp;akan melalui tahap&nbsp;<strong>uji coba lapangan</strong>&nbsp;di beberapa lokasi.<br />\r\nHasil dan masukan dari uji coba ini akan menjadi bahan evaluasi untuk penyempurnaan sistem dan pembuatan laporan akhir proyek perubahan.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Kolaborasi Jadi Kunci</h3>\r\n\r\n<p>Keberhasilan program ini tak lepas dari dukungan berbagai pihak &mdash; mulai dari mentor proyek,&nbsp;<strong>Drs. Ferdinandus Kainakaimu, S.Pd., M.Sc.</strong>, hingga perguruan tinggi, komunitas digital, dan masyarakat kampung.</p>\r\n\r\n<blockquote>\r\n<p>&ldquo;Digitalisasi bukan hanya soal teknologi, tapi soal kolaborasi. Kami ingin masyarakat Papua Selatan merasakan manfaat langsung dari konektivitas digital ini,&rdquo; tambah Nugroho.</p>\r\n</blockquote>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;Menuju Papua Selatan Cerdas Digital</h3>\r\n\r\n<p>PESONA DIGITAL bukan sekadar proyek, tapi langkah nyata membangun ekosistem digital yang inklusif &mdash; di mana data, layanan publik, dan masyarakat saling terhubung dalam satu sistem yang aman dan berdaya guna.</p>\r\n\r\n<p>Dengan semangat&nbsp;<em>Papua Selatan Terhubung, Aman, dan Cerdas Berbasis Data</em>, Kominfo Papua Selatan berkomitmen menjadikan inovasi ini sebagai tonggak menuju pemerintahan modern dan masyarakat digital yang berdaya.</p>', 'berita/kRzw0dnYEm76JgELHJUXSTFAjhpthoPCIe8rziLo.png', '[]', '2025-12-06', 0, 9, '2025-12-06 00:27:50', '2025-12-06 00:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_kesatuan_bangsa`
--

CREATE TABLE `bidang_kesatuan_bangsa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_pokok` text NOT NULL,
  `fungsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_kesatuan_bangsa`
--

INSERT INTO `bidang_kesatuan_bangsa` (`id`, `tugas_pokok`, `fungsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Bidang Kesatuan Bangsa DISKOMINFOSTANDI Provinsi Papua Selatan</strong> mempunyai <strong>tugas pokok melaksanakan perumusan dan pelaksanaan kebijakan teknis di bidang informasi kesatuan bangsa, wawasan kebangsaan, ketahanan sosial, serta penguatan persatuan dan kesatuan masyarakat</strong> guna mendukung stabilitas daerah, harmonisasi sosial, dan keutuhan Negara Kesatuan Republik Indonesia.</p>', '<h2>1. Perumusan Kebijakan Teknis Informasi Kesatuan Bangsa</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyusunan kebijakan teknis pengelolaan informasi di bidang kesatuan bangsa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perencanaan program komunikasi publik terkait wawasan kebangsaan dan persatuan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyelarasan kebijakan dengan RPJMD, kebijakan nasional, dan prioritas pembangunan daerah.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2. Pengelolaan Informasi Wawasan Kebangsaan</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengumpulan, pengolahan, dan penyajian informasi tentang nilai-nilai Pancasila, Bhinneka Tunggal Ika, dan NKRI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyebarluasan informasi kebangsaan untuk memperkuat rasa cinta tanah air dan nasionalisme masyarakat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Edukasi publik tentang toleransi, keberagaman, dan persaudaraan sosial.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3. Penguatan Persatuan dan Kerukunan Masyarakat</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Diseminasi informasi untuk menjaga kerukunan antar umat beragama, suku, budaya, dan golongan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan komunikasi dalam pencegahan konflik sosial berbasis isu SARA.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan kohesivitas sosial dalam kehidupan bermasyarakat.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>4. Dukungan Informasi Ketahanan Sosial dan Stabilitas Daerah</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyediaan informasi yang mendukung stabilitas keamanan dan ketentraman daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyebarluasan informasi tentang upaya pencegahan radikalisme, ekstremisme, dan disintegrasi bangsa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan komunikasi publik dalam penanganan potensi gangguan ketertiban umum.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>5. Pengelolaan Media Informasi Kesatuan Bangsa</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan konten kebangsaan pada website resmi, media sosial, dan media publikasi daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Produksi materi kampanye persatuan, toleransi, dan kebhinekaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dokumentasi kegiatan penguatan kesatuan bangsa.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>6. Koordinasi Lintas Sektor Bidang Kesatuan Bangsa</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Koordinasi dengan Kesbangpol, TNI/Polri, tokoh adat, tokoh agama, dan organisasi kemasyarakatan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sinkronisasi data dan informasi terkait persatuan, ketahanan sosial, dan stabilitas daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan komunikasi pada kegiatan strategis penguatan kesatuan bangsa.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>7. Monitoring, Evaluasi, dan Pelaporan</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Monitoring pelaksanaan program dan kegiatan Bidang Kesatuan Bangsa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Evaluasi efektivitas penyebarluasan informasi kebangsaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan kinerja secara berkala dan terukur.</p>\r\n	</li>\r\n</ul>', '2025-12-06 00:18:00', '2025-12-06 00:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_politik`
--

CREATE TABLE `bidang_politik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_pokok` text NOT NULL,
  `fungsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_politik`
--

INSERT INTO `bidang_politik` (`id`, `tugas_pokok`, `fungsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Bidang Politik DISKOMINFOSTANDI Provinsi Papua Selatan</strong> mempunyai <strong>tugas pokok melaksanakan perumusan dan pelaksanaan kebijakan teknis, pengelolaan informasi politik pemerintahan, komunikasi publik kebijakan daerah, serta penguatan partisipasi masyarakat</strong> guna mendukung stabilitas politik, iklim demokrasi yang sehat, dan tata kelola pemerintahan yang transparan.</p>', '<h2>1. Perumusan Kebijakan Teknis Informasi Politik</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyusunan kebijakan teknis di bidang pengelolaan informasi politik pemerintahan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perencanaan program komunikasi politik pemerintah daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyelarasan kebijakan informasi politik dengan arah pembangunan daerah, RPJMD, dan kebijakan nasional.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2. Pengelolaan Informasi Politik dan Kebijakan Pemerintah</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengumpulan, pengolahan, dan penyebarluasan informasi terkait kebijakan strategis pemerintah daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyajian informasi politik yang edukatif, objektif, dan bertanggung jawab kepada masyarakat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengelolaan isu-isu strategis daerah di bidang politik dan pemerintahan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3. Diseminasi Informasi Demokrasi dan Partisipasi Publik</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sosialisasi kebijakan daerah melalui media komunikasi pemerintah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Edukasi politik kepada masyarakat untuk meningkatkan kesadaran demokrasi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan partisipasi publik dalam proses perencanaan, pelaksanaan, dan pengawasan pembangunan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>4. Pengelolaan Opini Publik dan Kehumasan Politik Pemerintahan</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pemantauan opini publik terhadap kebijakan pemerintah daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengelolaan komunikasi pemerintah dalam merespons isu-isu politik strategis.</p>\r\n	</li>\r\n	<li>\r\n	<p>Koordinasi klarifikasi informasi guna mencegah disinformasi, hoaks, dan konflik sosial.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>5. Dukungan Stabilitas Politik dan Ketentraman Daerah</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyediaan informasi yang kondusif untuk menjaga stabilitas politik daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan informasi dalam upaya peningkatan keamanan, ketertiban, dan ketentraman masyarakat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan kohesivitas sosial dan harmonisasi dalam kehidupan bermasyarakat.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>6. Pengelolaan Media Komunikasi Politik Pemerintah</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan konten politik pemerintahan pada website resmi, media sosial, dan media publikasi daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Produksi konten komunikasi kebijakan kepala daerah dan perangkat daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyebarluasan informasi aktivitas pemerintahan di bidang politik dan pemerintahan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>7. Koordinasi Lintas Sektor Bidang Politik dan Komunikasi</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Koordinasi dengan perangkat daerah terkait, KPU, Bawaslu, Kesbangpol, dan instansi vertikal lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sinkronisasi data dan informasi politik pemerintahan lintas sektor.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan komunikasi pada pelaksanaan agenda politik daerah secara damai dan demokratis.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>8. Monitoring, Evaluasi, dan Pelaporan</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Monitoring pelaksanaan program dan kegiatan Bidang Politik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Evaluasi efektivitas komunikasi politik pemerintah daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan pelaksanaan kegiatan secara berkala dan terukur.</p>\r\n	</li>\r\n</ul>', '2025-12-06 00:17:17', '2025-12-06 00:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri_foto`
--

INSERT INTO `galeri_foto` (`id`, `deskripsi`, `image`, `tanggal`, `created_at`, `updated_at`) VALUES
(12, '<p>Foto Staff Diskominfostandi Provinsi Papua Selatan</p>', 'galeri-foto/rVgNGWL71McCqa0YR2L2Oofq7QObRbpfZrRML25M.jpg', '2025-12-06', '2025-12-06 00:32:00', '2025-12-06 00:32:46'),
(13, '<p>Perpisahan Mahasiswa Magang Fahreza</p>', 'galeri-foto/iD9G6q9YYxgeLklF1Zxcu5gx4JPXieTnxiYocA5c.jpg', '2025-11-30', '2025-12-06 00:34:56', '2025-12-06 00:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri_video`
--

INSERT INTO `galeri_video` (`id`, `youtube_link`, `created_at`, `updated_at`) VALUES
(14, 'https://youtu.be/8zhyYPFmJF0?si=NNC-WFyE4qhx9Igb', '2025-12-06 00:29:34', '2025-12-06 00:29:34'),
(15, 'https://youtu.be/3xqEi6d9mKI?si=x1z7v39BeoySJc7O', '2025-12-06 00:29:49', '2025-12-06 00:29:49'),
(16, 'https://youtu.be/0zauRLxmoKs?si=36anFiT9z414c1mx', '2025-12-06 00:30:10', '2025-12-06 00:30:10'),
(18, 'https://youtu.be/W0GhDFkitJo?si=SfkZkFq61D_s-pJF', '2025-12-06 00:30:48', '2025-12-06 00:30:48'),
(19, 'https://youtu.be/-WJ-u4a-mPk?si=qcGZz-2xo_9sd1sP', '2025-12-06 00:31:10', '2025-12-06 00:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `icon`, `created_at`, `updated_at`) VALUES
(9, 'Digital', 'digital', 'fa-solid fa-chart-line', '2025-12-06 00:26:37', '2025-12-06 00:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maps_iframe` longtext NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'logo/ar8Rqoi80aBulmtOPbeSBlkkSO3O1Aw8KAOwS7pq.png', '2025-12-05 23:14:39', '2025-12-05 23:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000000_create_users_table', 2),
(5, '2025_10_13_224616_create_sambutan_table', 3),
(7, '2025_10_14_055358_create_profil_opd_table', 4),
(8, '2025_10_16_002738_create_tupoksi_table', 5),
(9, '2025_10_16_012950_create_struktur_organisasi_table', 6),
(10, '2025_10_16_044437_create_sekretariat_table', 7),
(11, '2025_10_16_051416_create_bidang_politik_table', 8),
(12, '2025_10_16_054111_create_bidang_kesatuan_bangsa_table', 9),
(13, '2025_10_16_234637_create_produk_hukum_table', 10),
(14, '2025_10_17_014041_create_program_kegiatan_table', 11),
(15, '2025_10_17_051927_create_kontak_table', 12),
(16, '2025_10_17_062143_create_kategori_table', 13),
(18, '2025_10_19_234329_create_berita_table', 14),
(20, '2025_10_20_023041_create_galeri_video_table', 15),
(22, '2025_10_20_022421_create_galeri_foto_table', 16),
(25, '2025_10_21_003918_create_sampuls_table', 17),
(26, '2025_10_21_232607_create_aplikasis_table', 18),
(27, '2025_10_21_235320_create_logo_table', 19),
(28, '2025_10_22_003218_create_sosmeds_table', 20),
(29, '2025_10_22_230436_add_gmail_to_users_table', 21),
(31, '2025_10_22_232948_add_otp_columns_to_users_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk_hukum`
--

CREATE TABLE `produk_hukum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penulis` text NOT NULL,
  `nomor` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk_hukum`
--

INSERT INTO `produk_hukum` (`id`, `penulis`, `nomor`, `tahun`, `nama_file`, `kategori`, `tanggal`, `file`, `created_at`, `updated_at`) VALUES
(11, 'Fahreza', 1, 2025, 'Petunjuk Teknis Persandian Daerah 2025.pdf', 'Pedoman Tekni', '2025-11-25', 'produk-hukum/SFQiWMTLWjgkMVRJgccsRrg1bzsMJAYFb1dpd1NT.docx', '2025-12-06 00:21:35', '2025-12-06 00:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `profil_opd`
--

CREATE TABLE `profil_opd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_opd` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profil_opd`
--

INSERT INTO `profil_opd` (`id`, `nama_opd`, `deskripsi`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dinas Komunikasi, Informatika, Statistik dan Persandian Provinsi Papua Selatan', '<p style=\"margin-left:47px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Dinas Komunikasi, Informatika, Statistik dan Persandian (DISKOMINFOSTANDI) Provinsi Papua Selatan merupakan salah satu perangkat daerah yang dibentuk seiring berdirinya Provinsi Papua Selatan pada tahun 2022. Pembentukan dinas ini mengacu pada Undang-Undang Nomor 14 Tahun 2022 tentang Pemerintahan Daerah serta Undang-Undang Nomor 14 Tahun 2022 tentang Pembentukan Provinsi Papua Selatan. DISKOMINFOSTANDI memiliki peran strategis dalam mendukung terwujudnya tata kelola pemerintahan berbasis teknologi informasi yang transparan, efisien, dan berintegritas.</span></span></p>', '<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&quot;TERWUJUDNYA PAPUA BANGKIT, MANDIRI &amp; SEJAHTERA&quot;, sebagai dasar pembangunan Papua Selatan yang berkelanjutan dan berkeadilan dengan tetap terdepan dalam mempertahankan alam &amp; budaya sebagai aset bagi kehidupan seluruh masyarakat Papua Selatan.</span></span></p>', '<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Memantapkan Kualitas dan Daya Saing sumber daya manusia (SDM).<br />\r\n	Tujuan : Meningkatkan Kualitas SDM yang berdaya saing.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sasaran :</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya Aksesibiltas dan Mutu Penyelenggaraan Pendidikan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya budaya baca pada masyarakat.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya derajat kesehatan masyarakat.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Memantapkan Rasa Aman, Tentram dan Damai.<br />\r\n	Tujuan : Meningkatkan Keamanan, Ketentraman dan Ketertiban yang berbasis pada kohesivitas sosial dan harmonisasi keberagaman potensi kehidupan masyarakat.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sasaran :</span></span></p>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya suasana tertib, aman dan kepastian hukum.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya Penegakan HAM.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Penguatan Tata Kelola Pemerintahan yang Baik.<br />\r\n	Tujuan : Meningkatkan Tata Kelola Pemerintahan yang Bersih, Efektif, Demokrasi dan Terpercaya dalam penyelenggaraan pemerintahan daerah.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sasaran :</span></span></p>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Peningkatkan kinerja Penyelenggaraan Otonomi Khusus Papua.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya kapasitas dan akuntabilitas dalam penyelenggaraan pemerintahan dan pelayanan publik.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatkan kualitas Perencanaan, Penganggaran dan Pengendalian Program, serta kegiatan pembangunan daerah.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Penguatan dan Percepatan Perekonomian Daerah sesuai Potensi Unggulan Lokal dan Pengembangan Wilayah berbasis Kultural secara Berkelanjutan.<br />\r\n	Tujuan 1 : Pertumbuhan Ekonomi yang inklusif, berkeadilan dan berkelanjutan.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sasaran :</span></span></p>\r\n\r\n<ol start=\"4\">\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya pendayagunaan potensi sumber daya alam untuk penciptaan pertumbuhan ekonomi yang berkualitas.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Megoptimalkan perananan sektor pertambangan dalam mengatasi ketimpangan pendapatan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya pengelolaan sumber daya kehutanan secara berkelanjutan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Membangun struktur perekonomian yang kokoh berbasis pada penciptaan nilai tambah yang optimal terutama pada sektorsektor industri manufaktur, jasa dan ekonomi kreatif.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya pembangunan ekonomi maritim dan kelautan yang berbasis pada pendayagunaan potensi sumberdaya secara berkelanjutan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya daya saing tenaga kerja, kesempatan dan perluasan kesempatan kerja.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Tujuan 2 : Mewujudkan Percepatan pembangunan sarana dan prasarana infrastruktur daerah guna menopang pengembangan wilayah serta akses pada layanan dasar dan pasar.<br />\r\n	Sasaran :</span></span>\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Peningkatan akses transportasi berbasis antar moda dalam mendukung pengembangan ekonomi wilayah/daerah dan akses bagi seluruh wilayah.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Implementasi Rencana Tata Ruang secara konsisten.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya Ketersediaan sistem pengairan yang mendukung produktivitas wilayah.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya Pemenuhan perumahan layak huni dan penataan pemukiman.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya ketersediaan energi murah dan energi baru terbarukan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya jangkauan pelayanan sistem komunikasi dan Informasi antar wilayah.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Percepatan Pembangunan Daerah Tertinggal, Terdepan, Terluar dan Tertentu.<br />\r\n	Tujuan : Meningkatkan pemerataan pembangunan.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sasaran :</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"list-style-type:none\">\r\n		<ol>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya kualitas pembangunan berbasis kampung.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya efektivitas upaya pemenuhan kebutuhan dasar bagi OAP.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya percepatan pembangunan wilayah perbatasan.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya pemberdayaan terhadap KAT dan bantuan sosial PMKS.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya kapasitas ketangguhan daerah dalam menghadapi bencana melalui upaya pencegahan dan kesiapsiagaan bencana.</span></span></li>\r\n			<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Meningkatnya pengarusutamaan Gender dalam pembangunan daerah dan Upaya Perlindungan Anak.</span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', 'sambutan/NKjqUrivbJAQk3ToliISnYCimXDPGa8G47rR8Fy8.jpg', '2025-12-05 23:58:27', '2025-12-06 00:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `program_kegiatan`
--

CREATE TABLE `program_kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penulis` text NOT NULL,
  `nama_file` text NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_kegiatan`
--

INSERT INTO `program_kegiatan` (`id`, `penulis`, `nama_file`, `kategori`, `tanggal`, `file`, `created_at`, `updated_at`) VALUES
(7, 'Fahreza', 'Data Aktivitas Kegiatan', 'Kegiatan', '2025-11-25', 'program-kegiatan/lSQoyAOdye3MZDJoRMBzKdFPGST5RSWnb3aSJSQ9.docx', '2025-11-25 01:57:39', '2025-12-06 00:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `nama_opd` varchar(255) NOT NULL,
  `nama_kepala_badan` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id`, `judul`, `deskripsi`, `nama_opd`, `nama_kepala_badan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'KATA SAMBUTAN', '<p>Puji syukur kita panjatkan ke hadirat Tuhan Yang Maha Esa, atas rahmat dan karunia-Nya sehingga website resmi Dinas Komunikasi dan Informatika Provinsi Papua Selatan ini dapat dihadirkan sebagai sarana informasi dan komunikasi bagi masyarakat.</p>\r\n\r\n<p>Di era transformasi digital yang terus berkembang pesat, keterbukaan informasi publik, pelayanan berbasis teknologi, serta tata kelola pemerintahan yang transparan dan akuntabel menjadi kebutuhan yang tidak dapat dihindari. Oleh karena itu, kehadiran website ini diharapkan mampu menjadi media resmi yang cepat, akurat, dan terpercaya dalam menyampaikan informasi kepada masyarakat Papua Selatan.</p>\r\n\r\n<p>Website ini kami rancang sebagai pusat informasi yang memuat berbagai program, kegiatan, layanan publik, serta kebijakan strategis di bidang komunikasi dan informatika. Selain itu, website ini juga menjadi wadah untuk mempererat sinergi antara pemerintah, masyarakat, dunia usaha, dan seluruh pemangku kepentingan dalam mendukung pembangunan daerah berbasis digital.</p>\r\n\r\n<p>Kami menyadari bahwa pengelolaan informasi dan teknologi tidak hanya sebatas pada penyediaan sarana, tetapi juga membutuhkan partisipasi aktif dari seluruh elemen masyarakat. Oleh karena itu, kami sangat mengharapkan dukungan, saran, dan masukan yang konstruktif demi penyempurnaan layanan informasi publik di Provinsi Papua Selatan.</p>\r\n\r\n<p>Akhir kata, kami berharap website ini dapat memberikan manfaat yang sebesar-besarnya bagi masyarakat, serta menjadi bagian dari upaya bersama dalam mewujudkan Papua Selatan yang maju, cerdas, dan berdaya saing di era digital.</p>', 'Dinas Komunikasi, Informatika, Statistik dan Persandian Provinsi Papua Selatan', 'Nugroho Asrianto, ST., M.Si', 'sambutan/oTkqzZHy9ieVK39Hsxo4EdGiarpKHqwhr6vP5teF.png', '2025-12-05 23:54:11', '2025-12-12 21:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `sampuls`
--

CREATE TABLE `sampuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_opd` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_pemimpin` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sampuls`
--

INSERT INTO `sampuls` (`id`, `nama_opd`, `deskripsi`, `foto_pemimpin`, `media`, `created_at`, `updated_at`) VALUES
(1, 'DISKOMINFOSTANDI', '<p style=\"margin-left:47px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Dinas Komunikasi, Informatika, Statistik dan Persandian (DISKOMINFOSTANDI) Provinsi Papua Selatan merupakan salah satu perangkat daerah yang dibentuk seiring berdirinya Provinsi Papua Selatan pada tahun 2022. Pembentukan dinas ini mengacu pada Undang-Undang Nomor 14 Tahun 2022 tentang Pemerintahan Daerah serta Undang-Undang Nomor 14 Tahun 2022 tentang Pembentukan Provinsi Papua Selatan. DISKOMINFOSTANDI memiliki peran strategis dalam mendukung terwujudnya tata kelola pemerintahan berbasis teknologi informasi yang transparan, efisien, dan berintegritas.</span></span></p>', 'sampul/foto_pemimpin/JAxyRiUn9w4ZTWU5pKI7J0EkGgxWixS9eZD4AJ6v.png', 'sampul/media/hPQfJHsxS9Ok13hD79y4q7jRYFkEU4rvWD19X0RF.png', '2025-12-05 23:21:38', '2025-12-05 23:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `sekretariat`
--

CREATE TABLE `sekretariat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_pokok` text NOT NULL,
  `fungsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekretariat`
--

INSERT INTO `sekretariat` (`id`, `tugas_pokok`, `fungsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Sekretariat DISKOMINFOSTANDI Provinsi Papua Selatan</strong> mempunyai <strong>tugas pokok menyelenggarakan koordinasi, perencanaan, administrasi umum, keuangan, kepegawaian, serta pengelolaan aset dan pelaporan</strong> guna menunjang kelancaran pelaksanaan tugas dan fungsi DISKOMINFOSTANDI secara efektif, efisien, dan akuntabel.</p>', '<h2>1. Fungsi Perencanaan dan Pengendalian Program</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyusunan dokumen perencanaan strategis (Renstra, Renja, RKA, DPA).</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan target kinerja dan indikator program kegiatan DISKOMINFOSTANDI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengendalian dan evaluasi pelaksanaan program dan kegiatan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan kinerja (LAKIP, LPPD, LKjIP, dan laporan sektoral).</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2. Fungsi Pengelolaan Keuangan</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan administrasi keuangan dinas sesuai peraturan perundang-undangan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penatausahaan anggaran, pelaksanaan, dan pertanggungjawaban keuangan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan keuangan dan verifikasi dokumen keuangan kegiatan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembinaan pengelolaan keuangan pada seluruh bidang di lingkungan DISKOMINFOSTANDI.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3. Fungsi Administrasi Umum dan Tata Usaha</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan surat-menyurat, kearsipan, dokumentasi, dan tata naskah dinas.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengelolaan rumah tangga pemerintah, perlengkapan, dan logistik kantor.</p>\r\n	</li>\r\n	<li>\r\n	<p>Fasilitasi rapat, kegiatan dinas, serta hubungan kelembagaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengelolaan sistem administrasi perkantoran berbasis elektronik.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>4. Fungsi Pengelolaan Kepegawaian</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan administrasi ASN dan tenaga non-ASN di lingkungan DISKOMINFOSTANDI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengusulan kenaikan pangkat, mutasi, pendidikan dan pelatihan pegawai.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembinaan disiplin, etika kerja, serta peningkatan kapasitas SDM aparatur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan kebutuhan formasi pegawai sesuai kebutuhan organisasi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>5. Fungsi Pengelolaan Barang Milik Daerah (BMD) dan Aset</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pencatatan, pemeliharaan, pemanfaatan, dan pengamanan aset dinas.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan inventaris barang milik daerah secara berkala.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengendalian pemanfaatan sarana dan prasarana pendukung operasional dinas.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>6. Fungsi Pelaporan dan Akuntabilitas Kinerja</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyusunan laporan pelaksanaan program dan kegiatan dinas.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyajian data kinerja untuk kebutuhan pengawasan dan evaluasi pembangunan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan penyelenggaraan SPIP, SAKIP, serta penguatan akuntabilitas kinerja dinas.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>7. Fungsi Koordinasi Internal dan Sinkronisasi Perangkat Daerah</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Koordinasi antar bidang dalam pelaksanaan tugas dan fungsi DISKOMINFOSTANDI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sinkronisasi program dan kegiatan dengan perangkat daerah lainnya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan penyelenggaraan tugas-tugas lintas sektor pembangunan daerah.</p>\r\n	</li>\r\n</ul>', '2025-12-06 00:16:33', '2025-12-06 00:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1XVjDWeVfVxl8wCHqcc3mT8ggOAjvSmMO2xqdAoS', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmxTeUVsR2pkZVFDRk5IdlFHa0ZOaVZoV1BCRFNGQ1BWWWJDWkZqMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9iZXJpdGEtdGVyYmFydT9rYXRlZ29yaT1EaWdpdGFsIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1765599285),
('IadZMrB6IhgW5CDsvpnr0nS2srgP5ecF18rraqL4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmhLTFQwMmxUUzRWRmQ1cXRxdnEzY3M2cVdJdUl2bnJiWXF6dFkzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765598658);

-- --------------------------------------------------------

--
-- Table structure for table `sosmeds`
--

CREATE TABLE `sosmeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'strukturorganisasi/3TXyoLDh1SzNhIWar4X4OeL8XYAknTKxTfeHpfVY.jpg', '2025-12-06 00:14:54', '2025-12-06 00:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `tupoksi`
--

CREATE TABLE `tupoksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_pokok` text NOT NULL,
  `fungsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tupoksi`
--

INSERT INTO `tupoksi` (`id`, `tugas_pokok`, `fungsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Dinas Komunikasi, Informatika, Statistik, dan Persandian (DISKOMINFOSTANDI) Provinsi Papua Selatan</strong> mempunyai <strong>tugas pokok membantu Gubernur dalam melaksanakan urusan pemerintahan daerah di bidang komunikasi dan informatika, statistik sektoral, serta persandian</strong>, guna mendukung terwujudnya sumber daya manusia yang unggul, tata kelola pemerintahan yang baik, keamanan informasi, pembangunan inklusif, serta percepatan pembangunan wilayah tertinggal, terdepan, dan terluar.</p>', '<p>Dalam melaksanakan tugas pokok tersebut, <strong>DISKOMINFOSTANDI Provinsi Papua Selatan menyelenggarakan fungsi sebagai berikut:</strong></p>\r\n\r\n<h3>1. Fungsi Perumusan Kebijakan Teknis</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Perumusan kebijakan daerah di bidang komunikasi dan informatika, statistik sektoral, dan persandian.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan kebijakan penguatan sistem informasi pemerintahan yang mendukung peningkatan kualitas SDM, pelayanan publik, dan pemerataan pembangunan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>2. Fungsi Penyelenggaraan Layanan Informasi Publik</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan dan penyebarluasan informasi publik secara transparan, akurat, dan bertanggung jawab.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan literasi digital masyarakat untuk mendukung budaya baca, peningkatan pendidikan, serta partisipasi publik dalam pembangunan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengelolaan media komunikasi pemerintah sebagai sarana edukasi, sosialisasi kebijakan, dan penguatan kohesivitas sosial.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>3. Fungsi Pengembangan Infrastruktur TIK</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pembangunan dan pengembangan jaringan telekomunikasi dan akses internet antar wilayah, termasuk wilayah tertinggal, terdepan, dan terluar.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan sistem komunikasi dan informasi untuk menunjang layanan dasar, pasar, serta pengembangan ekonomi daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan sistem teknologi informasi untuk sektor pendidikan, kesehatan, ekonomi, dan ketenagakerjaan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>4. Fungsi Penyelenggaraan Sistem Pemerintahan Berbasis Elektronik (SPBE)</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Integrasi sistem aplikasi pemerintahan untuk mewujudkan tata kelola pemerintahan yang bersih, efektif, demokratis, dan terpercaya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penguatan perencanaan, penganggaran, pengendalian program, dan evaluasi pembangunan berbasis data digital.</p>\r\n	</li>\r\n	<li>\r\n	<p>Peningkatan kapasitas dan akuntabilitas penyelenggaraan pemerintahan dan pelayanan publik.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>5. Fungsi Penyelenggaraan Statistik Sektoral</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengumpulan, pengolahan, penyajian, dan pemanfaatan data statistik sektoral sebagai dasar perencanaan pembangunan daerah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyediaan data pembangunan untuk mendukung pertumbuhan ekonomi inklusif, pengurangan ketimpangan, dan pemerataan pembangunan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sinkronisasi data lintas perangkat daerah dalam mendukung kebijakan strategis daerah.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>6. Fungsi Penyelenggaraan Persandian dan Keamanan Informasi</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan pengamanan informasi pemerintah daerah untuk menjamin kerahasiaan, keutuhan, dan ketersediaan data.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlindungan sistem informasi strategis pemerintahan dari ancaman siber.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan keamanan informasi dalam situasi darurat dan kebencanaan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>7. Fungsi Dukungan Pembangunan Daerah Tertinggal dan Wilayah Perbatasan</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Penyediaan layanan komunikasi dan informasi bagi daerah tertinggal, terdepan, dan terluar.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dukungan sistem informasi untuk pembangunan berbasis kampung dan pemberdayaan OAP.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemanfaatan teknologi informasi untuk penguatan ketangguhan daerah terhadap bencana.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>8. Fungsi Pembinaan dan Pengawasan Teknis</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pembinaan teknis kepada perangkat daerah dalam pengelolaan TIK, statistik, dan sistem informasi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengawasan pelaksanaan kebijakan di bidang komunikasi, informatika, statistik, dan persandian.</p>\r\n	</li>\r\n	<li>\r\n	<p>Evaluasi kinerja program dan kegiatan DISKOMINFOSTANDI secara berkelanjutan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>9. Fungsi Administrasi Perangkat Daerah</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Pengelolaan administrasi umum, keuangan, kepegawaian, dan aset DISKOMINFOSTANDI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyusunan laporan kinerja, perencanaan strategis, serta pelaporan pembangunan sektor komunikasi dan informatika.</p>\r\n	</li>\r\n</ul>', '2025-12-06 00:06:03', '2025-12-06 00:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `otp_attempts` int(11) NOT NULL DEFAULT 0,
  `otp_last_sent_at` timestamp NULL DEFAULT NULL,
  `otp_resend_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `gmail`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `otp_code`, `otp_expires_at`, `otp_attempts`, `otp_last_sent_at`, `otp_resend_count`) VALUES
(3, 'Frankie', 'fahreza1690@gmail.com', '$2y$12$fVqi3z6xcBl9F4slOMOObu1QKML/SfR2a/GWr7HuL6RQ/Vsy6Be/u', 'super', NULL, '2025-10-22 16:33:29', '2025-12-12 21:06:36', NULL, NULL, 0, NULL, 0),
(5, 'Kizuking', 'fahrezakun406@gmail.com', '$2y$12$r3gbEkWtVzVfbEaU6uGx9O7TpAuEqAA99rsa8Hdd353gSbVO/eyAK', 'admin', NULL, '2025-10-23 03:15:56', '2025-12-12 21:13:57', NULL, NULL, 0, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasis`
--
ALTER TABLE `aplikasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `bidang_kesatuan_bangsa`
--
ALTER TABLE `bidang_kesatuan_bangsa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidang_politik`
--
ALTER TABLE `bidang_politik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_slug_unique` (`slug`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `produk_hukum`
--
ALTER TABLE `produk_hukum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_opd`
--
ALTER TABLE `profil_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_kegiatan`
--
ALTER TABLE `program_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampuls`
--
ALTER TABLE `sampuls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekretariat`
--
ALTER TABLE `sekretariat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sosmeds`
--
ALTER TABLE `sosmeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tupoksi`
--
ALTER TABLE `tupoksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_gmail_unique` (`gmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasis`
--
ALTER TABLE `aplikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bidang_kesatuan_bangsa`
--
ALTER TABLE `bidang_kesatuan_bangsa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bidang_politik`
--
ALTER TABLE `bidang_politik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `produk_hukum`
--
ALTER TABLE `produk_hukum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profil_opd`
--
ALTER TABLE `profil_opd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program_kegiatan`
--
ALTER TABLE `program_kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sampuls`
--
ALTER TABLE `sampuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sekretariat`
--
ALTER TABLE `sekretariat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sosmeds`
--
ALTER TABLE `sosmeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tupoksi`
--
ALTER TABLE `tupoksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
