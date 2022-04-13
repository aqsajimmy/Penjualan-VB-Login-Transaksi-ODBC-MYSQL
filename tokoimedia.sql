-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2022 pada 07.20
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoimedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_brg` varchar(20) NOT NULL,
  `nama_brg` varchar(50) DEFAULT NULL,
  `kat_brg` varchar(10) DEFAULT NULL,
  `jml_brg` int(11) DEFAULT NULL,
  `sat_brg` varchar(10) DEFAULT NULL,
  `hmodal1` double DEFAULT NULL,
  `hmodal2` double DEFAULT NULL,
  `hmodalfix` double DEFAULT NULL,
  `htoko` double DEFAULT NULL,
  `htoko_kusus` double DEFAULT NULL,
  `huser` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kode_brg`, `nama_brg`, `kat_brg`, `jml_brg`, `sat_brg`, `hmodal1`, `hmodal2`, `hmodalfix`, `htoko`, `htoko_kusus`, `huser`) VALUES
('B001', 'Headset Rexus W. S3 Pro', 'Headset', 0, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B002', 'Headset Fantech HQ 50', 'Headset', 0, 'pcs', 70000, 0, 70000, 0, 0, 0),
('B003', 'Headset Fantech HQ 52', 'Headset', 1, 'pcs', 135000, 0, 135000, 150000, 0, 170000),
('B004', 'Headset Fantech HG 11', 'Headset', 0, 'pcs', 350000, 0, 350000, 0, 0, 0),
('B005', 'Headset Fantech HG 14', 'Headset', 1, 'pcs', 315000, 0, 315000, 330000, 0, 350000),
('B006', 'Headset Fantech HG 15', 'Headset', 0, 'pcs', 295000, 0, 295000, 0, 0, 0),
('B007', 'Headset Fantech HG 16', 'Headset', 0, 'pcs', 290000, 0, 290000, 0, 0, 0),
('B008', 'Headset Fantech HG 17', 'Headset', 2, 'pcs', 135000, 0, 135000, 145000, 0, 175000),
('B009', 'Headset Fantech HG 19', 'Headset', 0, 'pcs', 195000, 0, 195000, 0, 0, 0),
('B010', 'Headset Fantech Scout MH 81', 'Headset', 1, 'pcs', 210000, 0, 210000, 0, 0, 0),
('B011', 'Stand HS Fantech Tower AC 3001 ', 'Headset', 13, 'pcs', 65000, 0, 65000, 80000, 0, 120000),
('B012', 'MIC Soundtech', 'Accesoris', 1, 'pcs', 455000, 0, 455000, 0, 0, 0),
('B013', 'Mouse A4Tech Q 80 Bloody', 'Mouse', 12, 'pcs', 125000, 0, 125000, 135000, 0, 150000),
('B014', 'Mouse A4Tech Wireless G3-280N', 'Mouse', 30, 'pcs', 70000, 0, 70000, 78000, 0, 100000),
('B015', 'Mouse Imperion MS-110', 'Mouse', 86, 'pcs', 28000, 0, 28000, 32000, 0, 50000),
('B016', 'Mouse Imperion MS-210', 'Mouse', 2, 'pcs', 29000, 0, 29000, 32000, 0, 50000),
('B017', 'Mouse Imperion MW-110', 'Mouse', 58, 'pcs', 50000, 0, 50000, 60000, 0, 80000),
('B018', 'Mouse Imperion MW-210', 'Mouse', 73, 'pcs', 58000, 0, 58000, 65000, 0, 85000),
('B019', 'Mouse Gaming Imperion S 110', 'Mouse', 0, 'pcs', 58000, 0, 58000, 67000, 0, 85000),
('B020', 'Mouse Genius Kabel DX-125', 'Mouse', 26, 'pcs', 45000, 0, 45000, 52000, 0, 65000),
('B021', 'Mouse Genius Wireless', 'Mouse', 2, 'pcs', 90000, 0, 90000, 95000, 0, 120000),
('B022', 'Mouse HP G260', 'Mouse', 16, 'pcs', 45000, 0, 45000, 50000, 0, 70000),
('B023', 'Mouse Eyota Standart', 'Mouse', 79, 'pcs', 9000, 0, 9000, 12000, 0, 20000),
('B024', 'Mouse Eyota Wireless 1000 Dpi M166', 'Mouse', 25, 'pcs', 31000, 0, 31000, 35000, 0, 50000),
('B025', 'Mouse Eyota Wireless 1200 Dpi M188', 'Mouse', 49, 'pcs', 30000, 0, 30000, 38000, 0, 50000),
('B026', 'Mouse Eyota Wireless 1000 Dpi (7249)', 'Mouse', 45, 'pcs', 30500, 0, 30500, 35000, 0, 50000),
('B027', 'Mouse Eyota Wireless M187 ', 'Mouse', 11, 'pcs', 32000, 0, 32000, 45000, 0, 65000),
('B028', 'Mouse Eyota Wireless 2.4 GHz Charger', 'Mouse', 15, 'pcs', 60000, 0, 60000, 70000, 0, 85000),
('B029', 'Mouse Tarik Eyota', 'Mouse', 107, 'pcs', 22000, 0, 22000, 28000, 0, 35000),
('B030', 'Mouse Branded Asus', 'Mouse', 37, 'pcs', 19000, 0, 19000, 24000, 0, 35000),
('B031', 'Mouse Branded Lenovo', 'Mouse', 18, 'pcs', 19000, 0, 19000, 23000, 0, 35000),
('B032', 'Mouse Brand Acer Original', 'Mouse', 8, 'pcs', 40000, 0, 40000, 45000, 0, 60000),
('B033', 'Keyboard Fantech K511', 'Keyboard', 21, 'pcs', 102000, 0, 102000, 110000, 0, 120000),
('B034', 'Keyboard Fantech K611', 'Keyboard', 12, 'pcs', 115000, 0, 115000, 135000, 0, 180000),
('B035', 'Keyboard Fantech K611-L', 'Keyboard', 6, 'pcs', 127000, 0, 127000, 168000, 0, 200000),
('B036', 'Keyboard Fantech K612', 'Keyboard', 1, 'pcs', 220000, 0, 220000, 235000, 0, 275000),
('B037', 'Keyboard Fantech K613', 'Keyboard', 18, 'pcs', 140000, 0, 140000, 155000, 0, 175000),
('B038', 'Keyboard Fantech K613-L', 'Keyboard', 2, 'pcs', 150000, 0, 150000, 168000, 0, 180000),
('B039', 'Keyboard Fantech KM100', 'Keyboard', 11, 'pcs', 75000, 0, 75000, 85000, 0, 100000),
('B040', 'Keyboard Fantech MK 871 Pantheon', 'Keyboard', 0, 'pcs', 450000, 0, 450000, 470000, 0, 500000),
('B041', 'Keyboard Fantech MK 882 Pantehon', 'Keyboard', 2, 'pcs', 590000, 0, 590000, 670000, 0, 700000),
('B042', 'Keyboard Fantech MK 884 Optilux', 'Keyboard', 1, 'pcs', 640000, 0, 640000, 680000, 0, 700000),
('B043', 'Keyboard Fantech MK 885 Optimax', 'Keyboard', 1, 'pcs', 580000, 0, 580000, 650000, 0, 700000),
('B044', 'Keyboard Fantech KX 302 Major', 'Keyboard', 0, 'pcs', 210000, 0, 210000, 0, 0, 0),
('B045', 'Keyboard  W. A4Tech Padless 3100N', 'Keyboard', 9, 'pcs', 235000, 0, 235000, 0, 0, 0),
('B046', 'Keyboard Imperion KG-S 10 (Sledge Hammer)', 'Keyboard', 40, 'pcs', 105000, 0, 105000, 115000, 0, 140000),
('B047', 'Keyboard Imperion Warrior 10', 'Keyboard', 38, 'pcs', 85000, 0, 85000, 95000, 0, 120000),
('B048', 'Keyboard Imperion KB-210', 'Keyboard', 36, 'pcs', 62000, 0, 62000, 85000, 0, 100000),
('B049', 'Keyboad Cyborg CKW 200', 'Keyboard', 0, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B050', 'Keyboard Eyota K55', 'Keyboard', 3, 'pcs', 45000, 0, 45000, 52000, 0, 80000),
('B051', 'Keyboard Wireless Eyota G1500', 'Keyboard', 0, 'pcs', 135000, 0, 135000, 150000, 0, 180000),
('B052', 'Keyboard Eyota Standar', 'Keyboard', 1, 'pcs', 29000, 0, 29000, 35000, 0, 50000),
('B053', 'Keyboard Eyota Mini Hitam', 'Keyboard', 91, 'pcs', 38000, 0, 38000, 45000, 0, 65000),
('B054', 'Keyboard Eyota K11', 'Keyboard', 71, 'pcs', 29000, 0, 29000, 35000, 0, 50000),
('B055', 'Keyboad Mini Branded', 'Keyboard', 0, 'pcs', 40000, 0, 40000, 0, 0, 0),
('B056', 'Keyboard Flexible', 'Keyboard', 31, 'pcs', 32000, 0, 32000, 45000, 0, 65000),
('B057', 'Stick Single Eyota Hitam', 'Stick', 46, 'pcs', 29000, 0, 29000, 36000, 0, 60000),
('B058', 'Stick Single Eyota Transparant', 'Stick', 20, 'pcs', 35000, 0, 35000, 43000, 0, 65000),
('B059', 'Stick Single DigiGear Transparant', 'Stick', 0, 'pcs', 34000, 0, 34000, 43000, 0, 65000),
('B060', 'Stick Double Eyota Hitam', 'Stick', 26, 'pcs', 65000, 0, 65000, 74000, 0, 90000),
('B061', 'Stick Double Eyota Transparant', 'Stick', 20, 'pcs', 76000, 0, 76000, 85000, 0, 100000),
('B062', 'Stick Imperion X500 ( GamePad )', 'Stick', 0, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B063', 'Mouse Pad Razer/Gambar X88', 'Mousepad', 90, 'pcs', 11000, 0, 11000, 15000, 0, 25000),
('B064', 'Mousepad Fantech MP 35', 'Mousepad', 20, 'pcs', 28000, 0, 28000, 32000, 0, 40000),
('B065', 'Mousepad Fantech MP 80', 'Mousepad', 42, 'pcs', 48000, 0, 48000, 53000, 0, 70000),
('B066', 'Mousepad Bantal Hitam', 'Mousepad', 1006, 'pcs', 2800, 0, 2800, 5000, 0, 10000),
('B067', 'Mousepad Bantal L-1108 Bagus', 'Mousepad', 21, 'pcs', 25000, 0, 25000, 30000, 0, 40000),
('B068', 'Mousepad Polos ', 'Mousepad', 569, 'pcs', 2000, 0, 2000, 4000, 0, 10000),
('B069', 'USB HUB 3.0 4 Port Petak Transparant', 'USB Hub', 7, 'pcs', 48000, 0, 48000, 60000, 0, 80000),
('B070', 'USB Hub Eyota 2.0 ( 4 Port ) ( 480 MPBS )', 'USB Hub', 183, 'pcs', 18000, 0, 18000, 27000, 0, 40000),
('B071', 'USB Hub Eyota 3.0 ( 4 Port )', 'USB Hub', 0, 'pcs', 48000, 0, 48000, 0, 0, 0),
('B072', 'USB Hub Eyota 2.0  Saklar ( 4 Port ) ', 'USB Hub', 35, 'pcs', 22000, 0, 22000, 29000, 0, 50000),
('B073', 'USB Hub Eyota 2.0  Saklar ( 7 Port ) ', 'USB Hub', 0, 'pcs', 38000, 0, 38000, 45000, 0, 65000),
('B074', 'USB Hub DigiGear 3.0 ( 4 Port )', 'USB Hub', 28, 'pcs', 63000, 0, 63000, 68000, 0, 80000),
('B075', 'USB Hub DigiGear 3.0 ( 7 Port )', 'USB Hub', 22, 'pcs', 78000, 0, 78000, 85000, 0, 100000),
('B076', 'Speaker Inbox GS-03', 'Speaker', 1, 'pcs', 71000, 0, 71000, 78000, 0, 100000),
('B077', 'Speaker Inbox GS-05', 'Speaker', 2, 'pcs', 93000, 0, 93000, 99000, 0, 120000),
('B078', 'Speaker Imperion GS-100', 'Speaker', 18, 'pcs', 105000, 0, 105000, 120000, 0, 145000),
('B079', 'Speaker Fantech BS150 ', 'Speaker', 1, 'pcs', 235000, 0, 235000, 275000, 0, 350000),
('B080', 'Speaker Advance Duo-100', 'Speaker', 24, 'pcs', 99000, 0, 99000, 108000, 0, 120000),
('B081', 'Speaker Advance M 310 BT', 'Speaker', 1, 'pcs', 385000, 0, 385000, 435000, 0, 480000),
('B082', 'Speaker Eyota S5 Bluetooth', 'Speaker', 10, 'pcs', 58000, 0, 58000, 68000, 0, 90000),
('B083', 'Speaker Genius SPU 120', 'Speaker', 2, 'pcs', 78000, 0, 78000, 88000, 0, 100000),
('B084', 'Speaker Tito A5', 'Speaker', 14, 'pcs', 38000, 0, 38000, 45000, 0, 80000),
('B085', 'Speaker U-Audio 606', 'Speaker', 27, 'pcs', 68000, 0, 68000, 78000, 0, 100000),
('B086', 'Router MR 3420', 'Router', 3, 'pcs', 305000, 0, 305000, 0, 0, 0),
('B087', 'Router WR 840 N', 'Router', 3, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B088', 'Router WR 820 N', 'Router', 0, 'pcs', 120000, 0, 120000, 0, 0, 0),
('B089', 'Modem Router 8840-T 4 Port', 'Router', 4, 'pcs', 148000, 0, 148000, 0, 0, 0),
('B090', 'Modem Router W 8901 N', 'Router', 9, 'pcs', 195000, 0, 195000, 0, 0, 0),
('B091', 'Modem Router W 8951 ND', 'Router', 5, 'pcs', 185000, 0, 185000, 0, 0, 0),
('B092', 'Access Point WA 801 ND', 'Access Poi', 0, 'pcs', 295000, 0, 295000, 0, 0, 0),
('B093', 'Access Point WA 901 ND', 'Access Poi', 0, 'pcs', 380000, 0, 380000, 0, 0, 0),
('B094', 'USB Adapter WN 822 N', 'USB Adapte', 20, 'pcs', 158000, 0, 158000, 0, 0, 0),
('B095', 'USB Adapter WN 823 N', 'USB Adapte', 12, 'pcs', 98000, 0, 98000, 0, 0, 0),
('B096', 'USB Adapter WN 722 N', 'USB Adapte', 7, 'pcs', 102000, 0, 102000, 0, 0, 0),
('B097', 'USB Adapter WN 725 N', 'USB Adapte', 16, 'pcs', 70000, 0, 70000, 0, 0, 0),
('B098', 'Hub 5 Port TL-SF1005D', 'Hub', 0, 'pcs', 65000, 0, 65000, 0, 0, 0),
('B099', 'Hub 8 Port TL-SF1008D', 'Hub', 19, 'pcs', 72000, 0, 72000, 0, 0, 0),
('B100', 'Hub 16 Port TL-SF1016D', 'Hub', 0, 'pcs', 235000, 0, 235000, 0, 0, 0),
('B101', 'Hub 8 Port Gigabyte TL-SG1008D', 'Hub', 12, 'pcs', 295000, 0, 295000, 0, 0, 0),
('B102', 'Hub 16 Port  Gigabyte TL-SG1016D', 'Hub', 0, 'pcs', 750000, 0, 750000, 0, 0, 0),
('B103', 'Hub 24 Port Gigabyte TL-SG1024D', 'Hub', 0, 'pcs', 980000, 0, 980000, 0, 0, 0),
('B104', 'EAN 13 - Fiber Optik Converter to LAN ', 'Accessoris', 2, 'pcs', 28000, 0, 28000, 0, 0, 0),
('B105', 'PCI Lan TG-3468 GB', 'Accessoris', 7, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B106', 'PCI Wireless TL-WN751 ND', 'Accessoris', 0, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B107', '4G LTE Modem Router MR 6400', 'Router', 1, 'pcs', 910000, 0, 910000, 0, 0, 0),
('B108', 'Outdoor Access Point CPE 210', 'Access Poi', 3, 'pcs', 445000, 0, 445000, 0, 0, 0),
('B109', 'Outdoor Access Point CPE 220', 'Access Poi', 2, 'pcs', 495000, 0, 495000, 0, 0, 0),
('B110', 'Outdoor Access Point EAP 110 Omada', 'Access Poi', 1, 'pcs', 540000, 0, 540000, 0, 0, 0),
('B111', 'Antena Omni TL-ANT2409 CL', 'Accessoris', 1, 'pcs', 68000, 0, 68000, 0, 0, 0),
('B112', 'Pigtail Cable TL-AMT24PT', 'Accessoris', 0, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B113', 'USB Wifi 2.0 Biasa 802.11N', 'USB Adapte', 52, 'pcs', 38000, 0, 38000, 0, 0, 0),
('B114', 'Fan CPU Imperion Cyclone', 'Fan', 14, 'pcs', 45000, 0, 45000, 85000, 0, 100000),
('B115', 'Fan CPU Scorpion King HF-560', 'Fan', 9, 'pcs', 32000, 0, 32000, 40000, 0, 60000),
('B116', 'Fan CPU LGA 1155', 'Fan', 57, 'pcs', 29000, 0, 29000, 35000, 0, 50000),
('B117', 'Fan CPU LGA 775', 'Fan', 44, 'pcs', 29000, 0, 29000, 35000, 0, 50000),
('B118', 'Fan CPU F35 Biasa', 'Fan', 0, 'pcs', 35000, 0, 35000, 0, 0, 0),
('B119', 'Fan CPU Eyota', 'Fan', 7, 'pcs', 25000, 0, 25000, 0, 0, 0),
('B120', 'Fan CPU Deep Cool', 'Fan', 0, 'pcs', 45000, 0, 45000, 55000, 0, 65000),
('B121', 'Fan Casing Fantech FC-121', 'Fan', 0, 'pcs', 35000, 0, 35000, 43000, 0, 50000),
('B122', 'Fan Casing Fantech FC-123', 'Fan', 20, 'pcs', 52000, 0, 52000, 60000, 0, 75000),
('B123', 'Fan Casing Fantech FC-124', 'Fan', 17, 'pcs', 56000, 0, 56000, 73000, 0, 90000),
('B124', 'Power Supply 500 W Eyota', 'PSU', 50, 'pcs', 100000, 0, 100000, 118000, 0, 135000),
('B125', 'Power Supply 550 W Imperion', 'PSU', 6, 'pcs', 135000, 0, 135000, 205000, 0, 250000),
('B126', 'Power Supply 600 W Imperion', 'PSU', 21, 'pcs', 295000, 0, 295000, 335000, 0, 380000),
('B127', 'Adaptor Acer Original ( 3.421 A )', 'Adaptor', 17, 'pcs', 53000, 0, 53000, 65000, 0, 100000),
('B128', 'Adaptor Acer Z1 ( 2.1 A )', 'Adaptor', 0, 'pcs', 165000, 0, 165000, 0, 0, 0),
('B129', 'Adaptor Acer Mini Original ( 2.1 A )', 'Adaptor', 10, 'pcs', 78000, 0, 78000, 125000, 0, 160000),
('B130', 'Adaptor HP Mini', 'Adaptor', 0, 'pcs', 110000, 0, 110000, 165000, 0, 200000),
('B131', 'Adaptor HP Biru 2.31 A', 'Adaptor', 13, 'pcs', 78000, 0, 78000, 145000, 0, 185000),
('B132', 'Adaptor HP Sedang 3.5 A', 'Adaptor', 1, 'pcs', 78000, 0, 78000, 125000, 0, 180000),
('B133', 'Adaptor Asus Original ( 3.42 A )', 'Adaptor', 9, 'pcs', 53000, 0, 53000, 85000, 0, 120000),
('B134', 'Adaptor Asus Original ( 3.42 A ) Direct 2.5 mm', 'Adaptor', 5, 'pcs', 83000, 0, 83000, 105000, 0, 175000),
('B135', 'Adaptor Asus Original ( 3.42 A ) Direct 1.35 mm', 'Adaptor', 10, 'pcs', 83000, 0, 83000, 105000, 0, 175000),
('B136', 'Adaptor Asus Original ( 2.1 A )', 'Adaptor', 4, 'pcs', 78000, 0, 78000, 145000, 0, 185000),
('B137', 'Adaptor Asus 4.74 A', 'Adaptor', 3, 'pcs', 125000, 0, 125000, 165000, 0, 200000),
('B138', 'Adaptor Asus 2.37 A', 'Adaptor', 8, 'pcs', 78000, 0, 78000, 125000, 0, 185000),
('B139', 'Adaptor Asus E-202 ( 1.75 A )', 'Adaptor', 12, 'pcs', 88000, 0, 88000, 120000, 0, 185000),
('B140', 'Adaptor Asus X-200 ( 1.75 A )', 'Adaptor', 11, 'pcs', 78000, 0, 78000, 105000, 0, 160000),
('B141', 'Adaptor Lenovo Original ( 3.25 A )', 'Adaptor', 15, 'pcs', 105000, 0, 105000, 155000, 0, 200000),
('B142', 'Adaptor Lenovo Petak ( 3.25 A )', 'Adaptor', 16, 'pcs', 75000, 0, 75000, 105000, 0, 185000),
('B143', 'Adaptor Toshiba 3.42', 'Adaptor', 25, 'pcs', 68000, 0, 68000, 85000, 0, 120000),
('B144', 'Adaptor Dell 3.34 A', 'Adaptor', 2, 'pcs', 120000, 0, 120000, 165000, 0, 200000),
('B145', 'Adaptor Asus KW ', 'Adaptor', 9, 'pcs', 53000, 0, 53000, 65000, 0, 100000),
('B146', 'Adaptor Acer KW', 'Adaptor', 0, 'pcs', 47000, 0, 47000, 0, 0, 0),
('B147', 'Adaptor Toshiba KW', 'Adaptor', 0, 'pcs', 47000, 0, 47000, 0, 0, 0),
('B148', 'Adaptor Monitor Samsung ( 14v-2.1A )', 'Adaptor', 1, 'pcs', 75000, 0, 75000, 95000, 0, 150000),
('B149', 'Adaptor Monitor Samsung ( 14v-3A )', 'Adaptor', 1, 'pcs', 75000, 0, 75000, 95000, 0, 150000),
('B150', 'Battery Asus X453/ X453MA/X453G', 'Battery', 3, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B151', 'Battery ASUS Eee PC 1025 ( A31/A32 ) ', 'Battery', 1, 'pcs', 205000, 0, 205000, 0, 0, 0),
('B152', 'Battery ASUS X551-G', 'Battery', 1, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B153', 'Battery ASUS X550A', 'Battery', 1, 'pcs', 235000, 0, 235000, 0, 0, 0),
('B154', 'Battery ASUS X441', 'Battery', 0, 'pcs', 0, 0, 0, 0, 0, 0),
('B155', 'Battery ASUS X455LA X455 X455LD', 'Battery', 2, 'pcs', 265000, 0, 265000, 0, 0, 0),
('B156', 'Battery ASUS X456', 'Battery', 1, 'pcs', 265000, 0, 265000, 0, 0, 0),
('B157', 'Battery ASUS X451', 'Battery', 1, 'pcs', 180000, 0, 180000, 0, 0, 0),
('B158', 'Battery ASUS X200', 'Battery', 0, 'pcs', 290000, 0, 290000, 0, 0, 0),
('B159', 'Battery ASUS K53', 'Battery', 1, 'pcs', 175000, 0, 175000, 0, 0, 0),
('B160', 'Battery ASUS K55 ( A32 )', 'Battery', 2, 'pcs', 225000, 0, 225000, 0, 0, 0),
('B161', 'Battery ASUS K56', 'Battery', 1, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B162', 'Battery ACER D260', 'Battery', 1, 'pcs', 205000, 0, 205000, 0, 0, 0),
('B163', 'Battery ACER 4710/4736/4730(AS07A41)', 'Battery', 1, 'pcs', 215000, 0, 215000, 0, 0, 0),
('B164', 'Battery ACER V5-121/576 (Flat)', 'Battery', 1, 'pcs', 225000, 0, 225000, 0, 0, 0),
('B165', 'Battery ACER D255', 'Battery', 1, 'pcs', 205000, 0, 205000, 0, 0, 0),
('B166', 'Battery ACER 4741/4738', 'Battery', 2, 'pcs', 225000, 0, 225000, 0, 0, 0),
('B167', 'Battery ACER E1-E5-111/v5-122/132(AC13C34)', 'Battery', 2, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B168', 'Battery TOSHIBA C55/L55/C55-B(PA5185U)', 'Battery', 1, 'pcs', 185000, 0, 185000, 0, 0, 0),
('B169', 'Battery TOSHIBA PA3817 L740 L745 L745D L775', 'Battery', 1, 'pcs', 185000, 0, 185000, 0, 0, 0),
('B170', 'Battery TOSHIBA NB500 PA', 'Battery', 1, 'pcs', 185000, 0, 185000, 0, 0, 0),
('B171', 'Battery HP RA04', 'Battery', 3, 'pcs', 225000, 0, 225000, 0, 0, 0),
('B172', 'Battery HP OA04-G', 'Battery', 1, 'pcs', 250000, 0, 250000, 0, 0, 0),
('B173', 'Battery Lenovo G40', 'Battery', 1, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B174', 'SD Card 16 GB Sandisk', 'SDC', 27, 'pcs', 55000, 0, 55000, 58000, 0, 80000),
('B175', 'SD Card 32 GB Sandisk', 'SDC', 29, 'pcs', 67000, 0, 67000, 82000, 0, 100000),
('B176', 'Flashdisk Sandisk 8 GB', 'Flashdisk', 45, 'pcs', 48000, 0, 48000, 53000, 0, 70000),
('B177', 'Flashdisk Sandisk 16 GB', 'Flashdisk', 22, 'pcs', 49000, 0, 49000, 55000, 0, 80000),
('B178', 'Flashdisk Sandisk 32 GB', 'Flashdisk', 5, 'pcs', 60000, 0, 60000, 67000, 0, 100000),
('B179', 'Flashdisk 16 GB Kioxia', 'Flashdisk', 1, 'pcs', 43000, 0, 43000, 48000, 0, 70000),
('B180', 'Flashdisk 32 GB Kioxia', 'Flashdisk', 17, 'pcs', 47000, 0, 47000, 52000, 0, 80000),
('B181', 'OTG Sandisk 16 GB', 'OTG', 20, 'pcs', 81000, 0, 81000, 89000, 0, 120000),
('B182', 'OTG Sandisk 32 GB', 'OTG', 24, 'pcs', 105000, 0, 105000, 112000, 0, 150000),
('B183', 'OTG Sandisk 64 GB', 'OTG', 11, 'pcs', 154000, 0, 154000, 165000, 0, 200000),
('B184', 'Chrome Cast', 'Accessoris', 9, 'pcs', 145000, 0, 145000, 155000, 0, 180000),
('B185', 'HDMI Splitter 2 Port', 'Accessoris', 11, 'pcs', 68000, 0, 68000, 145000, 0, 180000),
('B186', 'HDMI Splitter 4 Port', 'Accessoris', 5, 'pcs', 85000, 0, 85000, 175000, 0, 200000),
('B187', 'HDMI Splitter 8 Port', 'Accessoris', 1, 'pcs', 255000, 0, 255000, 320000, 0, 350000),
('B188', 'Anycast M4 Plus', 'Accessoris', 7, 'pcs', 105000, 0, 105000, 165000, 0, 180000),
('B189', 'Modem ZTE 3G MF190', 'Accessoris', 17, 'pcs', 100000, 0, 100000, 115000, 0, 130000),
('B190', 'CD Kupu-Kupu', 'Accessoris', 102, 'pcs', 13000, 0, 13000, 17000, 0, 25000),
('B191', 'External TV Box', 'Accessoris', 10, 'pcs', 225000, 0, 225000, 275000, 0, 330000),
('B192', 'Laser Pointer', 'Accessoris', 0, 'pcs', 56000, 0, 56000, 67000, 0, 90000),
('B193', 'USB TV Stick', 'Accessoris', 4, 'pcs', 165000, 0, 165000, 185000, 0, 200000),
('B194', 'Penghisap Panas X6', 'Accessoris', 23, 'pcs', 32000, 0, 32000, 38000, 0, 50000),
('B195', 'HDMI Switch 1080p ( 3 to 1 ) + Remote', 'Accessoris', 14, 'pcs', 52000, 0, 52000, 63000, 0, 100000),
('B196', 'HDMI Switch 1080p ( 3 to 1 )', 'Accessoris', 0, 'pcs', 52000, 0, 52000, 63000, 0, 100000),
('B197', 'SSD 128 GB Casper', 'SSD', 4, 'pcs', 220000, 0, 220000, 280000, 0, 430000),
('B198', 'SSD 256 GB Casper', 'SSD', 9, 'pcs', 280000, 0, 280000, 435000, 0, 550000),
('B199', 'SSD 512 GB Casper', 'SSD', 2, 'pcs', 700000, 0, 700000, 780000, 0, 850000),
('B200', 'HDD External Seagate Expansion 1 TB', 'HDD', 3, 'pcs', 745000, 0, 745000, 795000, 0, 900000),
('B201', 'HDD External WD 2 TB', 'HDD', 1, 'pcs', 1010000, 0, 1010000, 1100000, 0, 1200000),
('B202', 'HDD External Transcend 1 TB', 'HDD', 0, 'pcs', 805000, 0, 805000, 855000, 0, 950000),
('B203', 'HDD External Transcend 2 TB', 'HDD', 2, 'pcs', 1025000, 0, 1025000, 1200000, 0, 1350000),
('B204', 'DVD External  Asus Slim DVD-RW', 'DVD', 6, 'pcs', 315000, 0, 315000, 350000, 0, 380000),
('B205', 'Power Bank 9000 MAH Robot', 'Accessoris', 3, 'pcs', 225000, 0, 225000, 285000, 0, 350000),
('B206', 'Keyboard Numeric Eyota', 'Accessoris', 12, 'pcs', 27000, 0, 27000, 32000, 0, 50000),
('B207', 'Converter Micro to Type C (REXUS) 3A', 'Converter', 89, 'pcs', 10000, 0, 10000, 18000, 0, 30000),
('B208', 'Converter Micro HDMI to VGA', 'Converter', 63, 'pcs', 38000, 0, 38000, 45000, 0, 70000),
('B209', 'Converter Mini HDMI to VGA', 'Converter', 3, 'pcs', 35000, 0, 35000, 43000, 0, 60000),
('B210', 'Converter HDMI to VGA Kabel', 'Converter', 45, 'pcs', 28000, 0, 28000, 34000, 0, 50000),
('B211', 'Converter HDMI to VGA BOX', 'Converter', 85, 'pcs', 28000, 0, 28000, 34000, 0, 50000),
('B212', 'Converter HDMI to VGA BOX Female', 'Converter', 17, 'pcs', 28000, 0, 28000, 34000, 0, 50000),
('B213', 'Conveter USB 3.0 to VGA', 'Converter', 25, 'pcs', 78000, 0, 78000, 90000, 0, 110000),
('B214', 'Conveter USB  Type-C to VGA', 'Converter', 21, 'pcs', 44000, 0, 44000, 53000, 0, 75000),
('B215', 'Converter Mini HDMI 2AV (to RCA)', 'Converter', 24, 'pcs', 48000, 0, 48000, 60000, 0, 80000),
('B216', 'Micro USB to HDTV Adapter MHL ', 'Accessoris', 2, 'pcs', 48000, 0, 48000, 52000, 0, 70000),
('B217', 'USB LAN Tanpa Kabel', 'Accessoris', 6, 'pcs', 22000, 0, 22000, 28000, 0, 40000),
('B218', 'USB LAN 2.0  Ethernet Adapter', 'Accessoris', 36, 'pcs', 23000, 0, 23000, 38000, 0, 50000),
('B219', 'USB LAN 3.0  Ethernet Adapter', 'Accessoris', 7, 'pcs', 65000, 0, 65000, 85000, 0, 100000),
('B220', 'Converter HDMI Cable 1 to 2', 'Converter', 29, 'pcs', 23000, 0, 23000, 28000, 0, 40000),
('B221', 'Kabel Data Rexus Type C ( CB146C )', NULL, 18, 'pcs', 7000, 0, 7000, 20000, 0, 40000),
('B222', 'Kabel Data Rexus Android Biasa ( CB146M )', NULL, 1, 'pcs', 7000, 0, 7000, 20000, 0, 40000),
('B223', 'Kabel Data Android Eyota Biasa', NULL, 80, 'pcs', 7000, 0, 7000, 15000, 0, 25000),
('B224', 'Card Reader Multi', NULL, 42, 'pcs', 12000, 0, 12000, 18000, 0, 25000),
('B225', 'Card Reader Single (SD Card only)', NULL, 57, 'pcs', 4000, 0, 4000, 12000, 0, 15000),
('B226', 'USB Sound  7.1 Pesawat ', NULL, 29, 'pcs', 23000, 0, 23000, 32000, 0, 50000),
('B227', 'USB Sound  Biasa Pink', NULL, 71, 'pcs', 9000, 0, 9000, 18000, 0, 35000),
('B228', 'VGA to HDTV + Audio Adapter', NULL, 7, 'pcs', 43000, 0, 43000, 53000, 0, 70000),
('B229', 'USB Bluetooth 4.0', NULL, 24, 'pcs', 45000, 0, 45000, 50000, 0, 70000),
('B230', 'USB Bluetooth Jamur 2.0', NULL, 29, 'pcs', 13000, 0, 13000, 18000, 0, 35000),
('B231', 'USB Bluetooth Audio Reciever', NULL, 36, 'pcs', 11000, 0, 11000, 20000, 0, 40000),
('B232', 'MHL Micro USB to HDTV 2 M', NULL, 3, 'pcs', 35000, 0, 35000, 45000, 0, 65000),
('B233', 'MHL Micro USB to HDTV for Galaxy S5', NULL, 9, 'pcs', 75000, 0, 75000, 85000, 0, 100000),
('B234', 'Case SSD NVME to USB 3.0', NULL, 10, 'pcs', 178000, 0, 178000, 190000, 0, 230000),
('B235', 'Case SSD Sata to USB 3.1', NULL, 4, 'pcs', 150000, 0, 150000, 170000, 0, 200000),
('B236', 'Tang Crimping Bagus ( Biru )', NULL, 1, 'pcs', 175000, 0, 175000, 235000, 0, 280000),
('B237', 'Tang Crimping Biasa', NULL, 5, 'pcs', 27000, 0, 27000, 35000, 0, 55000),
('B238', 'USB PS 2 Player Converter', NULL, 6, 'pcs', 18000, 0, 18000, 25000, 0, 40000),
('B239', 'HDD Caddy', NULL, 5, 'pcs', 45000, 0, 45000, 65000, 0, 80000),
('B240', 'Blower Lion', NULL, 6, 'pcs', 145000, 0, 145000, 200000, 0, 350000),
('B241', 'Kertas Photo Vertex', NULL, 105, 'pcs', 14000, 0, 14000, 18000, 0, 25000),
('B242', 'RJ 45 AMP (@50/pack) + 40 pcs', NULL, 4, 'pcs', 17000, 0, 17000, 75000, 0, 100000),
('B243', 'RJ 45 Comescope (@50/pack)', NULL, 1, 'pcs', 17000, 0, 17000, 75000, 0, 100000),
('B244', 'RJ 45 Box Eyota', NULL, 39, 'pcs', 17000, 0, 17000, 30000, 0, 60000),
('B245', 'Sistem Infus ', NULL, 101, 'pcs', 38000, 0, 38000, 45000, 0, 100000),
('B246', 'Infus 2770 BluePrint', NULL, 2, 'pcs', 150000, 0, 150000, 170000, 0, 200000),
('B247', 'Toner Catridge 35 A Blueprint', NULL, 5, 'pcs', 335000, 0, 335000, 400000, 0, 0),
('B248', 'Toner Catridge 283 A Blueprint', NULL, 3, 'pcs', 335000, 0, 335000, 400000, 0, 0),
('B249', 'Toner Catrigde 285 A Blueprint', NULL, 3, 'pcs', 335000, 0, 335000, 400000, 0, 0),
('B250', 'Mobo Varro H61 Varro', NULL, 2, 'pcs', 565000, 0, 565000, 680000, 0, 800000),
('B251', 'Mobo Asus H81 M-X Maxxon', NULL, 2, 'pcs', 580000, 0, 580000, 0, 0, 0),
('B252', 'Mobo Asus H110 M-K', NULL, 2, 'pcs', 995000, 0, 995000, 0, 0, 0),
('B253', 'Mobo Asus Prime-H310M-K R2.0', NULL, 1, 'pcs', 980000, 0, 980000, 0, 0, 0),
('B254', 'Mobo Asus EX-H310M-V3 R2.0', NULL, 2, 'pcs', 1180000, 0, 1180000, 0, 0, 0),
('B255', 'Mobo Asus A320M-F', NULL, 1, 'pcs', 850000, 0, 850000, 0, 0, 0),
('B256', 'Mobo Asus H510 M-D', NULL, 1, 'pcs', 1300000, 0, 1300000, 0, 0, 0),
('B257', 'VGA Card Asus GT 710 2GB', NULL, 1, 'pcs', 850000, 0, 850000, 1000000, 0, 1100000),
('B258', 'PCI Card Sata', NULL, 8, 'pcs', 38000, 0, 38000, 123000, 0, 0),
('B259', 'PCI Card USB', NULL, 13, 'pcs', 45000, 0, 45000, 120000, 0, 0),
('B260', 'PCI Sound Card Express', NULL, 2, 'pcs', 45000, 0, 45000, 120000, 0, 0),
('B261', 'PCI Sound Card', NULL, 44, 'pcs', 45000, 0, 45000, 125000, 0, 0),
('B262', 'PCI Card USB 3.0', NULL, 5, 'pcs', 78000, 0, 78000, 0, 0, 0),
('B263', 'Label / Sticker CD', NULL, 51, 'pcs', 13000, 0, 13000, 18000, 0, 25000),
('B264', 'Kertas Thermal 80*50', NULL, 53, 'pcs', 17000, 0, 17000, 25000, 0, 35000),
('B265', 'DVD-R GT Pro Fish', NULL, 290, 'pcs', 2800, 0, 2800, 3500, 0, 5000),
('B266', 'DVD-R Vertex', NULL, 930, 'pcs', 1800, 0, 1800, 2300, 0, 4000),
('B267', 'DVD-R GT Pro Plus', NULL, 49, 'pcs', 3500, 0, 3500, 0, 0, 0),
('B268', 'CD-R Vertex', NULL, 100, 'pcs', 1400, 0, 1400, 2000, 0, 4000),
('B269', 'Kabel Audio 1 - 1 Biasa (Warna-Warni)', NULL, 9, 'pcs', 4000, 0, 4000, 7000, 0, 10000),
('B270', 'Kabel Audio 1 - 1 Eyota', NULL, 85, 'pcs', 6000, 0, 6000, 12000, 0, 20000),
('B271', 'Kabel Audio to RCA (2 warna)  Eyota', NULL, 0, 'pcs', 9000, 0, 9000, 14000, 0, 20000),
('B272', 'Kabel Audio to RCA (2 warna)  Biasa', NULL, 0, 'pcs', 7000, 0, 7000, 12000, 0, 0),
('B273', 'Kabel Audio to ATV (3 Warna)', NULL, 16, 'pcs', 11000, 0, 11000, 15000, 0, 25000),
('B274', 'Kabel Converter Audio 1 to 2', NULL, 50, 'pcs', 7000, 0, 7000, 12000, 0, 20000),
('B275', 'Earcup Headset HG 11', NULL, 3, 'pcs', 38000, 0, 38000, 45000, 0, 65000),
('B276', 'HDD Cooler LYF', NULL, 13, 'pcs', 18000, 0, 18000, 23000, 0, 35000),
('B277', 'Kabel HDMI 1.5 M Gold Firsting', NULL, 2, 'pcs', 25000, 0, 25000, 35000, 0, 50000),
('B278', 'Kabel HDMI Flat 1.5 M', NULL, 5, 'pcs', 9000, 0, 9000, 19000, 0, 30000),
('B279', 'Kabel HDMI Flat 3 M', NULL, 16, 'pcs', 14000, 0, 14000, 24000, 0, 40000),
('B280', 'Kabel HDMI Flat 5 M', NULL, 24, 'pcs', 38000, 0, 38000, 48000, 0, 70000),
('B281', 'Kabel HDMI 5 M Jaring', NULL, 20, 'pcs', 51000, 0, 51000, 58000, 0, 80000),
('B282', 'Kabel HDMI 10 M Eyota Jaring', NULL, 2, 'pcs', 55000, 0, 55000, 65000, 0, 100000),
('B283', 'Kabel HDMI 10 M Eyota Bagus 2.0', NULL, 24, 'pcs', 75000, 0, 75000, 90000, 0, 120000),
('B284', 'Kabel HDMI 10 M Premium Box', NULL, 15, 'pcs', 120000, 0, 120000, 135000, 0, 150000),
('B285', 'Kabel HDMI 15 M', NULL, 0, 'pcs', 78000, 0, 78000, 86000, 0, 140000),
('B286', 'Kabel HDMI 15 M bagus', NULL, 0, 'pcs', 120000, 0, 120000, 135000, 0, 160000),
('B287', 'Kabel HDMI 20 M bagus eyota', NULL, 7, 'pcs', 160000, 0, 160000, 178000, 0, 215000),
('B288', 'Kabel HDMI 25 M biasa', NULL, 0, 'pcs', 95000, 0, 95000, 120000, 0, 150000),
('B289', 'Kabel HDMI 25 M bagus', NULL, 8, 'pcs', 195000, 0, 195000, 240000, 0, 280000),
('B290', 'Kabel HDMI 30 M Biasa', NULL, 10, 'pcs', 135000, 0, 135000, 175000, 0, 230000),
('B291', 'Kabel HDMI 30 M bagus', NULL, 0, 'pcs', 235000, 0, 235000, 375000, 0, 430000),
('B292', 'Kabel VGA 1,5 M (Biasa)', NULL, 25, 'pcs', 7000, 0, 7000, 12000, 0, 20000),
('B293', 'Kabel VGA 1,5 M 4+5 Ori Eyota', NULL, 155, 'pcs', 15000, 0, 15000, 22000, 0, 35000),
('B294', 'Kabel VGA 3 M (Biasa)', NULL, 30, 'pcs', 14000, 0, 14000, 18000, 0, 35000),
('B295', 'Kabel VGA 5 M (Biasa)', NULL, 23, 'pcs', 28000, 0, 28000, 37000, 0, 50000),
('B296', 'Kabel VGA 5 M Eyota', NULL, 24, 'pcs', 40000, 0, 40000, 50000, 0, 70000),
('B297', 'Kabel VGA 10 M Eyota', NULL, 15, 'pcs', 57000, 0, 57000, 70000, 0, 110000),
('B298', 'Kabel VGA 15 M', NULL, 1, 'pcs', 63000, 0, 63000, 95000, 0, 130000),
('B299', 'Kabel VGA 15 M Bagus Eyota', NULL, 0, 'pcs', 95000, 0, 95000, 115000, 0, 165000),
('B300', 'Kabel VGA 20 M Eyota', NULL, 17, 'pcs', 98000, 0, 98000, 140000, 0, 175000),
('B301', 'Kabel LAN 1,5 M', NULL, 40, 'pcs', 4000, 0, 4000, 8000, 0, 10000),
('B302', 'Kabel LAN 3 M', NULL, 30, 'pcs', 5000, 0, 5000, 10000, 0, 15000),
('B303', 'Kabel LAN 5 M', NULL, 21, 'pcs', 8000, 0, 8000, 13000, 0, 20000),
('B304', 'Kabel LAN 10 M', NULL, 9, 'pcs', 13000, 0, 13000, 17000, 0, 30000),
('B305', 'Kabel LAN 15 M', NULL, 45, 'pcs', 18000, 0, 18000, 22000, 0, 40000),
('B306', 'Kabel LAN 20 M', NULL, 18, 'pcs', 23000, 0, 23000, 29000, 0, 50000),
('B307', 'Kabel LAN 25 M', NULL, 23, 'pcs', 27000, 0, 27000, 34000, 0, 60000),
('B308', 'Konektor OTG Micro USB (Direct)', NULL, 57, 'pcs', 0, 0, 0, 0, 0, 0),
('B309', 'Kabel OTG 5 PIN', NULL, 59, 'pcs', 5000, 0, 5000, 10000, 0, 15000),
('B310', 'Kabel Power Laptop  Eyota', NULL, 98, 'pcs', 9000, 0, 9000, 15000, 0, 25000),
('B311', 'Kabel Power Printer Eyota', NULL, 20, 'pcs', 7000, 0, 7000, 14000, 0, 25000),
('B312', 'Kabel Power PC Eyota', NULL, 161, 'pcs', 9000, 0, 9000, 15000, 0, 25000),
('B313', 'Kabel Power PC Biasa (tanpa merk)', NULL, 0, 'pcs', 9000, 0, 9000, 15000, 0, 25000),
('B314', 'Kabel Data Sata', NULL, 625, 'pcs', 3000, 0, 3000, 5000, 0, 10000),
('B315', 'Kabel Power Sata', NULL, 546, 'pcs', 3000, 0, 3000, 5000, 0, 10000),
('B316', 'Kabel USB 3.0 Extention ( 1.5 M )', NULL, 0, 'pcs', 7000, 0, 7000, 12000, 0, 20000),
('B317', 'Kabel USB Hardisk 3.0 1M', NULL, 20, 'pcs', 8000, 0, 8000, 12000, 0, 20000),
('B318', 'Kabel USB to USB ( HDD Eksternal/Pendek )', NULL, 47, 'pcs', 7000, 0, 7000, 12000, 0, 20000),
('B319', 'Kabel USB to USB ( 1 M )', NULL, 4, 'pcs', 7000, 0, 7000, 14000, 0, 20000),
('B320', 'Kabel HDMI to DVI ( 1.5 M ) Firstlink', NULL, 4, 'pcs', 11000, 0, 11000, 17000, 0, 25000),
('B321', 'Kabel HDMI to VGA 1.5 M (Kabel Langsung)', NULL, 1, 'pcs', 23000, 0, 23000, 30000, 0, 40000),
('B322', 'Kabel USB Printer ( 1.5 M )', NULL, 11, 'pcs', 9000, 0, 9000, 13000, 0, 20000),
('B323', 'Kabel USB Printer ( 3 M )', NULL, 15, 'pcs', 1400, 0, 1400, 19000, 0, 30000),
('B324', 'Kabel USB Printer ( 5 M )', NULL, 36, 'pcs', 19000, 0, 19000, 25000, 0, 40000),
('B325', 'Kabel Extention FAN', NULL, 24, 'pcs', 0, 0, 0, 0, 0, 0),
('B326', 'Kabel Extention Male/Female  3.0 1.5 M', NULL, 14, 'pcs', 14000, 0, 14000, 18000, 0, 25000),
('B327', 'Kabel Extention 1.5 M', NULL, 18, 'pcs', 9000, 0, 9000, 14000, 0, 20000),
('B328', 'Kabel Extention 3 M', NULL, 0, 'pcs', 12000, 0, 12000, 18000, 0, 30000),
('B329', 'Kabel Extention 5 M', NULL, 18, 'pcs', 16000, 0, 16000, 23000, 0, 40000),
('B330', 'Kabel Extention 10 M', NULL, 16, 'pcs', 16000, 0, 16000, 43000, 0, 80000),
('B331', 'DVI to VGA 4 PIN', NULL, 127, 'pcs', 9000, 0, 9000, 14000, 0, 0),
('B332', 'DVI to VGA 1 PIN', NULL, 7, 'pcs', 9000, 0, 9000, 14000, 0, 0),
('B333', 'HDMI to Mini to Micro', NULL, 45, 'pcs', 11000, 0, 11000, 0, 0, 0),
('B334', 'POE LAN TP-Link', NULL, 10, 'pcs', 28000, 0, 28000, 32000, 0, 40000),
('B335', 'Barel RJ 45  ( 1 - 1 )', NULL, 116, 'pcs', 2000, 0, 2000, 0, 0, 0),
('B336', 'Barel RJ 45  ( 1 - 2 )', NULL, 48, 'pcs', 4000, 0, 4000, 0, 0, 0),
('B337', 'RJ 45 Cover Socket', NULL, 93, 'pcs', 2000, 0, 2000, 0, 0, 0),
('B338', 'Konektor HDMI to HDMI ( L )', NULL, 0, 'pcs', 8000, 0, 8000, 0, 0, 0),
('B339', 'Konektor VGA to VGA ', NULL, 37, 'pcs', 9000, 0, 9000, 0, 0, 0),
('B340', 'Konverter Audio 2 to 1 ( Y )', NULL, 21, 'pcs', 8000, 0, 8000, 0, 0, 0),
('B341', 'Konveter USB to USB + 5 pin', NULL, 15, 'pcs', 6000, 0, 6000, 0, 0, 0),
('B342', 'Konveter USB to Multi Connector (CUMI)', NULL, 100, 'pcs', 6000, 0, 6000, 0, 0, 0),
('B343', 'Pasta Suntik Abu-abu Kecil', NULL, 23, 'pcs', 4000, 0, 4000, 8000, 0, 15000),
('B344', 'Pasta Suntik Coklat Besar', NULL, 76, 'pcs', 17000, 0, 17000, 28000, 0, 40000),
('B345', 'Cooling X4 JM', NULL, 11, 'pcs', 85000, 0, 85000, 105000, 0, 120000),
('B346', 'Cooling Eyota Snowflake', NULL, 25, 'pcs', 79000, 0, 79000, 88000, 0, 100000),
('B347', 'Cooling Pad Samoon', NULL, 65, 'pcs', 25000, 0, 25000, 29000, 0, 35000),
('B348', 'Cooling Pad N99', NULL, 15, 'pcs', 90000, 0, 90000, 99000, 0, 120000),
('B349', 'Cooling Pad S-18', NULL, 8, 'pcs', 52000, 0, 52000, 150000, 0, 180000),
('B350', 'Cooling Pad Gaming NYK Nemesis X3', NULL, 0, 'pcs', 155000, 0, 155000, 0, 0, 0),
('B351', 'UPS ICA 650 VA', NULL, 3, 'pcs', 565000, 0, 565000, 615000, 0, 700000),
('B352', 'UPS ICA 700 VA', NULL, 1, 'pcs', 705000, 0, 705000, 755000, 0, 850000),
('B353', 'UPS ICA CN 1300 VA', NULL, 1, 'pcs', 920000, 0, 920000, 985000, 0, 1100000),
('B354', 'UPS Eyota 650 VA', NULL, 1, 'pcs', 380000, 0, 380000, 450000, 0, 600000),
('B355', 'Monitor Varro 19\"', NULL, 10, 'pcs', 1220000, 0, 1220000, 1325000, 0, 1500000),
('B356', 'Monitor LG 19 \" ', NULL, 2, 'pcs', 1650000, 0, 1650000, 1725000, 0, 1850000),
('B357', 'Monitor LG 20 \"', NULL, 0, 'pcs', 1805000, 0, 1805000, 0, 0, 0),
('B358', 'Monitor LG 20 \" HDMI', NULL, 2, 'pcs', 1850000, 0, 1850000, 1950000, 0, 2100000),
('B359', 'Monitor Acer 22\"', NULL, 2, 'pcs', 1870000, 0, 1870000, 1970000, 0, 2050000),
('B360', 'USB Printer sharing 2 Port', NULL, 4, 'pcs', 68000, 0, 68000, 79000, 0, 100000),
('B361', 'USB Printer sharing 4 Port', NULL, 7, 'pcs', 118000, 0, 118000, 145000, 0, 200000),
('B362', 'USB Printer Switch 2 Port Model 1A2B', NULL, 12, 'pcs', 45000, 0, 45000, 68000, 0, 85000),
('B363', 'HDMI Extender cat 5/6 non Adaptor  (Single Uses)', NULL, 7, 'pcs', 105000, 0, 105000, 120000, 0, 140000),
('B364', 'Thermogun', NULL, 1, 'pcs', 375000, 0, 375000, 0, 0, 450000),
('B365', 'Mini Thermal Printer ( PQS-5809DD Eyota )', NULL, 3, 'pcs', 425000, 0, 425000, 480000, 0, 650000),
('B366', 'Bracket Projektor', NULL, 3, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B367', 'Keyboard Asus E 202 (Tanam)', NULL, 2, 'pcs', 135000, 0, 135000, 0, 0, 0),
('B368', 'Keyboard Asus K43/k42', NULL, 8, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B369', 'Keyboard Asus X200 (Tanam)', NULL, 3, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B370', 'Keyboard Asus X450 (Tanam)', NULL, 6, 'pcs', 135000, 0, 135000, 0, 0, 0),
('B371', 'Keyboard Asus X451 (Tanam)', NULL, 4, 'pcs', 135000, 0, 135000, 0, 0, 0),
('B372', 'Keyboard Asus X441', NULL, 0, 'pcs', 135000, 0, 135000, 0, 0, 0),
('B373', 'Keyboard Asus X550 (Tanam)', NULL, 1, 'pcs', 135000, 0, 135000, 0, 0, 0),
('B374', 'Keyboard Asus A-43', NULL, 5, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B375', 'Keyboard Acer Z1 401', NULL, 1, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B376', 'Keyboard Acer 4750 Travelmate', NULL, 2, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B377', 'Keyboard Acer v5-132', NULL, 0, 'pcs', 0, 0, 0, 0, 0, 0),
('B378', 'Keyboard Acer 4732Z/D725', NULL, 4, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B379', 'Keyboard Toshiba L40 B', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B380', 'Keyboard Toshiba C 800', NULL, 2, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B381', 'Keyboard Toshiba 9Z.401', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B382', 'Keyboard HP 210 T', NULL, 2, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B383', 'Keyboard HP 210 Socket Besar', NULL, 2, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B384', 'Keyboard HP CQ 40', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B385', 'Keyboard HP CQ 42', NULL, 0, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B386', 'Keyboard HP CQ 43', NULL, 2, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B387', 'Keyboard HP 14D10B', NULL, 2, 'pcs', 115000, 0, 115000, 0, 0, 0),
('B388', 'Keyboard Samsung NC 108', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B389', 'Keyboard Axioo BNE', NULL, 10, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B390', 'Keyboard Axioo DJMB', NULL, 3, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B391', 'Keyboard Axioo MNW', NULL, 1, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B392', 'Keyboard Axioo DJV', NULL, 1, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B393', 'Keyboard Axioo L225', NULL, 1, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B394', 'Keyboard Axioo MNC', NULL, 1, 'pcs', 115000, 0, 115000, 0, 0, 0),
('B395', 'Keyboard Lenovo  G4070B', NULL, 1, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B396', 'Keyboard Lenovo G 400 SB', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B397', 'Keyboard Lenovo G 400 B', NULL, 2, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B398', 'Keyboard Lenovo 320', NULL, 1, 'pcs', 100000, 0, 100000, 0, 0, 0),
('B399', 'Keyboard Lenovo G 460', NULL, 2, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B400', 'Keyboard Lenovo G 470', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B401', 'Keyboard Lenovo G 480', NULL, 2, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B402', 'Keyboard Lenovo Ideapad 100 -14IBD', NULL, 2, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B403', 'Keyboard Lenovo S 102 B', NULL, 2, 'pcs', 110000, 0, 110000, 0, 0, 0),
('B404', 'Keyboard Lenovo S 103 B', NULL, 1, 'pcs', 110000, 0, 110000, 0, 0, 0),
('B405', 'Keyboard Lenovo S-210', NULL, 2, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B406', 'Keyboard Lenovo S10', NULL, 1, 'pcs', 85000, 0, 85000, 0, 0, 0),
('B407', 'Keyboard Lenovo Ideapad 100 15\'6 inch', NULL, 1, 'pcs', 110000, 0, 110000, 0, 0, 0),
('B408', 'LED 10\" Tebal 40 PIN', NULL, 3, 'pcs', 950000, 0, 950000, 0, 0, 0),
('B409', 'LED 10\" Slim 40 Pin KK', NULL, 0, 'pcs', 0, 0, 0, 0, 0, 0),
('B410', 'LED 11,6\" Slim 40 Pin KK ', NULL, 1, 'pcs', 900000, 0, 900000, 0, 0, 0),
('B411', 'LED 11,6\" Slim 30 Pin KK ', NULL, 2, 'pcs', 900000, 0, 900000, 0, 0, 0),
('B412', 'LED 11,6\" Slim 40 Pin AB', NULL, 0, 'pcs', 0, 0, 0, 0, 0, 0),
('B413', 'LED 11,6\" Slim 30 Pin AB', NULL, 3, 'pcs', 900000, 0, 900000, 0, 0, 0),
('B414', 'LED 14\" Slim 40 Pin AB', NULL, 2, 'pcs', 950000, 0, 950000, 0, 0, 0),
('B415', 'LED 15,6\" Slim 40 Pin AB', NULL, 1, 'pcs', 850000, 0, 850000, 0, 0, 0),
('B416', 'HDD 1 TB PC Seagate MFI', NULL, 2, 'pcs', 640000, 0, 640000, 705000, 0, 850000),
('B417', 'HDD 500 GB PC WD', NULL, 8, 'pcs', 165000, 0, 165000, 205000, 0, 450000),
('B418', 'HDD 1 TB LP Seagate', NULL, 2, 'pcs', 430000, 0, 430000, 550000, 0, 750000),
('B419', 'HDD 500 GB LP Seagate', NULL, 4, 'pcs', 165000, 0, 165000, 325000, 0, 550000),
('B420', 'RAM 2 GB DDR3 PC-Merk Samsung', NULL, 11, 'pcs', 95000, 0, 95000, 175000, 0, 250000),
('B421', 'RAM 4 GB DDR3 PC-Merk Samsung', NULL, 8, 'pcs', 255000, 0, 255000, 280000, 0, 350000),
('B422', 'RAM 8 GB DDR3  PC-Merk Samsung', NULL, 4, 'pcs', 430000, 0, 430000, 475000, 0, 550000),
('B423', 'RAM 8 GB DDR3  PC-Merk Kingston', NULL, 1, 'pcs', 430000, 0, 430000, 475000, 0, 550000),
('B424', 'RAM 4 GB DDR4 PC-Merk Samsung', NULL, 9, 'pcs', 295000, 0, 295000, 340000, 0, 400000),
('B425', 'RAM 8 GB DDR4  PC-Merk Samsung', NULL, 1, 'pcs', 580000, 0, 580000, 650000, 0, 720000),
('B426', 'RAM 8 GB DDR4  PC-Merk Kingston', NULL, 4, 'pcs', 580000, 0, 580000, 650000, 0, 720000),
('B427', 'RAM 16 GB DDR4 PC-Merk Samsung', NULL, 2, 'pcs', 1120000, 0, 1120000, 1200000, 0, 1320000),
('B428', 'RAM 2 GB DDR3 Laptop-Merk Samsung', NULL, 1, 'pcs', 110000, 0, 110000, 185000, 0, 250000),
('B429', 'RAM 4 GB DDR3 Laptop-Merk Samsung', NULL, 2, 'pcs', 240000, 0, 240000, 300000, 0, 370000),
('B430', 'RAM 8 GB DDR3 Laptop-Merk Kingston', NULL, 1, 'pcs', 435000, 0, 435000, 490000, 0, 550000),
('B431', 'RAM 4 GB DDR4 Laptop-Merk Samsung', NULL, 2, 'pcs', 295000, 0, 295000, 355000, 0, 430000),
('B432', 'RAM 8 GB DDR4 Laptop-Merk Kingston', NULL, 2, 'pcs', 580000, 0, 580000, 665000, 0, 750000),
('B433', 'Proc Pentium G3260  + FAN ( 2,4 Ghz )', NULL, 8, 'pcs', 255000, 0, 255000, 0, 0, 0),
('B434', 'Proc Core 2 Duo E8400 + FAN ( 3.0Ghz )', NULL, 1, 'pcs', 95000, 0, 95000, 0, 0, 0),
('B435', 'Proc Core i 3 2120', NULL, 3, 'pcs', 225000, 0, 225000, 0, 0, 0),
('B436', 'Proc Core i 3 4160', NULL, 1, 'pcs', 680000, 0, 680000, 0, 0, 0),
('B437', 'Proc Core i 5 4570', NULL, 2, 'pcs', 980000, 0, 980000, 0, 0, 0),
('B438', 'Proc Core i 3 6100', NULL, 5, 'pcs', 1450000, 0, 1450000, 0, 0, 0),
('B439', 'Proc Core i 5 9400 F BOX', NULL, 1, 'pcs', 2000000, 0, 2000000, 0, 0, 0),
('B440', 'Proc Core i 5 10400 - Try', NULL, 2, 'pcs', 2560000, 0, 2560000, 0, 0, 0),
('B441', 'Keyboard Protector 14 \"', NULL, 590, 'pcs', 2000, 0, 2000, 4000, 0, 10000),
('B442', 'Keyboard Protector 11 \" ', NULL, 319, 'pcs', 2000, 0, 2000, 4000, 0, 10000),
('B443', 'Karet infus(2pack(*50) + 81 ecer) - 181 pcs', NULL, 181, 'pcs', 400, 0, 400, 0, 0, 0),
('B444', 'Karet infus + L ( paketan ) (@50/pack)', NULL, 10, 'pcs', 25000, 0, 25000, 0, 0, 0),
('B445', 'FAN Laptop Acer 4750/4743', NULL, 2, 'pcs', 125000, 0, 125000, 0, 0, 0),
('B446', 'FAN Laptop Acer 4741', NULL, 3, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B447', 'FAN Laptop Acer 4738', NULL, 4, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B448', 'FAN Laptop Acer E1-431/471', NULL, 3, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B449', 'FAN Laptop Acer 4755', NULL, 1, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B450', 'FAN Laptop Acer E725', NULL, 2, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B451', 'FAN Laptop Acer AO722/AO522', NULL, 2, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B452', 'FAN Toshiba L600/L645/L745', NULL, 5, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B453', 'FAN Toshiba C600', NULL, 1, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B454', 'FAN HP CQ-43', NULL, 4, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B455', 'FAN DELL 4040', NULL, 1, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B456', 'FAN DELL Inspiron 15 /  N5040', NULL, 2, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B457', 'FAN Asus x200 M', NULL, 2, 'pcs', 105000, 0, 105000, 0, 0, 0),
('B458', 'FAN Axioo M645', NULL, 1, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B459', 'Kabel Flexible X200 Asus', NULL, 1, 'pcs', 75000, 0, 75000, 0, 0, 0),
('B460', 'Kabel Flexible X441 Asus', NULL, 2, 'pcs', 75000, 0, 75000, 0, 0, 0),
('B461', 'Tinta Epson BK 664 Ori', NULL, 4, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B462', 'Tinta Epson C  664 Ori', NULL, 8, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B463', 'Tinta Epson Y 664 Ori', NULL, 6, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B464', 'Tinta Epson M 664 Ori', NULL, 7, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B465', 'Tinta Epson BK 003 Ori', NULL, 10, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B466', 'Tinta Epson C  003 Ori', NULL, 7, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B467', 'Tinta Epson Y 003 Ori', NULL, 7, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B468', 'Tinta Epson M 003 Ori', NULL, 4, 'pcs', 69000, 0, 69000, 76000, 0, 90000),
('B469', 'Tinta Epson BK 673 Ori', NULL, 4, 'pcs', 150000, 0, 150000, 158000, 0, 175000),
('B470', 'Tinta Epson C  673 Ori', NULL, 0, 'pcs', 150000, 0, 150000, 158000, 0, 175000),
('B471', 'Tinta Epson Y 673 Ori', NULL, 2, 'pcs', 150000, 0, 150000, 158000, 0, 175000),
('B472', 'Tinta Epson M 673 Ori', NULL, 0, 'pcs', 150000, 0, 150000, 158000, 0, 175000),
('B473', 'Tinta BP Kotak Canon Black (40)', NULL, 64, 'pcs', 25000, 0, 25000, 27000, 0, 35000),
('B474', 'Tinta BP Kotak Canon Warna (41)', NULL, 127, 'pcs', 25000, 0, 25000, 27000, 0, 35000),
('B475', 'Tinta BP Kotak HP Black (27)', NULL, 18, 'pcs', 25000, 0, 25000, 27000, 0, 35000),
('B476', 'Tinta Alfa Ink', NULL, 34, 'pcs', 15000, 0, 15000, 0, 0, 0),
('B477', 'Tinta Sprink BK Canon', NULL, 217, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B478', 'Tinta Sprink M Canon', NULL, 75, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B479', 'Tinta Sprink Y Canon', NULL, 49, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B480', 'Tinta Sprink C Canon', NULL, 68, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B481', 'Tinta Sprink BK Epson 664', NULL, 46, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B482', 'Tinta Sprink M Epson 664', NULL, 0, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B483', 'Tinta Sprink Y Epson 664', NULL, 7, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B484', 'Tinta Sprink C Epson 664', NULL, 7, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B485', 'Tinta Sprink LC Epson 664', NULL, 0, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B486', 'Tinta Sprink LM Epson 664', NULL, 8, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B487', 'Tinta Sprink Brother BK', NULL, 8, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B488', 'Tinta Sprink Brother M', NULL, 35, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B489', 'Tinta Sprink Brother C', NULL, 33, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B490', 'Tinta Sprink Brother Y', NULL, 34, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B491', 'Tinta Sprink Epson 003 BK', NULL, 124, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B492', 'Tinta Sprink Epson 003 Y', NULL, 35, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B493', 'Tinta Sprink Epson 003 C', NULL, 40, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B494', 'Tinta Sprink Epson 003 M', NULL, 40, 'pcs', 21000, 0, 21000, 24000, 0, 35000),
('B495', 'Tinta BP Botol BK Canon', NULL, 49, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B496', 'Tinta BP Botol M Canon', NULL, 138, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B497', 'Tinta BP Botol C Canon', NULL, 80, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B498', 'Tinta BP Botol Y Canon', NULL, 62, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B499', 'Tinta BP Botol LC Epson', NULL, 42, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B500', 'Tinta BP Botol LM Epson', NULL, 27, 'pcs', 35000, 0, 35000, 37000, 0, 45000),
('B501', 'Casing Azzura Neo V', NULL, 2, 'pcs', 315000, 0, 315000, 350000, 0, 400000),
('B502', 'Casing Imperion 352', NULL, 2, 'pcs', 485000, 0, 485000, 520000, 0, 580000),
('B503', 'Casing Imperion NEO 504', NULL, 10, 'pcs', 450000, 0, 450000, 490000, 0, 550000),
('B504', 'Casing Imperion Acropolit 701', NULL, 4, 'pcs', 510000, 0, 510000, 580000, 0, 650000),
('B505', 'Casing Imperion Kinetic 361', NULL, 7, 'pcs', 485000, 0, 485000, 505000, 0, 550000),
('B506', 'Casing Imperion Kinetic 362', NULL, 5, 'pcs', 485000, 0, 485000, 505000, 0, 550000),
('B507', 'Casing Imperion Kinetic 363', NULL, 3, 'pcs', 435000, 0, 435000, 460000, 0, 530000),
('B508', 'Casing Imperion 305', NULL, 1, 'pcs', 380000, 0, 380000, 410000, 0, 460000),
('B509', 'Casing Power up element', NULL, 1, 'pcs', 335000, 0, 335000, 380000, 0, 420000),
('B510', 'Casing RUIX', NULL, 9, 'pcs', 275000, 0, 275000, 320000, 0, 370000),
('B511', 'Webcam Std 1080p ', NULL, 2, 'pcs', 95000, 0, 95000, 120000, 0, 180000),
('B512', 'Webcam 1080p Support Beauty', NULL, 6, 'pcs', 185000, 0, 185000, 220000, 0, 300000),
('B513', 'Webcam A4tech 720p', NULL, 8, 'pcs', 295000, 0, 295000, 400000, 0, 450000),
('B514', 'Webcam A4tech 1080p', NULL, 1, 'pcs', 405000, 0, 405000, 450000, 0, 500000),
('B515', 'LAN Tester', NULL, 30, 'pcs', 32000, 0, 32000, 38000, 0, 55000),
('B516', 'Adaptor Universal', NULL, 12, 'pcs', 57000, 0, 57000, 68000, 0, 85000),
('B517', 'Casing HDD External 2.0', NULL, 14, 'pcs', 48000, 0, 48000, 58000, 0, 80000),
('B518', 'Casing HDD 3.5 Inch 3.0', NULL, 16, 'pcs', 185000, 0, 185000, 195000, 0, 230000),
('B519', 'Battery UPS SMT', NULL, 9, 'pcs', 145000, 0, 145000, 180000, 0, 230000),
('B520', 'Battery UPS ICAL', NULL, 8, 'pcs', 215000, 0, 215000, 260000, 0, 300000),
('B521', 'Battery UPS Panasonic ( 12 v )', NULL, 4, 'pcs', 185000, 0, 185000, 235000, 0, 280000),
('B522', 'Battery CMos Maxell', NULL, 81, 'pcs', 8000, 0, 8000, 15000, 0, 25000),
('B523', 'VGA Splitter 2 Port', NULL, 5, 'pcs', 52000, 0, 52000, 70000, 0, 90000),
('B524', 'VGA Splitter 4 Port', NULL, 3, 'pcs', 70000, 0, 70000, 85000, 0, 110000),
('B525', 'Kabel LAN FTP Eyota Cat 5', NULL, 5, 'pcs', 375000, 0, 375000, 480000, 0, 600000),
('B526', 'Kabel CCTV Annyvision RG 6 Black', NULL, 2, 'pcs', 830000, 0, 830000, 930000, 0, 0),
('B527', 'Kabel CCTV Anyvision RG 59 (@100m)', NULL, 10, 'pcs', 235000, 0, 235000, 280000, 0, 0),
('B528', 'DVD Internal Samsung', NULL, 9, 'pcs', 115000, 0, 115000, 145000, 0, 230000),
('B529', 'Stand Headset Fantech Biasa', NULL, 38, 'pcs', 35000, 0, 35000, 70000, 0, 90000),
('B530', 'Kotak CD Hitam', NULL, 140, 'pcs', 2000, 0, 2000, 3500, 0, 10000),
('B531', 'Kotak CD Putih', NULL, 153, 'pcs', 1400, 0, 1400, 2500, 0, 8000),
('B532', 'XVR 5 in1 2108 8 CH', NULL, 15, 'pcs', 380000, 0, 380000, 0, 0, 0),
('B533', 'XVR 4 CH 5 MPX', NULL, 4, 'pcs', 680000, 0, 680000, 0, 0, 0),
('B534', 'XVR 8 CH 5 MPX', NULL, 3, 'pcs', 795000, 0, 795000, 0, 0, 0),
('B535', 'XVR 16 CH 5 MPX', NULL, 1, 'pcs', 1100000, 0, 1100000, 0, 0, 0),
('B536', 'DVR Blazz DVR', NULL, 1, 'pcs', 320000, 0, 320000, 400000, 0, 500000),
('B537', 'DVR Anyvision 16CH 5 MPX', NULL, 1, 'pcs', 1280000, 0, 1280000, 1520000, 0, 0),
('B538', 'DVR Hikviksion 4CH 4MPX', NULL, 1, 'pcs', 760000, 0, 760000, 875000, 0, 0),
('B539', 'DVR Hikviksion 8CH 4MPX', NULL, 2, 'pcs', 1205000, 0, 1205000, 1350000, 0, 0),
('B540', 'DVR Hikviksion 8CH 2MPX', NULL, 5, 'pcs', 405000, 0, 405000, 485000, 0, 0),
('B541', 'Power Supply CCTV 5 A', NULL, 8, 'pcs', 62000, 0, 62000, 75000, 0, 0),
('B542', 'Power Supply CCTV 10 A', NULL, 26, 'pcs', 78000, 0, 78000, 90000, 0, 0),
('B543', 'Power Supply CCTV 30 A', NULL, 2, 'pcs', 255000, 0, 255000, 285000, 0, 0),
('B544', 'Power Supply CCTV BOX 5A', NULL, 2, 'pcs', 145000, 0, 145000, 0, 0, 0),
('B545', 'Power Supply CCTV BOX 10A', NULL, 3, 'pcs', 145000, 0, 145000, 180000, 0, 0),
('B546', 'Power Supply CCTV BOX 20A', NULL, 11, 'pcs', 195000, 0, 195000, 235000, 0, 0),
('B547', 'Power Supply CCTV BOX 30A', NULL, 10, 'pcs', 255000, 0, 255000, 280000, 0, 0),
('B548', 'Cam Anyvision 2 MPX IN-OHD', NULL, 5, 'pcs', 115000, 0, 115000, 150000, 0, 200000),
('B549', 'Cam Anyvision 2 MPX OUT-OHD', NULL, 10, 'pcs', 120000, 0, 120000, 155000, 0, 210000),
('B550', 'Cam Anyvision 2 MPX IN-IFC', NULL, 30, 'pcs', 185000, 0, 185000, 235000, 0, 280000),
('B551', 'Cam Anyvision 2 MPX OUT-IFC', NULL, 34, 'pcs', 195000, 0, 195000, 250000, 0, 300000),
('B552', 'Cam Anyvision 4 MPX indoor', NULL, 2, 'pcs', 215000, 0, 215000, 240000, 0, 325000),
('B553', 'Cam Anyvision 4 MPX Outdoor', NULL, 2, 'pcs', 230000, 0, 230000, 285000, 0, 350000),
('B554', 'Cam Anyvision 5 MPX In-OHD', NULL, 12, 'pcs', 285000, 0, 285000, 300000, 0, 380000),
('B555', 'Cam Anyvision 5 MPX Out-OHD', NULL, 16, 'pcs', 300000, 0, 300000, 315000, 0, 400000),
('B556', 'Cam Anyvision 5 MPX In-IFC', NULL, 8, 'pcs', 335000, 0, 335000, 380000, 0, 430000),
('B557', 'Cam Anyvision 5 MPX Out-IFC', NULL, 1, 'pcs', 350000, 0, 350000, 400000, 0, 450000),
('B558', 'Cam Hilook 2 MPX Indoor', NULL, 7, 'pcs', 221000, 0, 221000, 235000, 0, 280000),
('B559', 'Cam Hilook 2 MPX Outdoor', NULL, 1, 'pcs', 244000, 0, 244000, 250000, 0, 300000),
('B560', 'Cam Dahua 2 MPX Indoor', NULL, 4, 'pcs', 130000, 0, 130000, 180000, 0, 255000),
('B561', 'Cam Dahua 2 MPX Outoor', NULL, 0, 'pcs', 150000, 0, 150000, 190000, 0, 265000),
('B562', 'Cam Hikviksion Indoor', NULL, 1, 'pcs', 125000, 0, 125000, 225000, 0, 300000),
('B563', 'Cam Blazz D1 Lamp', NULL, 4, 'pcs', 135000, 0, 135000, 200000, 0, 300000),
('B564', 'Adaptor  CCTV Annyvision 12V 5A', NULL, 6, 'pcs', 35000, 0, 35000, 75000, 0, 130000),
('B565', 'Adaptor CCTV Annyvision 12V 6A', NULL, 34, 'pcs', 75000, 0, 75000, 95000, 0, 150000),
('B566', 'POE LAN CCTV', NULL, 15, 'pcs', 15000, 0, 15000, 0, 0, 0),
('B567', 'Vivan Cam KIT 2 MP 4 Channel', NULL, 2, 'pcs', 1200000, 0, 1200000, 0, 0, 0),
('B568', 'Laptop Lenovo Celeron N4020 (4/256)', NULL, 1, 'pcs', 5200000, 0, 5200000, 0, 0, 0),
('B569', 'Laptop HP AMD Ryzen 3 3250U (8/512)', NULL, 1, 'pcs', 7600000, 0, 7600000, 0, 0, 0),
('B570', 'Laptop Lenovo AMD Athalon 3020U (8/256)', 'Laptop', 2, 'pcs', 6050000, 0, 6050000, 0, 0, 0),
('B571', 'Laptop HP AMD Athalon 3050U (4/256)', 'Laptop', 2, 'pcs', 5000000, 0, 5000000, 0, 0, 0),
('B572', 'Laptop Acer i3-1115G4 (4/512)', 'Laptop', 1, 'pcs', 7090000, 0, 7090000, 0, 0, 0),
('B573', 'Laptop Asus i5-1135G7 (8/512)', 'Laptop', 1, 'pcs', 11000000, 0, 11000000, 0, 0, 0),
('B574', 'Laptop Axioo Slimbook 13\'3 N4020 (6/128)', 'Laptop', 2, 'pcs', 23500000, 0, 23500000, 0, 0, 0),
('B575', 'Nb Lenovo Celeron N4020 (4/256)', 'Laptop', 2, 'pcs', 4950000, 0, 4950000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` varchar(10) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telpon` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `nama`, `alamat`, `telpon`) VALUES
('C001', 'Customer001', 'Baso', '0811');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_pembelian`
--

CREATE TABLE `tb_detail_pembelian` (
  `id_pembelian` varchar(10) DEFAULT NULL,
  `kode_brg` varchar(20) DEFAULT NULL,
  `jml_brg` int(10) DEFAULT NULL,
  `harga_satuan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_penjualan`
--

CREATE TABLE `tb_detail_penjualan` (
  `id_penjualan` varchar(10) DEFAULT NULL,
  `kode_brg` varchar(20) DEFAULT NULL,
  `jml_brg` int(10) DEFAULT NULL,
  `harga_satuan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_detail_penjualan`
--

INSERT INTO `tb_detail_penjualan` (`id_penjualan`, `kode_brg`, `jml_brg`, `harga_satuan`) VALUES
('2204090001', 'b003', 1, 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `id_pembelian` varchar(10) NOT NULL,
  `id_supplier` varchar(10) DEFAULT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `total_pembelian` double DEFAULT NULL,
  `pembayaran` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` varchar(10) NOT NULL,
  `id_customer` varchar(10) DEFAULT NULL,
  `tgl_penjualan` date DEFAULT NULL,
  `total_penjualan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `id_customer`, `tgl_penjualan`, `total_penjualan`) VALUES
('2204090001', 'C001', '2009-04-22', 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telpon` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama`, `alamat`, `telpon`) VALUES
('S001', 'Supp001', 'Padang', '08000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`) USING BTREE;

--
-- Indeks untuk tabel `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
