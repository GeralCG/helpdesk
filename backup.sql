-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.25-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para dbsoporte
CREATE DATABASE IF NOT EXISTS `dbsoporte` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dbsoporte`;

-- Volcando estructura para tabla dbsoporte.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) NOT NULL,
  `user_type` tinyint(1) NOT NULL COMMENT '1= admin, 2= staff,3= customer',
  `ticket_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.comments: ~47 rows (aproximadamente)
INSERT INTO `comments` (`id`, `user_id`, `user_type`, `ticket_id`, `comment`, `date_created`) VALUES
	(4, 3, 3, 2, '&lt;p&gt;Por favor necesito r&aacute;pido&lt;/p&gt;', '2023-09-20 14:27:12'),
	(5, 1, 1, 3, '&lt;p&gt;sopleteate el anexo&lt;/p&gt;', '2024-03-06 17:06:42'),
	(6, 5, 3, 7, '', '2024-03-12 15:10:22'),
	(7, 1, 1, 32, '&lt;p&gt;Se llego a instalar el proyector en el auditorio del centor cultural referente al Presupuesto Participativo.&lt;/p&gt;', '2024-03-18 06:21:15'),
	(8, 1, 1, 35, '&lt;p&gt;SE CORRIGIO EL REGISTRO.&lt;/p&gt;', '2024-03-18 08:31:19'),
	(9, 1, 1, 36, '&lt;p&gt;SE PROCEDIO A ASIGNARLE LA OPCION DE VERIFICACION DE CTA. CTE. AL USUARIO VABREGU&lt;/p&gt;', '2024-03-18 08:49:14'),
	(10, 1, 1, 36, '&lt;p&gt;INFORME N 695-2024-GAT/MPCH&lt;/p&gt;', '2024-03-18 08:53:57'),
	(11, 1, 1, 33, '&lt;p&gt;Estado situacional INF. N052-204-MPCH/GSP (cambio de memoria RAM)&lt;/p&gt;', '2024-03-19 12:07:31'),
	(12, 1, 1, 42, '&lt;p&gt;MANTENIMIENTO Y REPARACION DE IMPRESORA, CAMBIO DE CAJA DE MANTENIMIENTO.&lt;/p&gt;', '2024-03-20 10:03:39'),
	(13, 1, 1, 43, '&lt;p&gt;Se reviso el cable de red, encontrando el stiwch desconectado.&lt;/p&gt;', '2024-03-21 09:25:52'),
	(14, 1, 1, 44, '&lt;p&gt;Se procedio a reiniciar la cola de impresion.&lt;/p&gt;', '2024-03-21 09:30:01'),
	(15, 1, 1, 45, '&lt;p&gt;Se procedio a actulizar el registro 162760 con referencia al exp. 6412-2023, quedando el registro en doc. por recibir. en la Oficina de Secretaria General.&lt;/p&gt;', '2024-03-21 12:39:05'),
	(16, 1, 1, 46, '&lt;p&gt;Se retiro el papel atascado.&lt;/p&gt;', '2024-03-26 10:30:35'),
	(17, 7, 2, 48, '&lt;p&gt;Se realiz&oacute; mantenimiento, diagnostico de PC y configuraci&oacute;n de Usb Lan (USb 3.0 Tplink)&lt;br&gt;&lt;/p&gt;', '2024-03-26 10:52:41'),
	(18, 7, 2, 38, '&lt;p&gt;Fusor Da&ntilde;ado&lt;/p&gt;', '2024-03-26 11:03:12'),
	(19, 7, 2, 49, '&lt;p&gt;Fusor Da&ntilde;ado&lt;/p&gt;', '2024-03-26 11:07:44'),
	(20, 7, 2, 49, '', '2024-03-26 11:07:56'),
	(21, 7, 2, 50, '&lt;p&gt;Fusor Da&ntilde;ado&lt;/p&gt;', '2024-03-26 11:13:16'),
	(22, 7, 2, 51, '&lt;p&gt;Fusor Da&ntilde;ado&lt;/p&gt;', '2024-03-26 11:15:49'),
	(23, 1, 1, 47, '&lt;p&gt;SE COORDINO MEDIANTE WHATSAPP QUE SE ATENDERIA MEDIANTE ANYDESK LOS 3 EQUIPOS DE COMPUTO PARA LA CONFIGURACION CON LA IMPRESORA, QUEDANDO A LA ESPERA DEL CODIGO DE ANYDESK PARA LA ATENCION&amp;nbsp;&lt;/p&gt;', '2024-03-26 14:02:27'),
	(24, 1, 1, 52, '&lt;p&gt;Se realizo la instalacion del Sistema de Asistencia para el personal Obrero.&lt;/p&gt;&lt;p&gt;Quedando operativo el Sistema.&lt;/p&gt;', '2024-03-27 11:02:33'),
	(25, 1, 1, 53, '&lt;p&gt;se atendio via VPN y se reinicio del servidor del SIAF&lt;/p&gt;', '2024-04-02 12:40:15'),
	(26, 7, 2, 55, '&lt;p&gt;Reparacion de sistema operativo&lt;/p&gt;', '2024-04-02 12:48:28'),
	(27, 1, 1, 56, '&lt;p&gt;Se procedio a vincular la impresora que queria el ususario para que pueda imprimir.&lt;/p&gt;', '2024-04-02 13:24:53'),
	(28, 1, 1, 56, '', '2024-04-02 13:25:23'),
	(29, 1, 1, 58, '&lt;p&gt;se dio un refresh al SIAF&lt;/p&gt;', '2024-04-03 10:08:06'),
	(30, 1, 1, 60, '&lt;p&gt;Se procedio a restablecer la red.&lt;/p&gt;', '2024-04-04 08:29:45'),
	(31, 1, 1, 63, '&lt;p&gt;Se realizo un mantenimiento correctivo del equipo.&lt;/p&gt;', '2024-04-05 12:57:05'),
	(32, 1, 1, 70, '&lt;p&gt;Se realizo un formateo del equipo.&lt;/p&gt;', '2024-04-11 07:50:51'),
	(34, 1, 1, 73, '&lt;p&gt;Se reinicio las almohadillas de la impresora EPSON L5290.&lt;/p&gt;', '2024-04-12 11:10:33'),
	(35, 1, 1, 74, '&lt;p&gt;Placa madre muerta, se realizo el Informe N&deg; 062-2024-MPCH/GSP&lt;/p&gt;', '2024-04-15 13:26:47'),
	(36, 1, 1, 75, '&lt;p&gt;Se emitio el informe N&deg; 063-2024-MPCH/GSP acerca del estado situacional del proyector.&lt;/p&gt;', '2024-04-16 10:16:31'),
	(37, 1, 1, 67, '&lt;p&gt;Se emitio un informe acerca del estado situacional del equipo.&lt;/p&gt;', '2024-04-18 14:19:12'),
	(38, 1, 1, 77, '&lt;p&gt;Se soluciono los accesos&lt;/p&gt;', '2024-04-22 10:32:48'),
	(40, 1, 1, 82, '&lt;p&gt;se procedio a habilitar los registros indicados por la srta Sonia Ramos&amp;nbsp; 1020, 1022, 1024, 1028, 1031, 1032, 1035, 1037, 1048.&lt;/p&gt;', '2024-05-06 07:43:33'),
	(41, 1, 1, 84, '&lt;p&gt;Se coordino con el proveedor para el correspondiente soporte y soluci&oacute;n&lt;/p&gt;', '2024-05-08 12:54:31'),
	(42, 1, 1, 84, 'llego el soporte del proveedor de ISP, dejando todo en correcto y con internet.', '2024-05-08 12:56:05'),
	(43, 1, 1, 87, '&lt;p&gt;se procedi&oacute; con la habilitaci&oacute;n de dicho registro para su posterior impresi&oacute;n.&lt;/p&gt;', '2024-05-09 07:35:37'),
	(44, 1, 1, 85, '&lt;p&gt;Teniendo conocimiento del corte de fluido el&eacute;ctrico, implicando el inconveniente con el internet dado por ello, se hace el diagnostico que la computadora tuvo un desperfecto por corte de fluido el&eacute;ctrico intempestivo, da&ntilde;ando asimismo la placa madre(maniobrad).&amp;nbsp;&lt;/p&gt;&lt;p&gt;se recomienda la adquisici&oacute;n de un placa madre.&lt;/p&gt;', '2024-05-09 14:24:36'),
	(45, 5, 2, 76, '&lt;p&gt;el certificado digital se encuentra vencido&amp;nbsp;&lt;/p&gt;', '2024-05-20 09:12:43'),
	(46, 1, 1, 92, '&lt;p&gt;se procedi&oacute; con la actualizaci&oacute;n y habilitaci&oacute;n de dicho registro para su posterior impresi&oacute;n.&lt;br&gt;&lt;/p&gt;', '2024-05-21 11:43:43'),
	(47, 1, 1, 91, '&lt;p&gt;Se procedio a formatear el CPU y reinstalar los programas.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;rlo&amp;nbsp;&amp;nbsp;&lt;/p&gt;', '2024-05-21 12:12:00'),
	(48, 1, 1, 94, '&lt;p&gt;Se llevo a cabo la instalaci&oacute;n de la impresora y se procedio a compartirla para que todos puedan imprimir.&lt;/p&gt;', '2024-05-23 08:25:21'),
	(49, 1, 1, 95, '&lt;p&gt;SE PROCEDIO A CAMBIAR LA PILA DEL EQUIPO.&lt;/p&gt;', '2024-05-24 12:14:34'),
	(50, 1, 1, 101, '&lt;p&gt;se procedio a formatear el equipo.&lt;/p&gt;', '2024-06-10 13:32:06'),
	(51, 1, 1, 103, '&lt;p&gt;Se encontro grapas en su sinterior, motivo por el cual no pasaban las hojas.&lt;/p&gt;', '2024-07-12 10:57:43'),
	(52, 1, 1, 105, '&lt;p&gt;Se procedio a instalarle un nuevo disco duro y formatear el equipo&amp;nbsp;&lt;/p&gt;', '2024-08-02 07:24:31');

