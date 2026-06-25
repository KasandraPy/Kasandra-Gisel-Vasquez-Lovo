-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 22:48:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_de_registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `telefono` int(8) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `materia` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `nombre`, `apellido`, `telefono`, `id_usuario`, `materia`) VALUES
(1, 'Juan', 'Marquez', 70011122, 6, 'Matemáticas'),
(2, 'Lucia', 'Flores', 70022233, 7, 'Lenguaje'),
(3, 'Miguel', 'Ramirez', 70033344, 8, 'Ciencias'),
(4, 'Silvia', 'Navas', 70044455, 9, 'Sociales'),
(5, 'Roberto', 'Castro', 70055566, 10, 'Inglés'),
(6, 'Elena', 'Aguilar', 70066677, 11, 'Informática'),
(7, 'Julio', 'Hernandez', 70077788, 12, 'Educación Física'),
(8, 'Valeria', 'Fuentes', 70088899, 13, 'Música'),
(9, 'Gerson', 'Mejia', 70099900, 14, 'Arte'),
(10, 'Tania', 'Valle', 60011122, 15, 'Parvularia'),
(11, 'Carlos', 'Martinez', 60022233, 16, 'Matemáticas'),
(12, 'Beatriz', 'Ortiz', 60033344, 17, 'Lenguaje'),
(13, 'Hugo', 'Solis', 60044455, 18, 'Ciencias'),
(14, 'Karla', 'Rodriguez', 60055566, 19, 'Sociales'),
(15, 'Fernando', 'Moran', 60066677, 20, 'Inglés'),
(16, 'Gloria', 'Arias', 60077788, 21, 'Parvularia'),
(17, 'Oscar', 'Rivera', 60088899, 22, 'Educación Física'),
(18, 'Mirna', 'Campos', 60099900, 23, 'Arte'),
(19, 'Jaime', 'Lopez', 71112233, 24, 'Informática'),
(20, 'Alicia', 'Cruz', 72223344, 25, 'Música'),
(21, 'Raúl', 'Peña', 73334455, NULL, 'Sociales'),
(22, 'Nancy', 'Zavala', 74445566, NULL, 'Lenguaje'),
(23, 'Pedro', 'Chicas', 75556677, NULL, 'Matemáticas'),
(24, 'Irene', 'Sosa', 76667788, NULL, 'Ciencias'),
(25, 'Erick', 'Guzmán', 77778899, NULL, 'Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('Femenino','Masculino') DEFAULT NULL,
  `id_responsable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellido`, `fecha_nacimiento`, `genero`, `id_responsable`) VALUES
(1, 'Kevin', 'Alexander Orellana', '2018-04-12', 'Masculino', 1),
(2, 'Valeria', 'Nicolle Henríquez', '2017-08-22', 'Femenino', 2),
(3, 'Diego', 'Mateo Meléndez', '2019-01-15', 'Masculino', 3),
(4, 'Camila', 'Aislinn Quintanilla', '2016-11-05', 'Femenino', 4),
(5, 'Jonathan', 'Steven Rivas', '2015-06-30', 'Masculino', 5),
(6, 'Mia', 'Samantha Amaya', '2018-09-14', 'Femenino', 6),
(7, 'Lucas', 'Benjamín Portillo', '2017-03-18', 'Masculino', 7),
(8, 'Sofía', 'Alejandra Merino', '2019-07-25', 'Femenino', 8),
(9, 'Santiago', 'André Pleitez', '2016-02-10', 'Masculino', 9),
(10, 'Daniela', 'Montserrat Vásquez', '2015-12-01', 'Femenino', 10),
(11, 'Adrián', 'Ezequiel Renderos', '2018-05-20', 'Masculino', 11),
(12, 'Elena', 'María Benítez', '2017-10-11', 'Femenino', 12),
(13, 'Sebastián', 'Alonso Galeas', '2019-03-09', 'Masculino', 13),
(14, 'Gabriela', 'Noemí Palacios', '2016-07-14', 'Femenino', 14),
(15, 'Mathías', 'Nicolás Recinos', '2015-01-28', 'Masculino', 15),
(16, 'Mariana', 'Valentina Zelaya', '2018-11-02', 'Femenino', 16),
(17, 'Thiago', 'Emmanuel Cárcamo', '2017-04-05', 'Masculino', 17),
(18, 'Luciana', 'Antonella Guardado', '2019-08-19', 'Femenino', 18),
(19, 'Alejandro', 'José Menjívar', '2016-09-24', 'Masculino', 19),
(20, 'Amanda', 'Beatriz Lemus', '2015-05-17', 'Femenino', 20),
(21, 'Christopher', 'Gael Huezo', '2018-02-27', 'Masculino', 21),
(22, 'Fátima', 'Rebeca Beltrán', '2017-06-08', 'Femenino', 22),
(23, 'Mateo', 'Alessandro Serrano', '2019-12-12', 'Masculino', 23),
(24, 'Victoria', 'Charlotte Chacón', '2016-10-31', 'Femenino', 24),
(25, 'Samuel', 'David Pineda', '2015-03-22', 'Masculino', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(20) NOT NULL,
  `seccion` varchar(5) NOT NULL,
  `id_docente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre_grado`, `seccion`, `id_docente`) VALUES
