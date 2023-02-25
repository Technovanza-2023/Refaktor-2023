-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 08:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_sol_db`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_20_014142_create_users_accounts_table', 1),
(6, '2023_02_22_024645_create_services_table', 2),
(7, '2023_02_22_030154_create_services_details_table', 3),
(8, '2023_02_22_042319_add_icons_and_images_to_services_table', 4),
(9, '2023_02_22_083157_create_technicians_table', 5),
(10, '2023_02_22_085135_create_orders_table', 6),
(11, '2023_02_23_044719_add_user_contact_in_order_table_and_technician_name_in_order_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `u_address` varchar(255) NOT NULL,
  `t_id` bigint(20) UNSIGNED NOT NULL,
  `o_amount` varchar(255) NOT NULL,
  `rapid_service` tinyint(1) NOT NULL DEFAULT 0,
  `service_date` date DEFAULT NULL,
  `time_slote` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) NOT NULL,
  `booking_time` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `u_id`, `u_address`, `t_id`, `o_amount`, `rapid_service`, `service_date`, `time_slote`, `order_type`, `order_no`, `booking_time`, `phone_number`, `t_name`, `updated_at`, `created_at`) VALUES
(1, 1, 'fjlakfdaslkflda', 3, '1062', 0, '2023-02-24', '4pm-6pm', NULL, 'pay_LJrzddyzkiPATw', NULL, '9432942394', 'Sandeep Pandey', '2023-02-23 06:00:38', '2023-02-23 06:00:38'),
(2, 1, 'jfklsajkl;fal;ks', 8, '1062', 0, '2023-02-24', '4pm-6pm', NULL, 'pay_LJygGg0WfIoDCH', NULL, '8099084389', 'Omkar Mane', '2023-02-23 12:33:07', '2023-02-23 12:33:07'),
(3, 1, 'nflskandklf', 8, '1062', 0, '2023-02-24', '7pm-11pm', NULL, 'pay_LK0BE7JKfnNBfG', NULL, '0349280940', 'Omkar Mane', '2023-02-23 14:01:08', '2023-02-23 14:01:08'),
(4, 1, 'mjflkasm/lkmf/l;as', 8, '1062', 0, '2023-02-24', '4pm-6pm', NULL, 'pay_LK0E4iqqwPGYOb', NULL, '8909888089', 'Omkar Mane', '2023-02-23 14:03:50', '2023-02-23 14:03:50'),
(5, 2, 'fjlkadsjflkajlk', 4, '1062', 0, '2023-02-26', '10am-1pm', NULL, 'pay_LKOe48MVFt0Nqb', NULL, '9083849023', 'Altaf Shaikh', '2023-02-24 13:57:11', '2023-02-24 13:57:11'),
(6, 2, 'dlksankldsanldsa', 9, '1062', 0, '2023-02-25', '10am-1pm', NULL, 'pay_LKOmFCG5q3ZgmV', NULL, '8904238904', 'Utkarsh Patil', '2023-02-24 14:04:50', '2023-02-24 14:04:50'),
(7, 2, 'lkfdsa;klnfnaso;jnfds', 4, '1062', 0, '2023-02-26', '4pm-6pm', NULL, 'pay_LKOymW9Ynx4WwX', '2023-02-24 14:16:41', '2321321321', 'Altaf Shaikh', '2023-02-24 14:16:41', '2023-02-24 14:16:41'),
(8, 2, 'jfjasdklfjldasfafd', 9, '1062', 0, '2023-02-26', '4pm-6pm', NULL, 'pay_LKZiExmV4BDeNk', '2023-02-25 00:46:32', '9888888888', 'Utkarsh Patil', '2023-02-25 00:46:32', '2023-02-25 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `s_category` varchar(500) NOT NULL,
  `s_des` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `s_category`, `s_des`, `icon`, `image`) VALUES
(1, 'Appliances', 'From refrigerators to washing machines, our technicians are trained to repair a wide range of household appliances.', 'https://img.icons8.com/external-filled-outline-icons-maxicons/44/null/external-appliance-insurance-filled-outline-filled-outline-icons-maxicons.png', 'services/service_appliance.jpg\r\n'),
(2, 'Computers', 'We offer repairs for all types of computers, including laptops, desktops, and all-in-one PCs. Whether you have a hardware or software issue, we can help.', 'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/44/null/external-computer-augmented-reality-flaticons-lineal-color-flat-icons.png', 'services/services_technician-repairing-computer.jpg'),
(3, 'Mobile Devices', 'From cracked screens to battery replacements, our team can fix any issue with your smartphone or tablet.', 'https://img.icons8.com/external-flaticons-flat-flat-icons/44/000000/external-devices-devices-flaticons-flat-flat-icons-2.png', 'services\\services_mobile-repairing.jpg'),
(4, 'Electricians', 'Our team of experts can fix any issue with your TV, home theater system, or other entertainment equipment.', 'https://img.icons8.com/external-itim2101-flat-itim2101/40/000000/external-electrician-male-occupation-avatar-itim2101-flat-itim2101.png', 'services\\ceiling-fan-repair22.jpg'),
(5, 'Plumbers', 'Fix all your water leakage problems.', 'https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/64/null/external-plumber-plumbing-icongeek26-linear-colour-icongeek26.png', 'services\\Pub.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services_details`
--

