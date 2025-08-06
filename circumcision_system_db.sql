-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 06, 2025 at 12:03 PM
-- Server version: 8.0.42
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `circumcision_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `patient_id` int NOT NULL,
  `status` enum('pending','completed','canceled','') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `appointment_date` date NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consent_uploads`
--

CREATE TABLE `consent_uploads` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `uploaded_documents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consent_uploads`
--

INSERT INTO `consent_uploads` (`id`, `user_id`, `user`, `file_name`, `created_at`, `uploaded_documents`) VALUES
(1, 3, '', 'uploads/consent_1746666761.pdf', '2025-05-08 01:12:41.155430', NULL),
(2, 4, '', 'uploads/consent_1746675434.pdf', '2025-05-08 03:37:14.807235', NULL),
(3, 3, '', 'uploads/consent_1746692575.pdf', '2025-05-08 08:22:55.723664', NULL),
(4, 3, '', 'uploads/consent_1746693036.pdf', '2025-05-08 08:30:36.318161', NULL),
(5, 5, '1', 'uploads/consent_1746861953.pdf', '2025-05-10 07:25:53.836852', 'uploads/consent_doc_1746861953_0.jpg'),
(7, 5, 'Patient 1', 'uploads/consent_1746868733.pdf', '2025-05-10 09:18:53.627047', 'uploads/consent_doc_1746868733_0.jpg'),
(8, 5, 'Child', 'uploads/consent_1746869860.pdf', '2025-05-10 09:37:40.059823', 'uploads/consent_doc_1746869860_0.jpg'),
(9, 6, 'jayze', 'uploads/consent_1747575755.pdf', '2025-05-18 13:42:35.300906', 'uploads/consent_doc_1747575755_0.jpg'),
(10, 6, 'Abby Isidro', 'uploads/consent_1747637587.pdf', '2025-05-19 06:53:07.261543', NULL),
(11, 8, 'John Santos', 'uploads/consent_1747650743.pdf', '2025-05-19 10:32:23.774976', 'uploads/consent_doc_1747650743_0.jpg'),
(12, 10, 'Marco P. Rodriguez', 'uploads/consent_1747973304.pdf', '2025-05-23 04:08:24.534550', 'uploads/consent_doc_1747973304_0.jpg'),
(13, 6, 'Jewel Laxa', 'uploads/consent_1753865226.pdf', '2025-07-30 08:47:06.124405', NULL),
(14, 6, 'Abby ', 'uploads/consent_1753946610.pdf', '2025-07-31 07:23:30.165847', NULL),
(15, 11, 'John', 'uploads/consent_1754369632.pdf', '2025-08-05 04:53:52.473309', 'uploads/consent_doc_1754369632_0.pdf'),
(16, 11, 'John', 'uploads/consent_1754374418.pdf', '2025-08-05 06:13:38.492776', 'uploads/consent_doc_1754374418_0.pdf'),
(17, 12, 'Wuwa', 'uploads/consent_1754376544.pdf', '2025-08-05 06:49:04.617716', 'uploads/consent_doc_1754376544_0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `license_number` int NOT NULL,
  `contract` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `last_name`, `first_name`, `specialization`, `license_number`, `contract`) VALUES
