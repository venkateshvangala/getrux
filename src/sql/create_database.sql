
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `getrux`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formatted_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `political` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sublocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `mode` tinyint(3) UNSIGNED NOT NULL,
  `attachment_type_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--


--
-- Table structure for table `attachment_types`
--

CREATE TABLE `attachment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driving_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_location_address_id` int(10) UNSIGNED DEFAULT NULL,
  `license_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registered_owner_user_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `pan_id` int(10) UNSIGNED DEFAULT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drivers`
--

--
-- Table structure for table `load_postings`
--

CREATE TABLE `load_postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `material_type_id` int(10) UNSIGNED NOT NULL,
  `truck_type_id` int(10) UNSIGNED NOT NULL,
  `scheduled_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_trucks` int(10) UNSIGNED DEFAULT NULL,
  `from_address_id` int(10) UNSIGNED DEFAULT NULL,
  `to_address_id` int(10) UNSIGNED DEFAULT NULL,
  `posted_by_user_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `assigned_to_org_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `load_postings`
--


--
-- Table structure for table `load_views`
--

CREATE TABLE `load_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_posting_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_types`
--

CREATE TABLE `material_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `material_types`
--


--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

--
-- Table structure for table `offline_trips`
--

CREATE TABLE `offline_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_party` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_mobile_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered_owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `material_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_owner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_received` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `party_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offline_trips`
--


--
-- Table structure for table `online_trips`
--

CREATE TABLE `online_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_org_id` int(10) UNSIGNED NOT NULL,
  `truck_org_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_party` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_mobile_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered_owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `material_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_owner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_received` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `party_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online_trips`
--


--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `poc_user_id` int(10) UNSIGNED DEFAULT NULL,
  `service_tax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_id` int(10) UNSIGNED DEFAULT NULL,
  `tn_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_enabled` tinyint(1) NOT NULL,
  `subscription_id` int(10) UNSIGNED DEFAULT NULL,
  `subscription_expires_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `number_of_trucks` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisations`
--


--
-- Table structure for table `organisation_users`
--

CREATE TABLE `organisation_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `org_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisation_users`
--

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pans`
--

CREATE TABLE `pans` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pans`
--

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--


--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `leads` int(11) NOT NULL,
  `trucks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lead_views` int(11) NOT NULL,
  `truck_postings` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

--
-- Table structure for table `subscription_payments`
--

CREATE TABLE `subscription_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `paid_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_posting_id` int(10) UNSIGNED DEFAULT NULL,
  `truck_posting_id` int(10) UNSIGNED DEFAULT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `load_org_id` int(10) UNSIGNED NOT NULL,
  `truck_org_id` int(10) UNSIGNED NOT NULL,
  `audit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `total_payment` double DEFAULT NULL,
  `advance_payment` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_location_address_id` int(10) UNSIGNED DEFAULT NULL,
  `registered_owner_user_id` int(10) UNSIGNED NOT NULL,
  `registered_owner_pan_id` int(10) UNSIGNED DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `material_type_id` int(10) UNSIGNED NOT NULL,
  `truck_type_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trucks`
--
--
-- Table structure for table `truck_postings`
--

CREATE TABLE `truck_postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `truck_id` int(10) UNSIGNED NOT NULL,
  `from_address_id` int(10) UNSIGNED DEFAULT NULL,
  `to_address_id` int(10) UNSIGNED DEFAULT NULL,
  `availability_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `posted_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truck_postings`
--

--
-- Table structure for table `truck_types`
--

CREATE TABLE `truck_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truck_types`
--



--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `is_otp_verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--


--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--
 
--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_attachment_type_id_foreign` (`attachment_type_id`);

--
-- Indexes for table `attachment_types`
--
ALTER TABLE `attachment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`),
  ADD KEY `drivers_base_location_address_id_foreign` (`base_location_address_id`),
  ADD KEY `drivers_registered_owner_user_id_foreign` (`registered_owner_user_id`),
  ADD KEY `drivers_address_id_foreign` (`address_id`),
  ADD KEY `drivers_pan_id_foreign` (`pan_id`),
  ADD KEY `drivers_org_id_foreign` (`org_id`),
  ADD KEY `drivers_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `load_postings`