CREATE TABLE `services_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `service_type` varchar(1000) DEFAULT NULL,
  `service_info` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_details`
--

INSERT INTO `services_details` (`id`, `s_id`, `service_type`, `service_info`) VALUES
(1, 1, 'Our Services\r\n', 'We offer a wide range of repair services for all your devices and equipment. Our expert technicians provide fast, reliable, and affordable repairs to get your appliance back to working like new.'),
(2, 1, 'Refrigerators', 'From cooling issues to broken door seals, our team can fix any issue with your refrigerator.\r\n'),
(3, 1, 'Washing Machines', 'Whether it\'s a leaky hose or a malfunctioning control board, our technicians are trained to diagnose and repair issues with your washing machine.\r\n'),
(4, 1, 'Dryers', 'From broken heating elements to faulty thermostats, we can fix any issue with your dryer.\r\n'),
(5, 1, 'Dishwashers\r\n', 'If your dishwasher is leaking or not cleaning your dishes properly, our team can help.\r\n'),
(6, 1, 'Ovens and Ranges', 'Our technicians can fix any issue with your oven or range, including broken burners, faulty thermostats, and more.'),
(7, 1, 'Microwaves', 'From broken doors to malfunctioning controls, we can fix any issue with your microwave.\r\n'),
(8, 2, 'Our Services', 'We offer a wide range of repair services for all your devices and equipment. Our expert technicians provide fast, reliable, and affordable repairs to get your computer device back to working like new.\r\n'),
(9, 2, 'Desktops', 'From hardware issues to software problems, we can diagnose and repair any issue with your desktop computer.'),
(10, 2, 'Laptops', 'If your laptop is running slow, has a virus, or has a broken screen, our team can help get it running like new again.\r\n'),
(11, 2, 'Macs', 'Our technicians are trained to handle all types of issues with Macs, from hardware to software problems.'),
(12, 2, 'Printers', 'From paper jams to connection issues, our technicians can fix any problem with your printer.');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `t_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `ratting` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 1,
  `t_img` varchar(255) NOT NULL,
  `t_place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`t_id`, `name`, `s_id`, `lat`, `lng`, `ratting`, `contact`, `verified`, `t_img`, `t_place`) VALUES