-- Volcando estructura para tabla dbsoporte.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.customers: ~55 rows (aproximadamente)
INSERT INTO `customers` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`) VALUES
	(6, 'ALDO', 'ATUNCAR TASAYCO', 'JEAN PIER', '469938060', 'PUEBLO NUEVO', 'JATUNCAR@GSP', '164beff24258c8bdb83551b8a995d424', '2024-03-15 12:49:21'),
	(7, 'JUAN', 'CUBA SALVATIERRA', '', '85858585', 'S/N', 'JCUBA', '55587a910882016321201e6ebbc9f595', '2024-03-15 13:00:34'),
	(8, 'Anthony', 'Niebuhr Herrera', 'Erick', '48017743', 'Jr. Micaela batidas 312', '48017743', '7c96860a22a5e2d28a3a45c309473c77', '2024-03-15 14:17:45'),
	(9, 'LUIS', 'ANICAMA', '', '12345678', 'S/N', 'ANICAMA', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-18 07:05:55'),
	(10, 'MERCEDES', 'CASTRO', '', '45124512', 'S/N', 'MCASTRO', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-18 07:17:49'),
	(11, 'SONIA', 'RAMOS', '', '45785689', 'S/D', 'SRAMOS', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-18 08:28:33'),
	(12, 'ALEXANDER', 'DELGADO SANTIAGO', '', '56565656', 'S/D', 'ADELGADO', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-18 08:47:01'),
	(13, 'FELIX', 'HERNANDEZ MELO', '', '45784578', 'S/D', 'FHERNANDEZ', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 06:46:44'),
	(14, 'PEDRO', 'HUAROTE ALDAY ', '', '14141414', 'S/N', 'PHUAROTE', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 09:20:54'),
	(17, 'ALEJANDRO', 'LARA ', '', '94964131', 'S/N', 'LARA', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:35:26'),
	(19, 'Liliana ', 'MartÃ­nez Silva', '', '144782244', 's', 'lmartinez', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:36:16'),
	(20, 'Claudia ', 'Mendoza Espinoza', 'Yelitza ', '12345647', 's', 'cmendoza', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:37:08'),
	(21, 'Cesar', 'Acosta Olivari', ' Gustavo ', '74121524', 's', 'cacosta', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:37:54'),
	(22, 'Alejandro ', ' Lara Ã‘opo', '', '7485961535', 's', 'alara', '8d5e957f297893487bd98fa830fa6413', '2024-03-19 12:40:08'),
	(23, 'Mariela Del Pilar', 'Lopez  Magallanes  ', '', '4175255174', 's', 'mlopez', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:41:09'),
	(24, 'Daniel ', 'Rojas Marcelo', 'Miguel ', '7485157', 's', 'drojas', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:41:55'),
	(25, 'Rosa', 'Zarate Vargas', ' Lia ', '74157863', 's/n', 'rzarate', '202cb962ac59075b964b07152d234b70', '2024-03-19 12:42:32'),
	(26, ' Lourdes', 'Martinez Jonda', ' Carmen', '86748515', 's', 'ljonda', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 12:43:16'),
	(27, 'Eneida ', 'Herencia Bernaola', '', '23414845', 'S/N', 'ENEIDA', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:07:37'),
	(28, 'Brenda ', 'Romero Guillen', '', '12345678', 'Chincha Alta', 'Brenda@demuna', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:11:11'),
	(29, 'JOSELYN', 'CARBAJAL CARDENAS ', '', '46987748', 'S/N', 'JOSELYN@GM', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:13:45'),
	(30, 'Evelyn', 'Castilla', '', '25953285', 'PUEBLO NUEVO', 'evelyn@gaj', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:21:34'),
	(31, 'Sergio', 'Figueroa de la Cruz ', 'Alejandro', '72693395', 'PUEBLO NUEVO', 'alejandro', '7f18bd18643dc4f5e797bbc3d39c39f1', '2024-03-19 13:27:20'),
	(32, 'JORGE', 'SALAS ', '', '12345678', 'S/N', 'JSALAS@GAT.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:37:55'),
	(33, 'Flor', 'Salazar', '', '65264781', 'S/N', 'flor@GSG', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:39:32'),
	(34, 'JAIME', 'TRUCIOS HUAROTE ', '', '12345678', 'S/N', 'Jaime@trucios', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:42:23'),
	(35, 'GIULIANA', 'MAGALLANES ', '', '87654321', 'S/N', 'giuliana', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-19 13:49:14'),
	(36, 'CARLOS', 'CANO GUARDIA', 'FELIZ', '89865458', 'S/D', 'FCANO', 'caf1a3dfb505ffed0d024130f58c5cfa', '2024-03-20 10:01:47'),
	(37, 'Sergio Alejandro', 'Figueroa de laÂ Cruz', '', '65852563', 'S/D', 'SFIGUEROA', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-21 09:19:46'),
	(38, 'Jennifer ', 'YATACO YATACO', 'Karolina', '76409816', '76409816', '76409816', 'aefaa232bb85738935a341cf5fde5c78', '2024-03-26 10:31:29'),
	(39, 'FLOR', 'MARTINEZ', '', '12345678', 'S/N', 'FLOGISTICA', '202cb962ac59075b964b07152d234b70', '2024-03-26 10:43:23'),
	(40, 'NOELIA', 'YATACO', '', '12345678', 'S/N', 'noe@sgrh', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-26 11:15:05'),
	(41, 'Gustavo', 'Quispe', '', '98989898', 'S/D', 'Gquispe', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-26 11:17:28'),
	(42, 'Marisela', 'Ronceros Aburto', 'Milagros ', '12345678', 'S/D', 'MRONCEROS', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-26 11:19:18'),
	(43, 'NELSON', 'UCULMANA MENDOZA', '', '75583549', 'S/D', 'Nelson@tramite', 'caf1a3dfb505ffed0d024130f58c5cfa', '2024-03-26 11:23:57'),
	(44, 'AZUCENA', 'CHAVEZ ANICAMA', '', '87654321', 'S/D', 'AZUCENA', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-26 12:52:35'),
	(45, 'VICTOR', 'ABREGU DE LA CRUZ ', '', '12345678', 'S/D', 'VABREGU', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-02 13:22:23'),
	(46, 'JOSE', 'QUINTANA SANTIAGO', '', '12345678', 's/d', 'quintana@mpch', '202cb962ac59075b964b07152d234b70', '2024-04-04 08:30:37'),
	(47, 'MARTIN', 'YATACO CASTILLA ', '', '69696969', 'S/D', 'myataco', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-04 11:34:34'),
	(48, 'Juan', 'Alfaro', '', '00047022', 'S/D', 'ALfaro', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-11 07:48:58'),
	(49, 'CECILIA', 'OVIEDO FELIX', '', '87654321', 'S/D', 'ceci@procu', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-11 11:20:46'),
	(50, 'HECTOR ', 'TASAYCO CAÃ‘AS ', 'EDUARDO', '00000000', 'S/D', 'HTASAYCO', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-16 10:12:22'),
	(51, 'MarÃ­a ', 'Salvatierra Ramos', 'Lourdes', '40212149', 'S/N', '40212149', 'deee4d91ee9b58c0906eba85e6984a9a', '2024-04-22 10:29:05'),
	(52, 'MARIA ', 'CHOQUE ', '', '12345678', 'S/D', 'MCHOQUE', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-26 08:21:36'),
	(53, 'Juan', 'OrmeÃ±o Guzman', '', '12345678', 'CHINCHA ALTA ', 'JOGUZMAN', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-03 09:58:53'),
	(54, 'CARLOS', 'OCHOA  CHACALTANA', 'LUIS GEOVANINI', '87654321', 'S/D', 'ochoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-07 06:47:24'),
	(55, 'Juan ', 'Pachas Castilla', 'Carlos', '00000000', 'PUEBLO NUEVO', 'jpachas', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-08 13:18:38'),
	(56, 'Jose', 'Ubillus', 'Ubillus', '45781245', 'S/D', 'jUbillus', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-09 07:31:22'),
	(57, 'ERINSON ', 'ROY RIVERA ', 'LEONEL', '12345678', 'CHINCHA ALTA ', 'elroy', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-21 09:28:50'),
	(58, 'Natalia', 'SaldaÃ±a', '', '00000000', 'PUEBLO NUEVO', 'nsaldaÃ±a', '202cb962ac59075b964b07152d234b70', '2024-05-23 08:17:43'),
	(59, 'JESUS', 'CHACALIAZA', '', '00001111', 'PUEBLO NUEVO', 'jechacaliaza', 'e10adc3949ba59abbe56e057f20f883e', '2024-06-10 13:31:01'),
	(60, 'Nancy', 'Rojas', '', '12345678', 'S/D', 'nrojas', 'e10adc3949ba59abbe56e057f20f883e', '2024-06-10 13:33:35'),
	(61, 'Joana ', 'Mateo Yaya', 'Rosaly', '00000000', 'S/D', 'joyaya', 'e10adc3949ba59abbe56e057f20f883e', '2024-07-12 13:17:01'),
	(62, 'Miguel', 'Cortez ', '', '00000000', 'PUEBLO NUEVO', 'MCORTEZ', '202cb962ac59075b964b07152d234b70', '2024-08-02 07:26:09'),
	(63, 'Ruddy', 'Guzman Guerra', 'Stefano', '76565825', 'S/D', 'stefanoguzmanguerra11@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-09-25 08:40:28'),
	(64, 'PAOLO ', 'GUERRERO', 'ANTONIO', '1234567', 'AV. FLORES', 'guerrero@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-12 23:01:29');

-- Volcando estructura para tabla dbsoporte.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.departments: ~7 rows (aproximadamente)
INSERT INTO `departments` (`id`, `name`, `description`, `date_created`) VALUES
	(4, 'Jean Pier Atuncar', 'Rentas, Sistemas, Servidores,Tramite documentario, SIAF', '2023-09-20 13:51:36'),
	(5, 'Jorge Matta Renwick ', 'Soporte tecnico, Impresoras, Escaners', '2023-09-20 13:51:59'),
	(6, 'Christian  Sanchez ', 'Soporte tecnico, Gob.pe, Canal Digital', '2023-09-20 13:52:22'),
	(8, 'Andre Alvarez Gamarra', 'Soporte tecnico', '2024-03-06 17:15:40'),
	(9, 'Israel Chava', 'Gobierno y TranspormaciÃ³n Digital.', '2024-03-18 06:19:33'),
	(10, 'Geraldine Cateriano', 'Practicante', '2024-09-23 10:56:30'),
	(11, 'Ruddy Stefano Guzman Guerra', 'Practicante', '2024-09-25 08:52:15');

-- Volcando estructura para tabla dbsoporte.oficina
CREATE TABLE IF NOT EXISTS `oficina` (
  `oficina_id` int(11) NOT NULL,
  `nombre_ofi` varchar(50) NOT NULL,
  UNIQUE KEY `oficina_id` (`oficina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.oficina: ~27 rows (aproximadamente)