(1, 'Kinder 4', 'A', 10),
(2, 'Kinder 4', 'B', 16),
(3, 'Kinder 5', 'A', 1),
(4, 'Kinder 5', 'B', 2),
(5, 'Preparatoria', 'A', 3),
(6, 'Preparatoria', 'B', 4),
(7, 'Primer Grado', 'A', 5),
(8, 'Primer Grado', 'B', 11),
(9, 'Segundo Grado', 'A', 12),
(10, 'Segundo Grado', 'B', 13),
(11, 'Tercer Grado', 'A', 14),
(12, 'Tercer Grado', 'B', 15),
(13, 'Cuarto Grado', 'A', 6),
(14, 'Cuarto Grado', 'B', 7),
(15, 'Quinto Grado', 'A', 8),
(16, 'Quinto Grado', 'B', 9),
(17, 'Sexto Grado', 'A', 17),
(18, 'Sexto Grado', 'B', 18),
(19, 'Séptimo Grado', 'A', 19),
(20, 'Séptimo Grado', 'B', 20),
(21, 'Octavo Grado', 'A', 21),
(22, 'Octavo Grado', 'B', 22),
(23, 'Noveno Grado', 'A', 23),
(24, 'Noveno Grado', 'B', 24),
(25, 'Refuerzo General', 'U', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE `responsables` (
  `id_responsable` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `telefono` int(8) NOT NULL,
  `dui` int(9) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `responsables`
--

INSERT INTO `responsables` (`id_responsable`, `nombre`, `apellido`, `telefono`, `dui`, `direccion`) VALUES
(1, 'Juan', 'Carlos Orellana', 71234567, 123456789, 'Colonia Escalón, Calle El Mirador #12'),
(2, 'María', 'Elena Henríquez', 72345678, 234567891, 'Residencial San Gabriel, Senda 4'),
(3, 'José', 'Luis Meléndez', 73456789, 345678912, 'Urbanización San Antonio, Pasaje 2'),
(4, 'Ana', 'Beatriz Quintanilla', 74567890, 456789123, 'Barrio El Centro, Avenida Gerardo Barrios'),
(5, 'Manuel', 'Antonio Rivas', 75678901, 567891234, 'Colonia San Benito, Calle La Reforma'),
(6, 'Rosa', 'Del Carmen Amaya', 76789012, 678912345, 'Residencial Altavista, Polígono Q'),
(7, 'Francisco', 'Javier Portillo', 77890123, 789123456, 'Colonia Monserrat, Pasaje Las Flores'),
(8, 'Patricia', 'Elizabeth Merino', 78901234, 891234567, 'Urbanización Madre Tierra, Bloque C'),
(9, 'Jorge', 'Alberto Pleitez', 79012345, 912345678, 'Colonia Satélite, Calle Neptuno #45'),
(10, 'Gabriela', 'María Vásquez', 60123456, 192837465, 'Residencial Verona, Senda Francia'),
(11, 'Luis', 'Alonso Renderos', 61234567, 283746591, 'Barrio San Jacinto, Calle Principal'),
(12, 'Carmen', 'Irene Benítez', 62345678, 374659182, 'Colonia Ciudad Credisa, Pasaje 8'),
(13, 'Roberto', 'Danilo Galeas', 63456789, 465918273, 'Residencial Los Sueños, Blocks G'),
(14, 'Silvia', 'Patricia Palacios', 64567890, 591827364, 'Colonia Vista Hermosa, Calle Los Pino'),
(15, 'Héctor', 'Enrique互 Recinos', 65678901, 682736451, 'Urbanización La Cima II, Pasaje 4'),
(16, 'Sonia', 'Margarita Zelaya', 66789012, 736451829, 'Colonia Miramonte, Calle Sisimiles'),
(17, 'Ricardo', 'Ernesto Cárcamo', 67890123, 827163549, 'Residencial Palo Alto, Casa 12-B'),
(18, 'Sandra', 'Milena Guardado', 68901234, 918273645, 'Barrio Santa Anita, 13 Avenida Sur'),
(19, 'Alfredo', 'José Menjívar', 69012345, 112233445, 'Colonia Las Delicias, Pasaje Libertad'),
(20, 'Claudia', 'Vanessa Lemus', 70112233, 223344556, 'Urbanización Metrópolis, Polígono F'),
(21, 'Fernando', 'Arturo Huezo', 71223344, 334455667, 'Residencial Primavera, Senda Los Olivos'),
(22, 'Martha', 'Alicia Beltrán', 72334455, 445566778, 'Colonia El Quetzal, Pasaje 3'),
(23, 'Gustavo', 'Adolfo Serrano', 73445566, 556677889, 'Barrio El Calvario, Avenida Roosevelt'),
(24, 'Verónica', 'Isabel Chacón', 74556677, 667788990, 'Residencial Bosques de Santa Elena'),
(25, 'Mauricio', 'Alexander Pineda', 75667788, 778899001, 'Colonia Layco, Calle Gabriela Mistral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` text NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` enum('Docente','Director','Subdirector','Secretaria','Admin') NOT NULL,
  `correo` varchar(100) NOT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `contraseña`, `rol`, `correo`, `estado`) VALUES
(1, 'admin.central', 'hash_admin_2026', 'Admin', 'admin@escuelita.edu.sv', 'Activo'),
(2, 'director.perez', 'hash_dir_99', 'Director', 'carlos.perez@escuelita.edu.sv', 'Activo'),
(3, 'subdir.mendoza', 'hash_sub_44', 'Subdirector', 'ana.mendoza@escuelita.edu.sv', 'Activo'),
(4, 'secre.gomez', 'hash_sec_12', 'Secretaria', 'claudia.gomez@escuelita.edu.sv', 'Activo'),
(5, 'secre.rivas', 'hash_sec_88', 'Secretaria', 'marta.rivas@escuelita.edu.sv', 'Activo'),
(6, 'jmarquez', 'doc_pass_01', 'Docente', 'juan.marquez@escuelita.edu.sv', 'Activo'),
(7, 'lflores', 'doc_pass_02', 'Docente', 'lucia.flores@escuelita.edu.sv', 'Activo'),
(8, 'mramirez', 'doc_pass_03', 'Docente', 'miguel.ramirez@escuelita.edu.sv', 'Activo'),
(9, 'snavas', 'doc_pass_04', 'Docente', 'silvia.navas@escuelita.edu.sv', 'Activo'),
(10, 'rcastro', 'doc_pass_05', 'Docente', 'roberto.castro@escuelita.edu.sv', 'Activo'),
(11, 'eaguilar', 'doc_pass_06', 'Docente', 'elena.aguilar', 'Activo'),
(12, 'jhernandez', 'doc_pass_07', 'Docente', 'julio.hernandez@escuelita.edu.sv', 'Activo'),
(13, 'vfuentes', 'doc_pass_08', 'Docente', 'valeria.fuentes@escuelita.edu.sv', 'Activo'),
(14, 'gmejia', 'doc_pass_09', 'Docente', 'gerson.mejia@escuelita.edu.sv', 'Activo'),
(15, 'tvalle', 'doc_pass_10', 'Docente', 'tania.valle@escuelita.edu.sv', 'Activo'),
(16, 'cmartinez', 'doc_pass_11', 'Docente', 'carlos.martinez@escuelita.edu.sv', 'Activo'),
(17, 'bortiz', 'doc_pass_12', 'Docente', 'beatriz.ortiz@escuelita.edu.sv', 'Activo'),
(18, 'hsolis', 'doc_pass_13', 'Docente', 'hugo.solis@escuelita.edu.sv', 'Activo'),
(19, 'krodriguez', 'doc_pass_14', 'Docente', 'karla.rodriguez@escuelita.edu.sv', 'Activo'),
(20, 'fmoran', 'doc_pass_15', 'Docente', 'fernando.moran@escuelita.edu.sv', 'Activo'),
(21, 'garias', 'doc_pass_16', 'Docente', 'gloria.arias@escuelita.edu.sv', 'Activo'),
(22, 'orivera', 'doc_pass_17', 'Docente', 'oscar.rivera@escuelita.edu.sv', 'Activo'),
(23, 'mcampos', 'doc_pass_18', 'Docente', 'mirna.campos@escuelita.edu.sv', 'Inactivo'),
(24, 'jlopez', 'doc_pass_19', 'Docente', 'jaime.lopez@escuelita.edu.sv', 'Activo'),
(25, 'acruz', 'doc_pass_20', 'Docente', 'alicia.cruz@escuelita.edu.sv', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_responsable` (`id_responsable`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`id_responsable`),
  ADD UNIQUE KEY `dui` (`dui`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`) USING HASH;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `responsables`
--
ALTER TABLE `responsables`
  MODIFY `id_responsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_responsable`) REFERENCES `responsables` (`id_responsable`) ON DELETE SET NULL;

--
-- Filtros para la tabla `grados`
--
ALTER TABLE `grados`
  ADD CONSTRAINT `grados_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
