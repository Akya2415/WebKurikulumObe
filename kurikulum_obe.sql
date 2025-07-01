-- phpMyAdmin SQL Dump
-- versi: 5.2.1
-- server: localhost
-- database: kurikulum_obe

CREATE DATABASE IF NOT EXISTS `kurikulum_obe`;
USE `kurikulum_obe`;

-- Tabel CPL
CREATE TABLE `cpl` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabel Matakuliah
CREATE TABLE `matakuliah` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `kode` VARCHAR(20) NOT NULL,
  `nama` VARCHAR(100) NOT NULL,
  `sks` INT(11) NOT NULL,
  `cpl` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabel Users
CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `role` ENUM('admin','dosen','mahasiswa') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data awal Matakuliah (contoh)
INSERT INTO `matakuliah` (`kode`, `nama`, `sks`, `cpl`) VALUES
('MK001', 'Pemrograman Web', 3, 'CPL 1'),
('MK002', 'Basis Data', 3, 'CPL 2');

-- Data awal CPL (contoh)
INSERT INTO `cpl` (`deskripsi`) VALUES
('Mahasiswa mampu membuat aplikasi web.'),
('Mahasiswa menguasai dasar-dasar database.');

-- Data awal Users
INSERT INTO `users` (`username`, `password`, `role`) VALUES
('superadmin', 'admin', 'admin'),
('dosen1', 'dosen123', 'dosen'),
('mahasiswa1', 'mhs123', 'mahasiswa');