INSERT INTO `oficina` (`oficina_id`, `nombre_ofi`) VALUES
	(1, 'Gerencia de Servicio al Ciudadano'),
	(2, 'Gerencia Municipal'),
	(3, 'Sub Gerencia de Logisitica'),
	(4, 'Gerencia de Asesoria Juridica '),
	(5, 'Gerencia de Acondicionamiento Territorial '),
	(6, 'Gerencia de Administracion Tributaria'),
	(7, 'Sub Gerencia de Tesoreria'),
	(8, 'Sub Gerencia de Gestion Documentaria'),
	(9, 'Sub Gerencia de Contabilidad '),
	(10, 'Sub Gerencia de Obras'),
	(11, 'Sub Gerencia de Recursos Humanos'),
	(12, 'Gerencia de Planificacion y Presupuesto'),
	(13, 'Sub Gerencia de Transporte y Seguridad Vial '),
	(14, 'Gerencia de Secretaria General '),
	(15, 'Sub Gerencia de Registro Civil'),
	(16, 'Sub Gerencia de Promocion del Turismo y Desarrollo'),
	(17, 'Sub Gerencia de Gestion de Riesgo de Desastres y D'),
	(18, 'Sub Gerencia de Seguridad Ciudadana y Policia Muni'),
	(19, 'Gerencia de la Unidad de Residuos Solidos'),
	(20, 'Sub Gerencia de Servicios y Programas Sociales '),
	(21, 'Gerencia de Desarrollo Humano y Promocion Social'),
	(22, 'Jefe de la Division de Estudios y Proyectos '),
	(23, 'Procurador Publico Municipal '),
	(24, 'Sub Gerencia de Gestion Ambiental Saneamiento y Sa'),
	(25, 'Organo de Control Institucional'),
	(26, 'Oficina de Limpieza Publica '),
	(27, 'Almacen');

