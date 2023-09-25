-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 15:08:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `asistencia` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `correo_electronico`, `asistencia`, `created_at`, `updated_at`) VALUES
(3, 'Zachary', 'McGlynn', 'brekke.daphnee@example.com', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(4, 'Dahlia', 'Mohr', 'valerie59@example.com', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(5, 'Winnifred', 'Towne', 'yschmeler@example.org', 'T', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(6, 'Matilde', 'Wisoky', 'emills@example.org', 'T', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(7, 'Johann', 'Schimmel', 'delia.cronin@example.com', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(8, 'Osvaldo', 'Olson', 'shanie.tillman@example.org', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(9, 'Elmer', 'Reinger', 'kerluke.kianna@example.org', 'F', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(10, 'Isabell', 'Crona', 'pollich.jalyn@example.net', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_curso`
--

INSERT INTO `alumno_curso` (`id`, `alumno_id`, `curso_id`, `created_at`, `updated_at`) VALUES
(5, 4, 4, '2023-09-24 00:33:58', '2023-09-24 00:33:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('A','T','F') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `alumno_id`, `curso_id`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '2001-09-29', 'A', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(2, 6, 5, '1975-11-26', 'T', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(3, 6, 5, '2002-11-16', 'T', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(4, 1, 4, '2001-06-23', 'T', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(5, 2, 5, '1978-04-26', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(6, 10, 3, '2000-03-02', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(7, 10, 2, '2021-09-26', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(8, 9, 4, '2013-03-21', 'F', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(9, 3, 3, '1973-06-29', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(10, 5, 3, '1979-09-26', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(11, 4, 5, '2006-06-16', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(12, 1, 1, '1981-10-08', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(13, 10, 5, '1987-05-30', 'F', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(14, 7, 2, '2000-05-30', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(15, 10, 4, '1994-10-30', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(16, 5, 3, '2015-03-12', 'F', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(17, 1, 3, '1983-09-05', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(18, 3, 2, '1986-09-17', 'A', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(19, 6, 2, '1974-11-16', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(20, 5, 4, '2017-07-24', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(21, 5, 5, '1994-07-10', 'F', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(22, 2, 1, '2013-12-29', 'T', '2023-09-23 04:29:57', '2023-09-23 04:29:57'),
(23, 8, 4, '2018-06-03', 'T', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(24, 9, 1, '1981-01-26', 'T', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(25, 8, 5, '1987-06-12', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(26, 5, 4, '1988-07-27', 'F', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(27, 10, 2, '1991-06-18', 'T', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(28, 1, 2, '2006-02-23', 'F', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(29, 3, 4, '1970-06-01', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(30, 7, 5, '1981-10-04', 'F', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(31, 5, 3, '2022-01-01', 'F', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(32, 9, 4, '1996-10-02', 'F', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(33, 3, 3, '2018-03-03', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(34, 9, 5, '1991-01-25', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(35, 4, 4, '1976-09-26', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(36, 2, 3, '2010-07-31', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(37, 10, 1, '2012-04-12', 'T', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(38, 5, 2, '1995-05-16', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(39, 10, 4, '2023-07-27', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(40, 7, 3, '1972-02-20', 'A', '2023-09-23 04:29:58', '2023-09-23 04:29:58'),
(41, 2, 1, '1986-05-06', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(42, 8, 1, '1978-02-14', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(43, 2, 3, '2020-05-23', 'T', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(44, 1, 2, '2001-08-27', 'A', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(45, 8, 1, '2021-01-06', 'T', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(46, 7, 2, '2009-11-07', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(47, 4, 4, '1979-08-11', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(48, 8, 5, '1976-06-15', 'A', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(49, 7, 4, '2020-08-24', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(50, 1, 2, '1991-10-17', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(51, 4, 2, '2003-07-13', 'T', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(52, 4, 3, '1994-03-05', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(53, 3, 5, '2021-08-04', 'A', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(54, 1, 4, '1976-12-01', 'F', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(55, 3, 4, '2018-06-24', 'T', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(56, 4, 2, '2013-04-25', 'A', '2023-09-23 04:29:59', '2023-09-23 04:29:59'),
(57, 7, 3, '1986-08-23', 'F', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(58, 7, 3, '2004-05-25', 'T', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(59, 9, 1, '2015-01-17', 'A', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(60, 1, 5, '2000-06-08', 'A', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(61, 4, 4, '1986-03-07', 'A', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(62, 1, 1, '1975-10-15', 'T', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(63, 7, 4, '1992-10-10', 'A', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(64, 10, 2, '2022-02-08', 'T', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(65, 2, 2, '2010-09-03', 'T', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(66, 5, 4, '1979-07-03', 'F', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(67, 7, 3, '1979-01-15', 'A', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(68, 6, 2, '1992-06-28', 'T', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(69, 2, 5, '1986-08-12', 'F', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(70, 8, 4, '2003-10-30', 'F', '2023-09-23 04:30:00', '2023-09-23 04:30:00'),
(71, 4, 3, '2010-07-31', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(72, 5, 2, '2016-05-22', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(73, 9, 2, '1982-06-23', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(74, 4, 4, '1992-06-26', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(75, 9, 4, '1979-07-20', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(76, 2, 2, '1977-05-21', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(77, 2, 3, '2007-05-03', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(78, 5, 1, '1973-01-03', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(79, 5, 1, '2014-09-14', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(80, 9, 1, '1983-10-01', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(81, 1, 1, '1981-06-15', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(82, 4, 5, '1988-02-08', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(83, 8, 4, '1973-03-09', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(84, 5, 5, '2016-08-05', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(85, 6, 4, '1988-03-09', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(86, 2, 1, '2009-09-06', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(87, 2, 5, '2015-08-04', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(88, 6, 1, '1991-04-11', 'T', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(89, 3, 5, '1987-08-03', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(90, 8, 4, '1987-04-05', 'A', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(91, 8, 3, '1971-05-23', 'F', '2023-09-23 04:30:01', '2023-09-23 04:30:01'),
(92, 6, 1, '2005-04-25', 'F', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(93, 4, 2, '1983-02-09', 'T', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(94, 1, 4, '1970-07-28', 'T', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(95, 9, 5, '1994-11-07', 'A', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(96, 5, 5, '2007-02-22', 'F', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(97, 10, 2, '1998-10-22', 'T', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(98, 5, 1, '1977-02-02', 'F', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(99, 3, 2, '1983-06-23', 'F', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(100, 6, 1, '1998-08-26', 'T', '2023-09-23 04:30:02', '2023-09-23 04:30:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'quis', 'Autem labore aliquid eos.', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(2, 'omnis', 'Nam neque inventore iure odio ducimus vel.', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(3, 'consequatur', 'Odit illum aspernatur consequatur tempore voluptate incidunt eum.', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(4, 'ningbiu', 'Autem ccgfdgfdc aliquid eos.', '2023-09-23 04:30:02', '2023-09-23 05:59:05'),
(5, 'omnis', 'Qui ipsum ut eveniet assumenda consequatur.', '2023-09-23 04:30:02', '2023-09-23 04:30:02'),
(6, 'nubgivv', 'Autem ccgfdgfdc aliquid eos.', '2023-09-23 05:57:29', '2023-09-23 05:57:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_docente`
--

CREATE TABLE `curso_docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `docente_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellido`, `correo_electronico`, `created_at`, `updated_at`) VALUES
(1, 'Forrest', 'Johnston', 'lonnie.willms@example.net', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(2, 'Noelia', 'Gleichner', 'russell00@example.net', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(3, 'Bennie', 'Spinka', 'thiel.hobart@example.org', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(4, 'Rudolph', 'Bogisich', 'enid.moore@example.com', '2023-09-23 04:29:56', '2023-09-23 04:29:56'),
(5, 'Joe', 'Keeling', 'edward53@example.org', '2023-09-23 04:29:56', '2023-09-23 04:29:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2023_09_19_215449_create_docentes_table', 1),
(30, '2023_09_19_215522_create_alumnos_table', 1),
(31, '2023_09_19_215538_create_cursos_table', 1),
(32, '2023_09_19_221408_create_alumno_curso_table', 1),
(33, '2023_09_19_223028_create_curso_docente_table', 1),
(34, '2023_09_20_231755_create_asistencias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos_correo_electronico_unique` (`correo_electronico`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_curso_alumno_id_foreign` (`alumno_id`),
  ADD KEY `alumno_curso_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_docente_docente_id_foreign` (`docente_id`),
  ADD KEY `curso_docente_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_correo_electronico_unique` (`correo_electronico`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `alumno_curso_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumno_curso_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  ADD CONSTRAINT `curso_docente_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `curso_docente_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
