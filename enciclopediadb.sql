-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2024 a las 04:12:12
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
-- Base de datos: `enciclopediadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `fecha_creacion`) VALUES
(1, 'Desarrollo Web', 'Aprende sobre la creación y mantenimiento de sitios web, incluyendo HTML, CSS, JavaScript y frameworks modernos.', '2024-09-08 17:46:59'),
(2, 'Inteligencia Artificial', 'Explora el campo de la IA, incluyendo aprendizaje automático, redes neuronales y aplicaciones de inteligencia artificial.', '2024-09-08 17:46:59'),
(3, 'Seguridad Informática', 'Conoce las prácticas y técnicas para proteger sistemas informáticos y datos contra ataques y vulnerabilidades.', '2024-09-08 17:46:59'),
(4, 'Desarrollo de Aplicaciones Móviles', 'Descubre cómo desarrollar aplicaciones para plataformas móviles como iOS y Android.', '2024-09-08 17:46:59'),
(5, 'Bases de Datos', 'Estudia los sistemas de gestión de bases de datos, diseño de esquemas, y consultas SQL.', '2024-09-08 17:46:59'),
(6, 'Programación en Python', 'Aprende Python, un lenguaje versátil para desarrollo web, análisis de datos y automatización.', '2024-09-08 17:46:59'),
(7, 'Desarrollo de Software', 'Conoce las metodologías y técnicas para diseñar, desarrollar y mantener software.', '2024-09-08 17:46:59'),
(8, 'Redes de Computadoras', 'Explora los fundamentos de redes, protocolos, y configuración de redes informáticas.', '2024-09-08 17:46:59'),
(9, 'DevOps', 'Descubre prácticas para integrar el desarrollo de software y las operaciones de TI para mejorar la eficiencia y la calidad.', '2024-09-08 17:46:59'),
(10, 'Ciencia de Datos', 'Estudia la extracción, análisis e interpretación de datos para tomar decisiones informadas.', '2024-09-08 17:46:59'),
(11, 'Machine Learning', 'Aprende sobre algoritmos y técnicas para que las máquinas aprendan de datos y realicen predicciones.', '2024-09-08 17:46:59'),
(12, 'Big Data', 'Explora el manejo y análisis de grandes volúmenes de datos para obtener información valiosa.', '2024-09-08 17:46:59'),
(13, 'Blockchain', 'Conoce la tecnología detrás de criptomonedas y contratos inteligentes, y sus aplicaciones en diversos campos.', '2024-09-08 17:46:59'),
(14, 'Programación en Java', 'Aprende Java, un lenguaje popular para el desarrollo de aplicaciones empresariales y móviles.', '2024-09-08 17:46:59'),
(15, 'Análisis de Sistemas', 'Estudia la metodología para entender y diseñar sistemas de información para resolver problemas empresariales.', '2024-09-08 17:46:59'),
(16, 'Computación en la Nube', 'Descubre los conceptos y servicios de cloud computing, incluyendo AWS, Azure y Google Cloud.', '2024-09-08 17:46:59'),
(17, 'Internet de las Cosas (IoT)', 'Explora la interconexión de dispositivos y cómo recopilan y comparten datos.', '2024-09-08 17:46:59'),
(18, 'Desarrollo Frontend', 'Aprende sobre la creación de interfaces de usuario y experiencias web atractivas y funcionales.', '2024-09-08 17:46:59'),
(19, 'Desarrollo Backend', 'Conoce el diseño y desarrollo de la lógica de servidor y bases de datos que sustentan las aplicaciones web.', '2024-09-08 17:46:59'),
(20, 'Automatización de Pruebas', 'Estudia las herramientas y técnicas para automatizar las pruebas de software y garantizar su calidad.', '2024-09-08 17:46:59'),
(21, 'Análisis de Sentimientos', 'Aprende a utilizar técnicas de procesamiento de lenguaje natural para entender y analizar las emociones en el texto.', '2024-09-08 17:46:59'),
(22, 'Robótica', 'Descubre el diseño y la programación de robots para diversas aplicaciones industriales y de investigación.', '2024-09-08 17:46:59'),
(23, 'Realidad Aumentada', 'Explora cómo las tecnologías de realidad aumentada integran elementos digitales en el mundo real.', '2024-09-08 17:46:59'),
(24, 'Realidad Virtual', 'Aprende sobre la creación de entornos virtuales inmersivos para juegos, simulaciones y capacitación.', '2024-09-08 17:46:59'),
(25, 'Gestión de Proyectos de TI', 'Conoce las metodologías y herramientas para gestionar proyectos tecnológicos con éxito.', '2024-09-08 17:46:59'),
(26, 'Desarrollo de Videojuegos', 'Descubre el proceso de diseño y creación de videojuegos, desde la idea inicial hasta el producto final.', '2024-09-08 17:46:59'),
(27, 'Desarrollo Ágil', 'Aprende sobre las metodologías ágiles como Scrum y Kanban para mejorar la gestión de proyectos de software.', '2024-09-08 17:46:59'),
(28, 'Diseño de Experiencia de Usuario (UX)', 'Estudia cómo mejorar la usabilidad y la satisfacción del usuario en aplicaciones y sitios web.', '2024-09-08 17:46:59'),
(29, 'Diseño de Interfaz de Usuario (UI)', 'Aprende sobre la creación de interfaces visuales atractivas y funcionales para aplicaciones y sitios web.', '2024-09-08 17:46:59'),
(30, 'Análisis Forense Digital', 'Conoce los métodos para investigar incidentes de seguridad y recuperar datos de sistemas comprometidos.', '2024-09-08 17:46:59'),
(31, 'Criptografía', 'Explora los principios y técnicas para asegurar la información a través de la encriptación.', '2024-09-08 17:46:59'),
(32, 'Seguridad en la Nube', 'Aprende sobre la protección de datos y aplicaciones en entornos de computación en la nube.', '2024-09-08 17:46:59'),
(33, 'Ingeniería de Datos', 'Conoce la construcción y mantenimiento de infraestructuras de datos para grandes volúmenes de información.', '2024-09-08 17:46:59'),
(34, 'Computación Cuántica', 'Explora la nueva frontera de la computación utilizando principios de la física cuántica.', '2024-09-08 17:46:59'),
(35, 'Desarrollo de API', 'Aprende cómo diseñar y construir interfaces de programación de aplicaciones para la integración de servicios.', '2024-09-08 17:46:59'),
(36, 'Desarrollo de Sistemas Embebidos', 'Descubre la programación y diseño de sistemas informáticos integrados en dispositivos electrónicos.', '2024-09-08 17:46:59'),
(37, 'Ingeniería de Software', 'Estudia los principios y prácticas para el desarrollo de software de alta calidad y mantenible.', '2024-09-08 17:46:59'),
(38, 'Programación en C#', 'Aprende C#, un lenguaje orientado a objetos utilizado en el desarrollo de aplicaciones en la plataforma .NET.', '2024-09-08 17:46:59'),
(39, 'Programación en PHP', 'Conoce PHP, un lenguaje de scripting popular para el desarrollo de aplicaciones web dinámicas.', '2024-09-08 17:46:59'),
(40, 'Testing de Software', 'Estudia las técnicas y herramientas para probar el software y asegurar su funcionalidad y estabilidad.', '2024-09-08 17:46:59'),
(41, 'Usabilidad Web', 'Aprende sobre los principios de usabilidad para mejorar la experiencia del usuario en sitios web.', '2024-09-08 17:46:59'),
(42, 'Automatización de Tareas', 'Descubre cómo automatizar procesos repetitivos y mejorar la eficiencia en el trabajo.', '2024-09-08 17:46:59'),
(43, 'Ciberseguridad', 'Explora la protección de sistemas y redes contra ataques y amenazas en el ciberespacio.', '2024-09-08 17:46:59'),
(44, 'Gestión de Configuración', 'Conoce las prácticas y herramientas para gestionar la configuración y el estado de los sistemas de TI.', '2024-09-08 17:46:59'),
(45, 'Análisis de Datos en Tiempo Real', 'Estudia cómo procesar y analizar datos a medida que se generan para obtener información instantánea.', '2024-09-08 17:46:59'),
(46, 'Programación en Ruby', 'Aprende Ruby, un lenguaje de programación conocido por su simplicidad y elegancia, utilizado en desarrollo web.', '2024-09-08 17:46:59'),
(47, 'Sistemas Distribuidos', 'Explora el diseño y la implementación de sistemas que operan en múltiples nodos o ubicaciones.', '2024-09-08 17:46:59'),
(48, 'Sistemas Operativos', 'Conoce los conceptos y el funcionamiento de los sistemas operativos que gestionan el hardware y el software.', '2024-09-08 17:46:59'),
(49, 'Arquitectura de Computadores', 'Estudia el diseño y la estructura interna de los computadores y sus componentes.', '2024-09-08 17:46:59'),
(50, 'Análisis Predictivo', 'Aprende a utilizar técnicas estadísticas y de machine learning para predecir eventos futuros a partir de datos.', '2024-09-08 17:46:59'),
(51, 'Optimización de Rendimiento', 'Descubre cómo mejorar la eficiencia y el rendimiento de sistemas informáticos y aplicaciones.', '2024-09-08 17:46:59'),
(52, 'Ingeniería de Requisitos', 'Estudia cómo recolectar, analizar y documentar los requisitos para el desarrollo de sistemas y software.', '2024-09-08 17:46:59'),
(53, 'Metodologías de Desarrollo de Software', 'Conoce las diversas metodologías utilizadas en el desarrollo de software, como Waterfall y Agile.', '2024-09-08 17:46:59'),
(54, 'Arquitectura de Software', 'Explora el diseño y la estructura de sistemas de software para cumplir con requisitos específicos.', '2024-09-08 17:46:59'),
(55, 'Desarrollo de Software Orientado a Servicios (SOA)', 'Aprende sobre el diseño y desarrollo de sistemas basados en servicios y componentes reutilizables.', '2024-09-08 17:46:59'),
(56, 'Desarrollo en JavaScript', 'Conoce JavaScript, un lenguaje esencial para el desarrollo web y la creación de aplicaciones interactivas.', '2024-09-08 17:46:59'),
(57, 'Redes Neuronales Artificiales', 'Estudia la implementación y el entrenamiento de redes neuronales para resolver problemas complejos.', '2024-09-08 17:46:59'),
(58, 'Desarrollo de Aplicaciones para Internet', 'Aprende sobre la creación de aplicaciones basadas en la web y los servicios web.', '2024-09-08 17:46:59'),
(59, 'Tecnologías Emergentes', 'Explora las últimas innovaciones tecnológicas y sus aplicaciones en diferentes campos.', '2024-09-08 17:46:59'),
(60, 'Gestión de Infraestructuras TI', 'Conoce las prácticas para gestionar y mantener la infraestructura tecnológica en las organizaciones.', '2024-09-08 17:46:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `termino_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `comentario` text NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminos`
--

CREATE TABLE `terminos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `CategoriaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `terminos`
--

INSERT INTO `terminos` (`id`, `nombre`, `descripcion`, `fecha_creacion`, `CategoriaID`) VALUES
(1, 'Agile', 'Una metodología de desarrollo de software que promueve el trabajo colaborativo y la entrega continua de valor a través de iteraciones cortas y adaptativas.', '2024-09-08 17:54:03', 27),
(2, 'API (Application Programming Interface)', 'Un conjunto de herramientas y definiciones que permiten a los desarrolladores interactuar con aplicaciones o servicios para intercambiar información y funcionalidades.', '2024-09-08 17:54:03', 1),
(3, 'DevOps', 'Una práctica que combina el desarrollo de software (Dev) y las operaciones de TI (Ops) para mejorar la colaboración y acelerar la entrega de aplicaciones.', '2024-09-08 17:54:03', 9),
(4, 'Cloud Computing', 'El uso de servicios de computación (almacenamiento, servidores, bases de datos) a través de la nube.', '2024-09-08 17:54:03', 16),
(5, 'Machine Learning', 'Un subcampo de la inteligencia artificial que permite que las máquinas aprendan a partir de datos sin ser programadas explícitamente.', '2024-09-08 17:54:03', 2),
(6, 'Blockchain', 'Tecnología que garantiza la seguridad de transacciones digitales a través de una cadena de bloques distribuidos.', '2024-09-08 17:54:03', 13),
(7, 'Big Data', 'El manejo y análisis de grandes volúmenes de datos para identificar patrones y obtener información valiosa.', '2024-09-08 17:54:03', 12),
(8, 'Penetration Testing', 'Prueba de seguridad en sistemas informáticos para identificar vulnerabilidades que podrían ser explotadas por atacantes.', '2024-09-08 17:54:03', 3),
(9, 'Data Science', 'El campo que utiliza técnicas estadísticas, matemáticas y de programación para extraer conocimientos y tomar decisiones a partir de datos.', '2024-09-08 17:54:03', 10),
(10, 'Deep Learning', 'Un subcampo de Machine Learning que utiliza redes neuronales profundas para aprender representaciones complejas de datos.', '2024-09-08 17:54:03', 2),
(11, 'CI/CD Pipeline', 'Un conjunto de prácticas que permite la integración continua (CI) y la entrega continua (CD) de software para acelerar el desarrollo y despliegue.', '2024-09-08 17:54:03', 7),
(12, 'Test Automation', 'La automatización del proceso de pruebas de software para verificar que funciona como se espera.', '2024-09-08 17:54:03', 20),
(13, 'Kubernetes', 'Un sistema de orquestación de contenedores que facilita la gestión y escalado de aplicaciones en contenedores.', '2024-09-08 17:54:03', 9),
(14, 'NoSQL', 'Una categoría de sistemas de bases de datos que no utilizan SQL como su principal mecanismo de consulta y son adecuados para manejar grandes volúmenes de datos no estructurados.', '2024-09-08 17:54:03', 5),
(15, 'Robotic Process Automation (RPA)', 'La automatización de procesos repetitivos mediante el uso de robots de software.', '2024-09-08 17:54:03', 22),
(16, 'Serverless', 'Un modelo de computación en la nube donde el proveedor de servicios maneja la infraestructura y el usuario solo paga por el uso.', '2024-09-08 17:54:03', 16),
(17, 'Data Warehouse', 'Un sistema utilizado para el almacenamiento y análisis de grandes volúmenes de datos estructurados provenientes de diferentes fuentes.', '2024-09-08 17:54:03', 5),
(18, 'Ethical Hacking', 'La práctica de identificar y solucionar vulnerabilidades en sistemas informáticos de manera legal y con permiso.', '2024-09-08 17:54:03', 3),
(19, 'Natural Language Processing (NLP)', 'Una subdisciplina de la inteligencia artificial que se ocupa de la interacción entre las computadoras y el lenguaje humano.', '2024-09-08 17:54:03', 2),
(20, 'Load Balancer', 'Un dispositivo o software que distribuye el tráfico de red entre varios servidores para mejorar el rendimiento y la disponibilidad.', '2024-09-08 17:54:03', 8),
(21, 'Unit Testing', 'Pruebas realizadas en la unidad más pequeña de código, como funciones o métodos, para asegurar que funcionan correctamente.', '2024-09-08 17:54:03', 40),
(22, 'Data Lake', 'Un repositorio de almacenamiento que permite guardar datos en su formato nativo y es adecuado para grandes volúmenes de datos estructurados y no estructurados.', '2024-09-08 17:54:03', 5),
(23, 'UX (User Experience)', 'El diseño y la mejora de la experiencia del usuario con una aplicación o sitio web, enfocado en la facilidad de uso y satisfacción.', '2024-09-08 17:54:03', 28),
(24, 'UI (User Interface)', 'El diseño de la interfaz visual de una aplicación o sitio web, centrado en la apariencia y funcionalidad.', '2024-09-08 17:54:03', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termino_id` (`termino_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `terminos`
--
ALTER TABLE `terminos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria` (`CategoriaID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terminos`
--
ALTER TABLE `terminos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`termino_id`) REFERENCES `terminos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `terminos`
--
ALTER TABLE `terminos`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
