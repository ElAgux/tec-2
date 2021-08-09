-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2021 a las 06:36:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `tec_insc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_insc` tinyint(4) NOT NULL,
  `especialidad_insc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tur_insc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cond_insc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pase_insc` tinyint(1) DEFAULT NULL,
  `inte_insc` tinyint(1) DEFAULT NULL,
  `id_establecimiento` bigint(20) UNSIGNED DEFAULT NULL,
  `tipdocument_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrodocument_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadodocumento_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apell_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomb_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bir_dat_e` date NOT NULL,
  `bir_pla_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nac_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dom_calle_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dom_nro_e` int(11) DEFAULT NULL,
  `dom_piso_e` int(11) DEFAULT NULL,
  `dom_torre_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_dept_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_entre_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dom_otro_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prov_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loc_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codpost_e` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefo_fam` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefocelular_fam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `her_tie_e` tinyint(1) DEFAULT NULL,
  `her_can_e` tinyint(3) UNSIGNED DEFAULT NULL,
  `her_este_e` tinyint(3) UNSIGNED DEFAULT NULL,
  `hog_can_e` smallint(5) UNSIGNED DEFAULT NULL,
  `hog_hab_e` tinyint(3) UNSIGNED DEFAULT NULL,
  `hog_leng_e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ayuda_e` tinyint(1) DEFAULT NULL,
  `obras_e` tinyint(1) DEFAULT NULL,
  `prog_e` tinyint(1) DEFAULT NULL,
  `prog_auh_e` tinyint(1) DEFAULT NULL,
  `prog_beca_ex_e` tinyint(1) DEFAULT NULL,
  `prog_progr_e` tinyint(1) DEFAULT NULL,
  `prog_otros_e` tinyint(1) DEFAULT NULL,
  `prog_beca_jud_e` tinyint(1) DEFAULT NULL,
  `trans_pie_e` tinyint(1) DEFAULT NULL,
  `trans_omni_e` tinyint(1) DEFAULT NULL,
  `trans_auto_e` tinyint(1) DEFAULT NULL,
  `trans_taxi_e` tinyint(1) DEFAULT NULL,
  `trans_otro_e` tinyint(1) DEFAULT NULL,
  `hijo_e` tinyint(1) DEFAULT NULL,
  `hijo_proy_e` tinyint(1) DEFAULT NULL,
  `localescanterior` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.',
  `escanterior` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.',
  `provescuelaanterior` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.',
  `emailfamilia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.',
  `observaciones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.',
  `apeynombrehno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '	No es posible mostrar, para el modelo desarrollado.	',
  `cursoa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No es posible mostrar, para el modelo desarrollado.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `size` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento_procedencia`
--