(15, 'Laxa', 'Rovem', 'general', 3112421, 1),
(16, 'Luigi', 'Mario', 'General', 123344, 2),
(17, 'Kennedy', 'Leon', 'Surgeon', 12345, 3);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`) VALUES
(5, 'What\'s the average healing time for circumcision?', '2 to 3 weeks is the normal healing time.', '2025-05-19 08:27:09.160142'),
(7, 'What is circumcision?', 'Circumcision is a surgical procedure that removes the foreskin — the skin covering the head (glans) of the penis.', '2025-05-23 05:16:18.617169'),
(8, 'At what age is circumcision usually performed?', 'It can be done at any age, but it\'s commonly performed on newborns, during childhood (especially in certain cultures), or even in adulthood for medical or personal reasons.', '2025-05-23 05:16:38.325270'),
(9, 'Is circumcision painful?', 'When performed on newborns, local anesthesia is used to reduce pain. Older children and adults receive more advanced anesthesia and pain management, but some discomfort after the procedure is expected.', '2025-05-23 05:16:59.147845'),
(10, 'Why do people choose circumcision?', 'Reasons vary and may include religious or cultural traditions, hygiene, potential health benefits (like reduced risk of certain infections), or personal preference.', '2025-05-23 05:17:36.966440'),
(11, 'What are the health benefits of circumcision?', 'Circumcision may lower the risk of urinary tract infections, sexually transmitted infections (including HIV), penile cancer, and foreskin-related issues like phimosis.', '2025-05-23 05:17:58.679307'),
(12, 'What are the health benefits of circumcision?', 'Circumcision may lower the risk of urinary tract infections, sexually transmitted infections (including HIV), penile cancer, and foreskin-related issues like phimosis.', '2025-05-23 05:18:24.598412');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birth_date` date NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `user_id`, `first_name`, `last_name`, `birth_date`, `created_at`) VALUES
(3, 5, 'Child', '', '2011-01-01', '2025-05-10 09:37:40.057765'),
(4, 6, 'jayze', '', '2003-12-12', '2025-05-18 13:42:35.299337'),
(5, 6, 'Abby', 'Isidro', '2003-12-10', '2025-05-19 06:53:07.258468'),
(6, 8, 'John', 'Santos', '2025-05-19', '2025-05-19 10:32:23.773006'),
(7, 10, 'Marco', 'P. Rodriguez', '2019-04-08', '2025-05-23 04:08:24.533436'),
(8, 6, 'Jewel', 'Laxa', '2025-07-30', '2025-07-30 08:47:06.120789'),
(9, 6, 'Abby', '', '2025-07-31', '2025-07-31 07:23:30.163740'),
(10, 11, 'John', '', '2025-08-06', '2025-08-05 04:53:52.468621'),
(11, 11, 'John', '', '2025-08-06', '2025-08-05 06:13:38.490961'),
(12, 12, 'Wuwa', '', '2025-08-05', '2025-08-05 06:49:04.615488');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `patient_id` int NOT NULL,
  `time_slot` datetime NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` enum('pending','approved','denied') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `doctor_id`, `patient_id`, `time_slot`, `create_at`, `status`) VALUES
(10, 15, 4, '2025-05-19 13:00:00', '2025-05-18 13:43:22.000000', 'approved'),
(11, 16, 6, '2025-05-20 09:00:00', '2025-05-19 10:33:33.000000', 'approved'),
(12, 17, 7, '2025-05-30 13:00:00', '2025-05-23 04:12:02.000000', 'approved'),
(13, 15, 4, '2025-08-01 10:00:00', '2025-07-30 09:21:24.000000', 'pending'),
(14, NULL, 12, '2025-08-06 10:30:00', '2025-08-05 06:50:27.000000', 'denied');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`, `role`) VALUES
(3, 'alexa conan', 'conanalexa@gmail.com', 'tita_beth', '$2y$10$qwS2VrKfJ8emGfQHiZVhaeVypEoXeqV8sPmPKaxIXC2Wzh1V.I3QS', '2025-05-08 01:01:31.285591', ''),
(4, 'alexa conan', 'alexaconang@gmail.com', 'tito_alexa', '$2y$10$i3Q0hcIHQcOyecBoSt0Uu.JtbRDWcOxOvwdWeqvTT3A5rOV15/mOa', '2025-05-08 03:34:36.295111', ''),
(5, 'j', 'jc@jc.com', 'j', '$2y$10$tQt4pLiKVznFTWz7v44a.eUP.EQL5BdYBZvKlWTXK37zlRCsT9w1C', '2025-05-10 06:19:11.301173', 'user'),
(6, 'jayz laxa', 'jayzelynlaxa@gmail.com', 'blue', '$2y$10$QV1jRQw6TWY8k3x7hya/2O8eIsERAuykkHoaY4ICwxnH1zCbJxR3O', '2025-05-18 13:40:40.948495', 'user'),
(7, 'Rovem Laxa', 'rov@gmail.com', 'rov', '$2y$10$iYdTfpvKHcZnlLaBjaPuIuUETzaeH111mfHx5.K6EeoEyQi5/kKNa', '2025-05-19 06:54:31.692354', 'user'),
(8, 'Maria Santos', 'maria.santos@example.com', 'maria_s', '$2y$10$HL9kT670Ymz8zJbB5B36LuMwc3ySmF8bFbMWLdF9FA33nbJ6DAwGa', '2025-05-19 10:27:38.628191', 'user'),
(9, 'abc', 'jdetor@gmail.com', 'abc', '$2y$10$bz8IRWx3Dtz3I0NzOPv0Pea/QWwNPVw9qPXi83jJZg8wVlLNAZjU2', '2025-05-19 10:53:12.808296', 'user'),
(10, 'Corazon P. Rodriguez', 'cp@gmail.com', 'cpr', '$2y$10$aFWtTpURpI5Zaz2PS6XZr.OxZSwQ0xX8O.rST4FaJIIKQ1rmm96My', '2025-05-23 04:05:29.200047', 'user'),
(11, 'John Etor', 'johndavinderetor@gmail.com', 'johndetor', '$2y$10$hUhtXbrA6P.LkFjEs6ciwOWRixIG88jqpcxZnWtmYkrFLo/EDjDXO', '2025-08-05 04:50:21.817511', 'user'),
(12, 'Phrolova', 'phr@gmail.com', 'phrolova', '$2y$10$yeQI4FkKaySqLr/mQUNNGONi9dewCKtmvHSfZCV0O2ZxdBfjhnWGa', '2025-08-05 06:46:00.502686', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `consent_uploads`
--
ALTER TABLE `consent_uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consent_uploads`
--
ALTER TABLE `consent_uploads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