--
ALTER TABLE `load_postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_postings_material_type_id_foreign` (`material_type_id`),
  ADD KEY `load_postings_truck_type_id_foreign` (`truck_type_id`),
  ADD KEY `load_postings_from_address_id_foreign` (`from_address_id`),
  ADD KEY `load_postings_to_address_id_foreign` (`to_address_id`),
  ADD KEY `load_postings_posted_by_user_id_foreign` (`posted_by_user_id`),
  ADD KEY `load_postings_org_id_foreign` (`org_id`),
  ADD KEY `load_postings_status_id_foreign` (`status_id`),
  ADD KEY `load_postings_assigned_to_org_id_foreign` (`assigned_to_org_id`);

--
-- Indexes for table `load_views`
--
ALTER TABLE `load_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_views_load_posting_id_foreign` (`load_posting_id`),
  ADD KEY `load_views_org_id_foreign` (`org_id`);

--
-- Indexes for table `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_trips`
--
ALTER TABLE `offline_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_trips_user_id_foreign` (`user_id`);

--
-- Indexes for table `online_trips`
--
ALTER TABLE `online_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_trips_load_org_id_foreign` (`load_org_id`),
  ADD KEY `online_trips_truck_org_id_foreign` (`truck_org_id`),
  ADD KEY `online_trips_user_id_foreign` (`user_id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisations_address_id_foreign` (`address_id`),
  ADD KEY `organisations_poc_user_id_foreign` (`poc_user_id`),
  ADD KEY `organisations_pan_id_foreign` (`pan_id`),
  ADD KEY `organisations_subscription_id_foreign` (`subscription_id`),
  ADD KEY `organisations_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `organisation_users`
--
ALTER TABLE `organisation_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisation_users_org_id_foreign` (`org_id`),
  ADD KEY `organisation_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `pans`
--
ALTER TABLE `pans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_payments_org_id_foreign` (`org_id`),
  ADD KEY `subscription_payments_subscription_id_foreign` (`subscription_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_load_posting_id_foreign` (`load_posting_id`),
  ADD KEY `trips_truck_posting_id_foreign` (`truck_posting_id`),
  ADD KEY `trips_status_id_foreign` (`status_id`),
  ADD KEY `trips_load_org_id_foreign` (`load_org_id`),
  ADD KEY `trips_truck_org_id_foreign` (`truck_org_id`),
  ADD KEY `trips_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trucks_base_location_address_id_foreign` (`base_location_address_id`),
  ADD KEY `trucks_registered_owner_user_id_foreign` (`registered_owner_user_id`),
  ADD KEY `trucks_registered_owner_pan_id_foreign` (`registered_owner_pan_id`),
  ADD KEY `trucks_driver_id_foreign` (`driver_id`),
  ADD KEY `trucks_material_type_id_foreign` (`material_type_id`),
  ADD KEY `trucks_truck_type_id_foreign` (`truck_type_id`),
  ADD KEY `trucks_status_id_foreign` (`status_id`),
  ADD KEY `trucks_org_id_foreign` (`org_id`),
  ADD KEY `trucks_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `truck_postings`
--
ALTER TABLE `truck_postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truck_postings_truck_id_foreign` (`truck_id`),
  ADD KEY `truck_postings_from_address_id_foreign` (`from_address_id`),
  ADD KEY `truck_postings_to_address_id_foreign` (`to_address_id`),
  ADD KEY `truck_postings_org_id_foreign` (`org_id`),
  ADD KEY `truck_postings_status_id_foreign` (`status_id`),
  ADD KEY `truck_postings_posted_by_user_id_foreign` (`posted_by_user_id`);

--
-- Indexes for table `truck_types`
--
ALTER TABLE `truck_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attachment_types`
--
ALTER TABLE `attachment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `load_postings`
--
ALTER TABLE `load_postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `load_views`
--
ALTER TABLE `load_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `offline_trips`
--
ALTER TABLE `offline_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `online_trips`
--
ALTER TABLE `online_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `organisation_users`
--
ALTER TABLE `organisation_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pans`
--
ALTER TABLE `pans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `truck_postings`
--
ALTER TABLE `truck_postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `truck_types`
--
ALTER TABLE `truck_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_attachment_type_id_foreign` FOREIGN KEY (`attachment_type_id`) REFERENCES `attachment_types` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `drivers_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `drivers_base_location_address_id_foreign` FOREIGN KEY (`base_location_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `drivers_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `drivers_pan_id_foreign` FOREIGN KEY (`pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `drivers_registered_owner_user_id_foreign` FOREIGN KEY (`registered_owner_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_postings`
--
ALTER TABLE `load_postings`
  ADD CONSTRAINT `load_postings_assigned_to_org_id_foreign` FOREIGN KEY (`assigned_to_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `load_postings_from_address_id_foreign` FOREIGN KEY (`from_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `load_postings_material_type_id_foreign` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`),
  ADD CONSTRAINT `load_postings_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `load_postings_posted_by_user_id_foreign` FOREIGN KEY (`posted_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `load_postings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `load_postings_to_address_id_foreign` FOREIGN KEY (`to_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `load_postings_truck_type_id_foreign` FOREIGN KEY (`truck_type_id`) REFERENCES `truck_types` (`id`);

--
-- Constraints for table `load_views`
--
ALTER TABLE `load_views`
  ADD CONSTRAINT `load_views_load_posting_id_foreign` FOREIGN KEY (`load_posting_id`) REFERENCES `load_postings` (`id`),
  ADD CONSTRAINT `load_views_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`);

--
-- Constraints for table `offline_trips`
--
ALTER TABLE `offline_trips`
  ADD CONSTRAINT `offline_trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `online_trips`
--
ALTER TABLE `online_trips`
  ADD CONSTRAINT `online_trips_load_org_id_foreign` FOREIGN KEY (`load_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `online_trips_truck_org_id_foreign` FOREIGN KEY (`truck_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `online_trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `organisations`
--
ALTER TABLE `organisations`
  ADD CONSTRAINT `organisations_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `organisations_pan_id_foreign` FOREIGN KEY (`pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `organisations_poc_user_id_foreign` FOREIGN KEY (`poc_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Constraints for table `organisation_users`
--
ALTER TABLE `organisation_users`
  ADD CONSTRAINT `organisation_users_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `organisation_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD CONSTRAINT `subscription_payments_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `subscription_payments_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trips_load_org_id_foreign` FOREIGN KEY (`load_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trips_load_posting_id_foreign` FOREIGN KEY (`load_posting_id`) REFERENCES `load_postings` (`id`),
  ADD CONSTRAINT `trips_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `trips_truck_org_id_foreign` FOREIGN KEY (`truck_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trips_truck_posting_id_foreign` FOREIGN KEY (`truck_posting_id`) REFERENCES `truck_postings` (`id`);

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `trucks_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trucks_base_location_address_id_foreign` FOREIGN KEY (`base_location_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `trucks_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `trucks_material_type_id_foreign` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`),
  ADD CONSTRAINT `trucks_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trucks_registered_owner_pan_id_foreign` FOREIGN KEY (`registered_owner_pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `trucks_registered_owner_user_id_foreign` FOREIGN KEY (`registered_owner_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trucks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `trucks_truck_type_id_foreign` FOREIGN KEY (`truck_type_id`) REFERENCES `truck_types` (`id`);

--
-- Constraints for table `truck_postings`
--
ALTER TABLE `truck_postings`
  ADD CONSTRAINT `truck_postings_from_address_id_foreign` FOREIGN KEY (`from_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `truck_postings_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `truck_postings_posted_by_user_id_foreign` FOREIGN KEY (`posted_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `truck_postings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `truck_postings_to_address_id_foreign` FOREIGN KEY (`to_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `truck_postings_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`);

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