CREATE TABLE `establecimiento_procedencia` (
  `id_establecimiento` bigint(20) UNSIGNED NOT NULL,
  `claveprovi_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CUE_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomb_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_esc` bigint(20) NOT NULL,
  `dir_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gest_esc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_salud`
--

CREATE TABLE `info_salud` (
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `obrasocial_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_afiliado_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tienenenfermedad_est` tinyint(1) NOT NULL,
  `cualenfermedad_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fueinternado_ultimos3años_est` tinyint(1) NOT NULL,
  `porquefueinternado_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tienealguntipo_alergia_est` tinyint(1) NOT NULL,
  `manifestacionesalergia_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergia_sedebe_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergia_nosabe_est` tinyint(1) DEFAULT NULL,
  `recibe_tratamientopermanente_est` tinyint(1) NOT NULL,
  `recibe_tratamientomedico_est` tinyint(1) NOT NULL,
  `especifique_tratamiento_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recibio_tratamientoquirurgico_est` tinyint(1) NOT NULL,
  `edad_tratamientoquirurgico` smallint(5) UNSIGNED DEFAULT NULL,
  `tipocirugia_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentalimitacion_fisica_est` tinyint(1) NOT NULL,
  `aclaralimitación_fisica_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otroproblemad_salud_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendariovacunas_est` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talla_est` double(8,2) NOT NULL,
  `peso_est` double(8,2) NOT NULL,
  `fechadeterminacion_est` date NOT NULL,
  `recurrir_institucion_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurrir_domicilio_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurrir_telefono_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medico_apellido` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medico_nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medico_domicilio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medico_telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `familiar_apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familiar_nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familiar_domicilio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familiar_telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_actualizacion_est` date DEFAULT NULL,
  `actualizacion_anual_est` tinyint(1) DEFAULT NULL,
  `actualizacion_cambios_est` tinyint(1) DEFAULT NULL,
  `actualizacioncambios_describa_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_fecha_actualizacion_est` date DEFAULT NULL,
  `B_actualizacion_anual_est` tinyint(1) DEFAULT NULL,
  `B_actualizacion_cambios_est` tinyint(1) DEFAULT NULL,
  `B_actualizacioncambios_describa_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_fecha_actualizacion_est` date DEFAULT NULL,
  `C_actualizacion_anual_est` tinyint(1) DEFAULT NULL,
  `C_actualizacion_cambios_est` tinyint(1) DEFAULT NULL,
  `C_actualizacioncambios_describa_est` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mje` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE `responsables` (
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `apell_mad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomb_mad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `naciona_mad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asistioeducacion_mad` tinyint(1) NOT NULL,
  `nivelaltocursado_mad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completoniv_mad` tinyint(1) NOT NULL,
  `vive_mad` tinyint(1) NOT NULL,
  `tipdocument_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrodocument_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadodocumento_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenombre_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenro_mad` int(11) DEFAULT NULL,
  `piso_mad` int(11) DEFAULT NULL,
  `torre_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dpto_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distrito_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codpostal_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefonocelular_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jefehogar_mad` tinyint(1) DEFAULT NULL,
  `profesion_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicionactividad_mad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apell_pad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomb_pad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `naciona_pad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asistioeducacion_pad` tinyint(1) NOT NULL,
  `nivelaltocursado_pad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completoniv_pad` tinyint(1) NOT NULL,
  `vive_pad` tinyint(1) NOT NULL,
  `tipdocument_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrodocument_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadodocumento_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenombre_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenro_pad` int(11) DEFAULT NULL,
  `piso_pad` int(11) DEFAULT NULL,
  `torre_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dpto_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distrito_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codpostal_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefonocelular_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jefehogar_pad` tinyint(1) DEFAULT NULL,
  `profesion_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicionactividad_pad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apell_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomb_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naciona_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asistioeducacion_tut` tinyint(1) DEFAULT NULL,
  `nivelaltocursado_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completoniv_tut` tinyint(1) DEFAULT NULL,
  `tipdocument_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrodocument_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadodocumento_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenombre_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callenro_tut` int(11) DEFAULT NULL,
  `piso_tut` int(11) DEFAULT NULL,
  `torre_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dpto_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distrito_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codpostal_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefonocelular_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jefehogar_tut` tinyint(1) DEFAULT NULL,
  `profesion_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicionactividad_tut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apelli_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip_document_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_document_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vinculo_alumno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_apelli_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_nombre_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_tip_document_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_nro_document_ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_vinculo_alumno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_restricionjudicial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_restricionjudicial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip_document_restricionjudicial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_document_restricionjudicial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restriccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rol` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  ADD PRIMARY KEY (`id_alumno`),
  ADD UNIQUE KEY `alumnos_id_establecimiento_unique` (`id_establecimiento`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `establecimiento_procedencia`
--
ALTER TABLE `establecimiento_procedencia`
  ADD PRIMARY KEY (`id_establecimiento`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_salud`
--
ALTER TABLE `info_salud`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `id_alumno` (`id_alumno`) USING BTREE;

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mje`),
  ADD KEY `mensajes_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_foreign` (`email`);

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`id_alumno`) USING BTREE,
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_rol_foreign` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `establecimiento_procedencia`
--
ALTER TABLE `establecimiento_procedencia`
  MODIFY `id_establecimiento` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mje` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_establecimiento`) REFERENCES `establecimiento_procedencia` (`id_establecimiento`);

--
-- Filtros para la tabla `info_salud`
--
ALTER TABLE `info_salud`
  ADD CONSTRAINT `info_salud_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_email_foreign` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Filtros para la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD CONSTRAINT `responsables_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