(1, 'Suraj Singh', 1, '19.202130706369797', '72.9083292536621', '4.5', '9876456780', 1, 'blob:https://web.whatsapp.com/a4da082f-9236-40dc-bc2d-64a5012a03df', 'JP Road, Nehru Nagar, parsi towers , Kandivli'),
(2, 'Kunal Kadam', 2, '19.01026745956411', '72.81889152515137', '4.6', '9878954321', 1, 'https://storage.cloudconvert.com/tasks/e3c08421-8ca6-4da5-8a76-b942142f4c5b/electrician.webp?AWSAccessKeyId=cloudconvert-production&Expires=1677242102&Signature=3KdOdDUg5YqzS8o1jXBjqoNbExg%3D&response-content-disposition=inline%3B%20filename%3D%22electric', 'Naresh Patil Chowk Amphitheatre, Lion Garden, Sir Pochkhanawala Rd, beside the Lion\'s Garden, Worli, Maharashtra 400030'),
(3, 'Sandeep Pandey', 1, '19.20829080326903', '72.85030770825195', '4.4', '7893451234', 1, '', '67, Swami Vivekanand Marg, Fateh Baug, Mumbai 400067, Maharashtra\r\nFateh Baug Mumbai India'),
(4, 'Altaf Shaikh', 1, '19.025117155135884', '72.83786010730469', '4.0', '7645986564', 1, '', 'Santosh Apartment (Concrete Group), Dr Madhukar B Raut Marg, Dadar West, Shivaji Park, 400028'),
(5, 'Pranjal Kumar', 1, '19.03469166504145', '72.87820053088868', '4.2', '8693457568', 1, '', '2VMH+V6P, Wadala Truck Terminal, Sion, Mumbai, Maharashtra 400037, India'),
(6, 'Laxman Sharma', 1, '19.014815753794483', ' 72.8862190246582', '4.5', '9087563423', 1, '', 'Chembur , Mahul Village , Room No 402, Tulsi Terrace building, Mahul Village, Ambapada, Mumbai, 400074'),
(7, 'Ramesh Sawant', 1, '18.9963903159904', '72.84781646716797', '4.3', '8989645346', 1, '', 'XRWX+J5J, Sindhu Nagar, Parel, Mumbai, Maharashtra 400015, India'),
(8, 'Omkar Mane', 1, '19.009254655197232', '72.85686994689496', '3.8', '7765987456', 1, '', 'Prashant Kashid Block-7, C BLOCK, Tejas Nagar Colony, Wadala East, Mumbai, 400037'),
(9, 'Utkarsh Patil', 2, '19.010348609045767', '72.84300994861329', '3.9', '9987344562', 1, '', '218/B, Dr Baba Saheb Ambedkar Rd, Hindmata, Radhika Saikripa Co-op Society, Naigaon, 400014'),
(10, 'Utkarsh Patil', 2, '19.0323386586702', '72.84996223437989', '4.1', '7954675673', 1, '', '3, Takandas Kataria Marg, Sundar Kamla Nagar, Western Railway Colony, Hanuman Nagar, Matunga East, 400019'),
(11, 'Utkarsh Patil', 2, '19.02560799192205', '72.88905143737793', '4.4', '7908679456', 1, '', 'Shree Ganesh patel nagar new mazagoan dock Ltd, Mahul Rd, chembur, 2VGQ+8GH, Ganesh Patel Nagar, Ambapada, Mumbai,400074'),
(12, 'Shyam Prajapati', 3, '19.021871433333217', '72.87347984302247', '4.0', '6565896734', 1, '', '2VCF+QC6, Azad Mohalla, new bharni naka, Wadala, Mumbai, Maharashtra 400037, India'),
(13, 'Pravin Tiram', 3, '19.020171388124552', '72.85368919372559', '4.0', '8945896734', 1, '', 'Mancherji Joshi Five Gardens, Mancherji E Joshi Chowk, Central Railway Colony, Dadar East, Dadar, 400014'),
(14, 'Altaf Shaikh', 3, '19.031855809437662', '72.89608955383301', '4.0', '9845236564', 1, '', '2VJW+PFF, Vasi Naka, Gurudwara, S V Patel Nagar, Chembur, Mumbai, Maharashtra 400074, India'),
(15, 'Umar Kan', 4, '19.024386873257548', '72.853223800542', '4.4', '8845998563', 1, '', 'Gautam Niwas, Dr Baba Saheb Ambedkar Rd, Matunga East, Mumbai, Maharashtra 400019, India'),
(16, 'Darshan Raut', 4, '19.01213388762378', '72.86403846729004', '4.2', '4545998589', 1, '', '2V67+WPJ, BPT Colony, Wadala, Mumbai, Maharashtra 400003, India'),
(17, 'Yash Basil', 5, '19.02568514993342', '72.83794593799317', '4.2', '7645989564', 1, '', 'Shivaji Park, 2RGQ+43W, Dadar West, Shivaji Park, Mumbai, Maharashtra 400028, India'),
(18, 'Pratik Lad', 5, '19.0339614252524', '72.86721420276368', '4.5', '9945989534', 1, '', '2VM8+JP7, Mukundrao Ambedkar Rd, Kokri Agar, Sion, Mumbai, Maharashtra 400022, India');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_accounts`
--

CREATE TABLE `users_accounts` (
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_accounts`
--

INSERT INTO `users_accounts` (`u_id`, `username`, `email_id`, `password`, `updated_at`, `created_at`) VALUES
(1, 'asd', 'asd@gmail.co', '123', NULL, NULL),
(2, 'manitest mani', 'mmanitest@gmail.com', '$2y$10$gL7OdPUY1si6y0zFS9CdQ.CDnAQTachBS7UwyXOfIUUpMItAKM/4O', '2023-02-24 12:56:34', '2023-02-24 12:56:34'),
(3, 'M M', 'manishsewamahto090802@gmail.com', '$2y$10$T9VQd.FFKxefZ.D1BurW2.pMHnuKmEVYrOsSypfGb.ZKG/lF6HEma', '2023-02-24 13:22:26', '2023-02-24 13:22:26'),
(4, 'asds', 'dastutodru@gufum.com', '11', '2023-02-24 16:35:40', '2023-02-24 16:35:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `orders_u_id_foreign` (`u_id`),
  ADD KEY `orders_t_id_foreign` (`t_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `services_details`
--
ALTER TABLE `services_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_details_s_id_foreign` (`s_id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `technicians_s_id_foreign` (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_accounts`
--
ALTER TABLE `users_accounts`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_details`
--
ALTER TABLE `services_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `t_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_accounts`
--
ALTER TABLE `users_accounts`
  MODIFY `u_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `technicians` (`t_id`),
  ADD CONSTRAINT `orders_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `users_accounts` (`u_id`);

--
-- Constraints for table `services_details`
--
ALTER TABLE `services_details`
  ADD CONSTRAINT `services_details_s_id_foreign` FOREIGN KEY (`s_id`) REFERENCES `services` (`s_id`);

--
-- Constraints for table `technicians`
--
ALTER TABLE `technicians`
  ADD CONSTRAINT `technicians_s_id_foreign` FOREIGN KEY (`s_id`) REFERENCES `services` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