-- Volcando estructura para tabla dbsoporte.problema
CREATE TABLE IF NOT EXISTS `problema` (
  `problema_id` int(11) NOT NULL,
  `nombre_prob` varchar(50) NOT NULL,
  UNIQUE KEY `problema_id` (`problema_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.problema: ~33 rows (aproximadamente)
INSERT INTO `problema` (`problema_id`, `nombre_prob`) VALUES
	(1, 'Computadora / Laptop'),
	(2, 'Monitor'),
	(3, 'Teclado / Mouse / Parlantes'),
	(4, 'Impresora / Plotter / Escaner'),
	(5, 'Disco Duro / Memoria USB / CD'),
	(6, 'Telefono / Anexo'),
	(7, 'Switch / Router'),
	(8, 'Proyector Multimedia'),
	(9, 'UPS / Estabilizador'),
	(10, 'Reloj Biometrico'),
	(11, 'Windows / Office / Autocad'),
	(12, 'Virus / Antivirus'),
	(13, 'SIGA'),
	(14, 'SIAF'),
	(15, 'Transmision de SIAF'),
	(16, 'RENTAS'),
	(17, 'Otros Programas / Aplicativos'),
	(18, 'Carpeta o Archivos'),
	(19, 'Usuario o Clave de Windows'),
	(20, 'Sistema deTramite Documentario'),
	(21, 'Aplicativo Web'),
	(22, 'Correo Electronico Institucional'),
	(23, 'Portal Web Institucional Gob.pe'),
	(24, 'Mesa de partes MPCH'),
	(25, 'Pagina Web del Estado'),
	(26, 'Otras Paginas Web'),
	(27, 'Compra o Evaluacion de PC/ Periferico'),
	(28, 'Internet /Red'),
	(29, 'Reunion Zoom /Team /Meet'),
	(30, 'Firma Electronica '),
	(31, 'Sistema de Logistica'),
	(32, 'Sistema SELCON'),
	(33, 'Otros Problemas');

-- Volcando estructura para tabla dbsoporte.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `department_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.staff: ~6 rows (aproximadamente)
INSERT INTO `staff` (`id`, `department_id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`) VALUES
	(2, 4, 'ALDO', 'ATUNCAR TASAYCO', 'JEAN PIER', '46993860', 'PUEBLO NUEVO', 'JATUNCAR@GSP', '194ec1b8a4a9bb4220b6a36bcf78448a', '2023-09-20 14:02:34'),
	(5, 6, 'CHRISTIAN', 'SANCHEZ FARFAN', ' ERICK ANTHONY ', 'Chincha', 'Pueblo Nuevo', 'csanchez@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-06 17:26:10'),
	(6, 8, 'ANDRE', 'ALVAREZ GAMARRA ', 'LEONARDO', '72660646', 'CHINCHA ALTA', 'alvarezandre@gsp.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-15 13:36:56'),
	(7, 5, ' JORGE ', 'MATTA RENWICK ', 'JESUS ', '40967421', '40967421', 'jorgematta@gmail.com', '2268560dded1cc3779caafdc5c783dad', '2024-03-26 10:38:57'),
	(8, 10, 'GERALDINE ', 'CATERIANO GUILLEN', 'GUISELA', '71605467', 'CL HNOS ANGULO - SANTA ROSA 298', 'geraldine@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-09-23 10:58:07'),
	(9, 11, 'Ruddy', 'Guzman Guerra', 'Stefano', '76565825', 'S/D', 'stefanoguzmanguerra11@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-09-25 08:53:19');

-- Volcando estructura para tabla dbsoporte.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `codigop` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending,1=on process,2= Closed',
  `department_id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `staff_id` int(30) NOT NULL,
  `admin_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `problema_id` int(1) NOT NULL,
  `oficina_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.tickets: ~76 rows (aproximadamente)
INSERT INTO `tickets` (`id`, `description`, `codigop`, `status`, `department_id`, `customer_id`, `staff_id`, `admin_id`, `date_created`, `problema_id`, `oficina_id`) VALUES
	(32, '&lt;p&gt;Instalar proyecto para la capacitaci&oacute;n de presupuesto participativo en el auditorio del centro cultural&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'S/N', 3, 9, 42, 0, 1, '2024-03-15 14:19:11', 8, 12),
	(33, '&lt;p&gt;No enciende el CPU&lt;/p&gt;', '740899500214', 3, 5, 9, 0, 1, '2024-03-18 07:09:47', 1, 18),
	(34, '&lt;p&gt;TECLA PEGADA (CTRL)&lt;/p&gt;', 'S/N', 3, 4, 10, 0, 1, '2024-03-18 07:18:32', 1, 21),
	(35, '&lt;p&gt;CORRECION DE DATOS DEL REGISTRO O/S N 425&lt;/p&gt;', 'S/N', 3, 4, 11, 0, 1, '2024-03-18 08:30:09', 31, 3),
	(36, '&lt;p&gt;AGREGAR OPCION VERIFICACION DE CTA. CTE. AL USUARIO VICTOR ABREGU&lt;/p&gt;', 'S/N', 3, 4, 12, 0, 1, '2024-03-18 08:48:25', 16, 6),
	(37, '&lt;p&gt;NO SALE LA IMPRESION COMPLETA&lt;/p&gt;', 'S/N', 3, 4, 13, 0, 1, '2024-03-19 06:48:11', 33, 15),
	(38, '&lt;p&gt;Estado situacional de impresora HP LAserjet P1606dn&lt;/p&gt;', '740841000013', 3, 5, 14, 7, 1, '2024-03-19 09:23:58', 4, 23),
	(39, '&lt;p&gt;PROBLEMAS AL INGRESAR AL LINK DE REUNION MEET&lt;/p&gt;', 'S/N', 3, 8, 22, 0, 1, '2024-03-19 12:50:17', 33, 7),
	(40, '&lt;p&gt;No hay acceso a internet.&lt;/p&gt;', 'S/N', 3, 8, 27, 0, 1, '2024-03-19 13:08:51', 28, 4),
	(41, '&lt;p&gt;REGISTRAR NUEVO USUARIO AL SISTEMA DE RENTAS&lt;/p&gt;', 'S/N', 3, 4, 23, 0, 1, '2024-03-20 08:26:45', 16, 6),
	(42, '&lt;p&gt;NO IMPRIME&lt;/p&gt;', 'S/N', 3, 5, 36, 0, 1, '2024-03-20 10:02:57', 4, 24),
	(43, '&lt;p&gt;No tengo acceso a internet.&lt;/p&gt;', 'S/N', 3, 8, 35, 0, 1, '2024-03-21 06:57:46', 28, 9),
	(44, '&lt;p&gt;La impresora imprime varios documentos.&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 8, 30, 0, 1, '2024-03-21 09:27:52', 4, 4),
	(45, '&lt;p&gt;No puedo derivar el expediente 6412-2023 a la sub gerencia de gesti&oacute;n documentaria porque no me aparece en documentos por recibir/recibidos/derivados por m&aacute;s que en la hoja de ruta aparece en el &aacute;rea de secretar&iacute;a general.&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 4, 37, 0, 1, '2024-03-21 09:43:08', 20, 14),
	(46, '&lt;p&gt;atasco de papel&lt;/p&gt;', 'S/N', 3, 4, 14, 0, 1, '2024-03-26 10:28:53', 4, 23),
	(47, '&lt;p&gt;Configuraci&oacute;n de pc con impresora&lt;/p&gt;', '', 1, 4, 38, 0, 0, '2024-03-26 10:39:17', 0, 26),
	(48, '&lt;p&gt;No funciona el puerto de red&lt;/p&gt;', '740899500211', 3, 5, 39, 7, 1, '2024-03-26 10:48:39', 1, 3),
	(49, '&lt;p&gt;Estado situacional de Impresora HP Laserjet P1606dn&lt;/p&gt;', '740841000033', 3, 5, 14, 7, 1, '2024-03-26 11:07:16', 4, 23),
	(50, '&lt;p&gt;Estado situacional de Impresora Hp Laserjet P1606dn&lt;/p&gt;', '740841000016', 3, 5, 14, 7, 1, '2024-03-26 11:11:54', 4, 23),
	(51, '&lt;p&gt;Estado situacional de Impresora HP Laserjet P1102w&lt;/p&gt;', '740841000019', 3, 5, 14, 7, 1, '2024-03-26 11:15:24', 4, 23),
	(52, '&lt;p&gt;instalacion del sistema de asistencia para el personal obrero&lt;/p&gt;', 'S/N', 3, 4, 40, 0, 1, '2024-03-27 11:01:21', 0, 12),
	(53, '&lt;p&gt;Problemas del SIAF tablas pegadas&lt;/p&gt;', 'S/N', 3, 9, 42, 0, 1, '2024-04-02 12:39:40', 14, 12),
	(54, '&lt;p&gt;problema de conexi&oacute;n via zoom&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 6, 22, 5, 1, '2024-04-02 12:40:56', 29, 7),
	(55, '&lt;p&gt;No arranca windows&lt;/p&gt;', 'S/N', 3, 5, 26, 7, 1, '2024-04-02 12:47:31', 1, 15),
	(56, 'Quiero imprimir desde otra impresora.', 'S/N', 3, 8, 45, 0, 1, '2024-04-02 13:23:42', 4, 6),
	(57, '&lt;p&gt;No tengo acceso a internet.&lt;/p&gt;', 'S/N', 3, 8, 44, 0, 1, '2024-04-03 08:08:48', 28, 22),
	(58, '&lt;p&gt;Problemas en el SIAF, error del modulo administrativo&lt;/p&gt;', 'S/N', 3, 9, 22, 0, 1, '2024-04-03 10:07:40', 14, 7),
	(59, '&lt;p&gt;Impresora Epson L3110 no imprime, esta derramando tinta (sin cables)&lt;/p&gt;', '742223580055', 3, 9, 46, 0, 1, '2024-04-04 07:41:19', 4, 26),
	(60, 'No hay acceso a internet.', 'S/N', 3, 8, 30, 0, 1, '2024-04-04 08:28:43', 28, 4),
	(61, '&lt;p&gt;Necesito la clave del correo electronico institucional de la sub gerencia.&lt;/p&gt;', 'S/N', 3, 8, 21, 0, 1, '2024-04-04 08:44:30', 22, 18),
	(62, '&lt;p&gt;No enciende el CPU.&lt;/p&gt;', 'S/N', 3, 8, 25, 0, 1, '2024-04-05 09:33:01', 1, 20),
	(63, '&lt;p&gt;La PC se apaga cada cierto tiempo.&lt;/p&gt;', 'S/N', 3, 8, 19, 0, 1, '2024-04-05 12:55:19', 1, 2),
	(64, '&lt;p&gt;Problemas de impresi&oacute;n.&lt;/p&gt;', 'S/N', 3, 5, 36, 0, 1, '2024-04-08 13:30:31', 4, 24),
	(65, '&lt;p&gt;Apoyo para instalar una impresora.&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 8, 13, 0, 1, '2024-04-09 06:28:38', 4, 15),
	(66, 'Instalaci&oacute;n de una computadora completa.', 'S/N', 3, 8, 33, 0, 1, '2024-04-09 12:09:57', 33, 14),
	(67, '&lt;p&gt;PC DEMASIADO LENTA&lt;/p&gt;', 'S/N', 3, 9, 38, 0, 1, '2024-04-09 13:14:43', 1, 25),
	(68, '&lt;p&gt;La impresora no responde.&lt;/p&gt;', 'S/N', 3, 8, 22, 0, 1, '2024-04-10 12:24:20', 4, 7),
	(69, '&lt;p&gt;No hay acceso a internet en una PC.&lt;/p&gt;', 'S/N', 3, 8, 14, 0, 1, '2024-04-11 06:46:10', 28, 23),
	(70, 'NO INICIA SESION', '740899500282', 3, 8, 48, 0, 1, '2024-04-11 07:50:27', 1, 27),
	(71, '&lt;p&gt;Cambio de computadora.&lt;/p&gt;', 'S/N', 3, 8, 27, 0, 1, '2024-04-11 13:36:42', 33, 4),
	(72, '&lt;p&gt;INSTALACION DE UNA COMPUTADORA COMPLETA.&lt;/p&gt;', 'S/N', 3, 8, 28, 0, 1, '2024-04-11 13:38:15', 1, 4),
	(73, '&lt;p&gt;Problemas para imprimir.&lt;/p&gt;', 'S/N', 3, 8, 9, 0, 1, '2024-04-12 11:06:55', 4, 18),
	(74, '&lt;p&gt;No enciende el equipo.&lt;/p&gt;', '740899500155', 3, 8, 31, 0, 1, '2024-04-15 07:03:37', 1, 14),
	(75, '&lt;p&gt;Se apaga el proyector.&lt;/p&gt;', '952278340005', 3, 5, 50, 0, 1, '2024-04-16 10:14:14', 8, 21),
	(76, '&lt;p&gt;CONFIGURACION DE PC&lt;/p&gt;', '', 3, 6, 38, 0, 0, '2024-04-17 07:32:44', 1, 25),
	(77, '&lt;p&gt;Problemas de acceso al aplicativo de la contraloria&lt;/p&gt;', '', 3, 9, 51, 0, 0, '2024-04-22 10:30:52', 26, 25),
	(78, '&lt;p&gt;No puedo editar un archivo excel&lt;/p&gt;', 'S/N', 3, 8, 19, 0, 1, '2024-04-23 09:03:50', 18, 2),
	(79, '&lt;p&gt;INSTALACION DE FIRMA DIGITAL&lt;/p&gt;', 'S/N', 1, 9, 38, 0, 1, '2024-04-23 11:00:55', 17, 25),
	(80, 'PROBLEMAS CON LA IMPRESORA&amp;nbsp;', 'S/N', 3, 5, 30, 0, 1, '2024-04-23 11:29:49', 4, 4),
	(81, '&lt;p&gt;Problemas para escanear&lt;/p&gt;', 'S/N', 3, 8, 53, 0, 1, '2024-05-03 10:00:34', 4, 11),
	(82, '&lt;p&gt;habilitar registros para su modificacion&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 4, 11, 0, 1, '2024-05-06 07:41:02', 31, 3),
	(83, '&lt;p&gt;NO HAY ACCESO A INTERNET&lt;/p&gt;', 'S/N', 3, 8, 54, 0, 1, '2024-05-07 06:49:37', 28, 16),
	(84, '&lt;p&gt;PROBLEMAS DE CONEXI&Oacute;N&lt;/p&gt;', '', 3, 4, 38, 0, 0, '2024-05-07 07:30:08', 28, 25),
	(85, '&lt;p&gt;PROBLEMAS DE PC, no enciende&lt;/p&gt;', 'S/N', 3, 5, 38, 0, 1, '2024-05-08 12:51:33', 1, 25),
	(86, '&lt;p&gt;Reparacion Impresora Epson L5290&lt;/p&gt;', 's/n', 3, 5, 55, 0, 1, '2024-05-08 13:24:34', 4, 19),
	(87, '&lt;p&gt;Habilitar registro para su impresi&oacute;n:&lt;br&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;MATIAS AMORETTI, DEYSI MARISOL,DNI: 41577416,EXP. RGTO. N&deg; 7314-2023,&lt;/span&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;COLOCAR EN OBSERVACIONES EL EXP. RGTO. N&deg; 7450-2024 TRAMITE DE DUPLICADO, CON FOLIOS 08&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'S/N', 3, 4, 56, 0, 1, '2024-05-09 07:32:16', 32, 13),
	(88, '&lt;p&gt;Instalaci&oacute;n de firma digital en laptop&lt;/p&gt;', '', 0, 0, 38, 0, 0, '2024-05-17 08:13:43', 1, 25),
	(89, '&lt;p&gt;Instalaci&oacute;n de firma digital en laptop&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 6, 38, 5, 1, '2024-05-17 08:14:32', 1, 25),
	(90, 'Problemas para escanear', 'S/N', 3, 8, 29, 0, 1, '2024-05-20 09:46:32', 4, 2),
	(91, '&lt;p&gt;Formatear el equipo ya que presenta fallos en su sistema operativo&lt;/p&gt;', 'S/N', 3, 8, 57, 0, 1, '2024-05-21 09:30:21', 1, 3),
	(92, '&lt;p&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;1. AGUIRRE BERROCAL MARIA ELENA&lt;/span&gt;&lt;br style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&amp;nbsp; &amp;nbsp;DNI: 45795817&lt;/span&gt;&lt;br style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&amp;nbsp; &amp;nbsp;NUMERO DELICENCIA:&lt;/span&gt;&lt;br style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&lt;span style=&quot;color: rgb(44, 54, 58); font-family: monospace; font-size: 13px;&quot;&gt;&amp;nbsp; &amp;nbsp;DICE: 2C45795817; DEBE DECIR: VM45795817&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'S/N', 3, 4, 56, 0, 1, '2024-05-21 11:09:00', 32, 13),
	(93, '&lt;p&gt;NO TENGO ACCESO A INTERNET&lt;/p&gt;', 'S/N', 3, 5, 58, 0, 1, '2024-05-23 08:18:29', 28, 10),
	(94, '&lt;p&gt;Instalar una impresora&amp;nbsp;&lt;/p&gt;', 'S/N', 3, 8, 24, 0, 1, '2024-05-23 08:21:17', 4, 9),
	(95, '&lt;p&gt;Se cambia la hora y fecha&lt;/p&gt;', 'S/N', 3, 8, 52, 0, 1, '2024-05-24 12:14:06', 1, 18),
	(96, '&lt;p&gt;Instalacion de una nueva impresora&lt;/p&gt;', 'S/N', 3, 8, 55, 0, 1, '2024-05-27 11:28:36', 4, 1),
	(97, 'CONFIGURACI&Oacute;N DE LAPTOP CON IMPRESORA', '', 2, 4, 38, 0, 0, '2024-05-29 09:14:38', 1, 25),
	(98, '&lt;p&gt;No puedo abrir el google meet&lt;/p&gt;', 'S/N', 3, 8, 27, 0, 1, '2024-05-29 10:53:06', 33, 4),
	(99, '&lt;p&gt;NO SE PUEDE IMPRIMIR COMPROBANTES.&lt;/p&gt;', 'S/N', 3, 8, 22, 0, 1, '2024-05-29 11:09:53', 14, 7),
	(100, '&lt;p&gt;PROBLEMAS CON EL ESTABILIZADOR&lt;/p&gt;', 'S/N', 3, 8, 30, 0, 1, '2024-06-03 08:45:22', 33, 4),
	(101, 'NO RESPONDE EL CPU', 'S/N', 3, 8, 59, 0, 1, '2024-06-10 13:31:42', 1, 12),
	(102, '&lt;p&gt;Instalacion de una impresora&lt;/p&gt;', 'S/N', 3, 8, 60, 0, 1, '2024-06-10 13:34:16', 33, 7),
	(103, '&lt;p&gt;No se puede escanear&lt;/p&gt;', '740841000033', 3, 5, 14, 0, 1, '2024-07-12 10:56:52', 4, 23),
	(104, '&lt;p&gt;Se atasco un papel.&lt;/p&gt;', '742223580039', 3, 5, 61, 0, 1, '2024-07-12 13:18:10', 4, 8),
	(105, '&lt;p&gt;NO INICIA SESION&lt;/p&gt;', '740899500219', 3, 5, 21, 0, 1, '2024-08-02 07:23:48', 1, 18),
	(106, '&lt;p&gt;ERROR AL ENCEDER LA IMPRESORA&lt;/p&gt;', '742223580053', 0, 5, 55, 0, 0, '2024-09-25 08:10:00', 4, 1),
	(107, '&lt;p&gt;El teclado presenta fallas&amp;nbsp;&lt;/p&gt;', '12345678', 0, 10, 45, 0, 1, '2024-10-12 21:26:15', 3, 1),
	(108, '&lt;p&gt;Defectuoso&lt;/p&gt;', '123456789', 0, 10, 22, 0, 1, '2024-10-12 21:46:12', 1, 1),
	(109, '&lt;p&gt;no prende&lt;/p&gt;', '', 0, 10, 64, 0, 0, '2024-10-12 23:04:56', 2, 7);

-- Volcando estructura para tabla dbsoporte.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '1 = Admin,2=support',
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbsoporte.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `role`, `username`, `password`, `date_created`) VALUES
	(1, 'GSISTEMASPRO', '', '', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
