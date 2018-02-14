-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-07-2013 a las 10:07:00
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdjireh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_bank_acount`
--

CREATE TABLE IF NOT EXISTS `mws_bank_acount` (
  `a_bankAcountId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_bankAcountName` text NOT NULL,
  `a_bankAcountCustomerHolder` varchar(250) NOT NULL,
  `a_bankAcountNumber` text NOT NULL,
  `a_bankAcountStatus` int(1) NOT NULL,
  PRIMARY KEY (`a_bankAcountId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mws_bank_acount`
--

INSERT INTO `mws_bank_acount` (`a_bankAcountId`, `a_bankAcountName`, `a_bankAcountCustomerHolder`, `a_bankAcountNumber`, `a_bankAcountStatus`) VALUES
(1, 'BANESCO - CTA CORRIENTE', 'INVERSIONES JIREH 2005 C.A', '0116-0858-17-000056056952', 1),
(2, 'PROVINCIAL - CTA CORRIENTE', 'INVERSIONES JIREH 2005 C.A', '0116-0858-17-03255605852', 1),
(6, 'BANCO DEL CARIBE', 'INVERSIONES JIREH 2005 C.A', '0116-0858-17-003366999810', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_country`
--

CREATE TABLE IF NOT EXISTS `mws_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `country_name` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  `country_3_code` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `country_2_code` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Country records' AUTO_INCREMENT=240 ;

--
-- Volcado de datos para la tabla `mws_country`
--

INSERT INTO `mws_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'Zaire', 'ZAR', 'ZR'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_currency`
--

CREATE TABLE IF NOT EXISTS `mws_currency` (
  `c_currencyId` int(11) NOT NULL AUTO_INCREMENT,
  `c_currencyName` varchar(64) DEFAULT NULL,
  `c_currencyCode` char(4) DEFAULT NULL,
  `c_currencyStatus` int(1) NOT NULL,
  PRIMARY KEY (`c_currencyId`),
  KEY `idx_currency_name` (`c_currencyName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `mws_currency`
--

INSERT INTO `mws_currency` (`c_currencyId`, `c_currencyName`, `c_currencyCode`, `c_currencyStatus`) VALUES
(8, 'bolivar fuerte', 'Bsf.', 1),
(35, 'Dollar', 'USD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_images`
--

CREATE TABLE IF NOT EXISTS `mws_images` (
  `i_imgId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `i_imgName` varchar(200) NOT NULL,
  `i_imgPath` text NOT NULL,
  `i_imgFolder` int(11) NOT NULL,
  `i_imgInternalPath` text NOT NULL,
  `i_imgRegDate` datetime NOT NULL,
  `i_imgUpdateDate` datetime NOT NULL,
  PRIMARY KEY (`i_imgId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Volcado de datos para la tabla `mws_images`
--

INSERT INTO `mws_images` (`i_imgId`, `i_imgName`, `i_imgPath`, `i_imgFolder`, `i_imgInternalPath`, `i_imgRegDate`, `i_imgUpdateDate`) VALUES
(1, '04.jpg', 'http://localhost/inversionesjireh/images/_jpg7CNCVU6H_.jpg', 0, '../../images//_jpg7CNCVU6H_.jpg', '2013-06-30 18:45:34', '0000-00-00 00:00:00'),
(2, '05.jpg', 'http://localhost/inversionesjireh/images/_jpg8QKNII9N_.jpg', 0, '../../images//_jpg8QKNII9N_.jpg', '2013-06-30 19:11:30', '0000-00-00 00:00:00'),
(3, '03.jpg', 'http://localhost/inversionesjireh/images/_jpgUXNDX2MS_.jpg', 0, '../../images//_jpgUXNDX2MS_.jpg', '2013-06-30 19:14:37', '0000-00-00 00:00:00'),
(4, '06.jpg', 'http://localhost/inversionesjireh/images/_jpg4XPIVXW3_.jpg', 0, '../../images//_jpg4XPIVXW3_.jpg', '2013-06-30 19:15:54', '0000-00-00 00:00:00'),
(5, '07.jpg', 'http://localhost/inversionesjireh/images/_jpgNNS8AXTL_.jpg', 0, '../../images//_jpgNNS8AXTL_.jpg', '2013-06-30 19:17:12', '0000-00-00 00:00:00'),
(6, '08.jpg', 'http://localhost/inversionesjireh/images/_jpgV6JXJ71P_.jpg', 0, '../../images//_jpgV6JXJ71P_.jpg', '2013-06-30 19:17:31', '0000-00-00 00:00:00'),
(7, '09.jpg', 'http://localhost/inversionesjireh/images/_jpg512KSTNA_.jpg', 0, '../../images//_jpg512KSTNA_.jpg', '2013-06-30 19:18:32', '0000-00-00 00:00:00'),
(8, '10.jpg', 'http://localhost/inversionesjireh/images/_jpgM1WRJYNS_.jpg', 0, '../../images//_jpgM1WRJYNS_.jpg', '2013-06-30 19:22:30', '0000-00-00 00:00:00'),
(9, '12.jpg', 'http://localhost/inversionesjireh/images/_jpgIGFPF1TD_.jpg', 0, '../../images//_jpgIGFPF1TD_.jpg', '2013-06-30 19:23:24', '0000-00-00 00:00:00'),
(10, '12.jpg', 'http://localhost/inversionesjireh/images/_jpgUDWU9T8Z_.jpg', 0, '../../images//_jpgUDWU9T8Z_.jpg', '2013-06-30 19:25:52', '0000-00-00 00:00:00'),
(11, '12.jpg', 'http://localhost/inversionesjireh/images/_jpg4TJQ2JXD_.jpg', 0, '../../images//_jpg4TJQ2JXD_.jpg', '2013-06-30 19:27:28', '0000-00-00 00:00:00'),
(12, '1.jpg', 'http://localhost/inversionesjireh/images/_jpgVFAEZHPS_.jpg', 0, '../../images//_jpgVFAEZHPS_.jpg', '2013-06-30 19:30:56', '0000-00-00 00:00:00'),
(13, '1.jpg', 'http://localhost/inversionesjireh/images/_jpg72MT6IYY_.jpg', 0, '../../images//_jpg72MT6IYY_.jpg', '2013-06-30 19:36:09', '0000-00-00 00:00:00'),
(14, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgZBVE59G5_.jpg', 0, '../../images//_jpgZBVE59G5_.jpg', '2013-06-30 19:38:28', '0000-00-00 00:00:00'),
(15, '3.jpg', 'http://localhost/inversionesjireh/images/_jpgR91EI94J_.jpg', 0, '../../images//_jpgR91EI94J_.jpg', '2013-06-30 19:47:43', '0000-00-00 00:00:00'),
(16, '4.jpg', 'http://localhost/inversionesjireh/images/_jpg1SSI1PH5_.jpg', 0, '../../images//_jpg1SSI1PH5_.jpg', '2013-06-30 19:49:17', '0000-00-00 00:00:00'),
(17, '5.jpg', 'http://localhost/inversionesjireh/images/_jpgRKW17M2Q_.jpg', 0, '../../images//_jpgRKW17M2Q_.jpg', '2013-06-30 19:54:19', '0000-00-00 00:00:00'),
(18, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgVZ61DWEP_.jpg', 0, '../../images//_jpgVZ61DWEP_.jpg', '2013-06-30 19:59:49', '0000-00-00 00:00:00'),
(19, '7.jpg', 'http://localhost/inversionesjireh/images/_jpgIW11121Q_.jpg', 0, '../../images//_jpgIW11121Q_.jpg', '2013-06-30 20:01:04', '0000-00-00 00:00:00'),
(21, '8.jpg', 'http://localhost/inversionesjireh/images/_jpg1M1GG6AL_.jpg', 0, '../../images//_jpg1M1GG6AL_.jpg', '2013-06-30 20:17:57', '0000-00-00 00:00:00'),
(22, '9.jpg', 'http://localhost/inversionesjireh/images/_jpg4UQ8YBSR_.jpg', 0, '../../images//_jpg4UQ8YBSR_.jpg', '2013-06-30 20:20:31', '0000-00-00 00:00:00'),
(23, '3.jpg', 'http://localhost/inversionesjireh/images/_jpgXMZ5JLTM_.jpg', 0, '../../images//_jpgXMZ5JLTM_.jpg', '2013-06-30 20:24:08', '0000-00-00 00:00:00'),
(24, '1.jpg', 'http://localhost/inversionesjireh/images/_jpg8V35RKMD_.jpg', 0, '../../images//_jpg8V35RKMD_.jpg', '2013-06-30 20:24:42', '0000-00-00 00:00:00'),
(25, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgLYH18EWG_.jpg', 0, '../../images//_jpgLYH18EWG_.jpg', '2013-06-30 20:24:47', '0000-00-00 00:00:00'),
(26, '3.jpg', 'http://localhost/inversionesjireh/images/_jpgI2RTXJ7G_.jpg', 0, '../../images//_jpgI2RTXJ7G_.jpg', '2013-06-30 20:25:02', '0000-00-00 00:00:00'),
(27, '4.jpg', 'http://localhost/inversionesjireh/images/_jpgG6G4XJ88_.jpg', 0, '../../images//_jpgG6G4XJ88_.jpg', '2013-06-30 20:31:29', '0000-00-00 00:00:00'),
(28, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgVMDV464E_.jpg', 0, '../../images//_jpgVMDV464E_.jpg', '2013-06-30 20:37:15', '0000-00-00 00:00:00'),
(29, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgL3F1Y7WC_.jpg', 0, '../../images//_jpgL3F1Y7WC_.jpg', '2013-06-30 20:37:38', '0000-00-00 00:00:00'),
(30, '7.jpg', 'http://localhost/inversionesjireh/images/_jpg1NW7YS1U_.jpg', 0, '../../images//_jpg1NW7YS1U_.jpg', '2013-06-30 20:45:36', '0000-00-00 00:00:00'),
(31, '8.jpg', 'http://localhost/inversionesjireh/images/_jpgDS3688LU_.jpg', 0, '../../images//_jpgDS3688LU_.jpg', '2013-06-30 21:05:06', '0000-00-00 00:00:00'),
(32, '9.jpg', 'http://localhost/inversionesjireh/images/_jpgULE2CLVQ_.jpg', 0, '../../images//_jpgULE2CLVQ_.jpg', '2013-06-30 21:08:07', '0000-00-00 00:00:00'),
(33, '10.jpg', 'http://localhost/inversionesjireh/images/_jpgEJZPCZSA_.jpg', 0, '../../images//_jpgEJZPCZSA_.jpg', '2013-06-30 21:12:24', '0000-00-00 00:00:00'),
(34, '11.jpg', 'http://localhost/inversionesjireh/images/_jpgYU8JJ39C_.jpg', 0, '../../images//_jpgYU8JJ39C_.jpg', '2013-06-30 21:15:06', '0000-00-00 00:00:00'),
(35, '11.jpg', 'http://localhost/inversionesjireh/images/_jpgY37ZYXK8_.jpg', 0, '../../images//_jpgY37ZYXK8_.jpg', '2013-06-30 21:20:04', '0000-00-00 00:00:00'),
(36, '12.jpg', 'http://localhost/inversionesjireh/images/_jpg4J3SF11P_.jpg', 0, '../../images//_jpg4J3SF11P_.jpg', '2013-06-30 21:21:49', '0000-00-00 00:00:00'),
(37, '5.jpg', 'http://localhost/inversionesjireh/images/_jpgERFNCCXE_.jpg', 0, '../../images//_jpgERFNCCXE_.jpg', '2013-06-30 21:27:03', '0000-00-00 00:00:00'),
(38, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgY2G9P6NM_.jpg', 0, '../../images//_jpgY2G9P6NM_.jpg', '2013-06-30 21:32:21', '0000-00-00 00:00:00'),
(39, '7.jpg', 'http://localhost/inversionesjireh/images/_jpgCR4SX6Y1_.jpg', 0, '../../images//_jpgCR4SX6Y1_.jpg', '2013-06-30 21:34:17', '0000-00-00 00:00:00'),
(40, '10.jpg', 'http://localhost/inversionesjireh/images/_jpgZJT2E4ES_.jpg', 0, '../../images//_jpgZJT2E4ES_.jpg', '2013-06-30 21:35:24', '0000-00-00 00:00:00'),
(41, '12.jpg', 'http://localhost/inversionesjireh/images/_jpgY29Z7E21_.jpg', 0, '../../images//_jpgY29Z7E21_.jpg', '2013-06-30 21:37:05', '0000-00-00 00:00:00'),
(42, '1.jpg', 'http://localhost/inversionesjireh/images/_jpgC2R2ZZJ2_.jpg', 0, '../../images//_jpgC2R2ZZJ2_.jpg', '2013-06-30 22:02:02', '0000-00-00 00:00:00'),
(43, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgIHF5EUYY_.jpg', 0, '../../images//_jpgIHF5EUYY_.jpg', '2013-06-30 22:02:32', '0000-00-00 00:00:00'),
(44, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgBHHL13XQ_.jpg', 0, '../../images//_jpgBHHL13XQ_.jpg', '2013-06-30 22:04:50', '0000-00-00 00:00:00'),
(45, '7.jpg', 'http://localhost/inversionesjireh/images/_jpgIQBVHA47_.jpg', 0, '../../images//_jpgIQBVHA47_.jpg', '2013-06-30 22:05:40', '0000-00-00 00:00:00'),
(46, '1.jpg', 'http://localhost/inversionesjireh/images/_jpgXNCP1X58_.jpg', 0, '../../images//_jpgXNCP1X58_.jpg', '2013-06-30 22:09:54', '0000-00-00 00:00:00'),
(47, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgQJDKB8RS_.jpg', 0, '../../images//_jpgQJDKB8RS_.jpg', '2013-06-30 22:10:31', '0000-00-00 00:00:00'),
(48, '3.jpg', 'http://localhost/inversionesjireh/images/_jpg14Y4RRG8_.jpg', 0, '../../images//_jpg14Y4RRG8_.jpg', '2013-06-30 22:11:10', '0000-00-00 00:00:00'),
(49, '4.jpg', 'http://localhost/inversionesjireh/images/_jpgQ2TY1YM5_.jpg', 0, '../../images//_jpgQ2TY1YM5_.jpg', '2013-06-30 22:13:25', '0000-00-00 00:00:00'),
(50, '5.jpg', 'http://localhost/inversionesjireh/images/_jpgU6W8MZAN_.jpg', 0, '../../images//_jpgU6W8MZAN_.jpg', '2013-06-30 22:14:24', '0000-00-00 00:00:00'),
(51, '6.jpg', 'http://localhost/inversionesjireh/images/_jpg9HSG1MHC_.jpg', 0, '../../images//_jpg9HSG1MHC_.jpg', '2013-06-30 22:15:20', '0000-00-00 00:00:00'),
(52, '7.jpg', 'http://localhost/inversionesjireh/images/_jpgA8ZIC83D_.jpg', 0, '../../images//_jpgA8ZIC83D_.jpg', '2013-06-30 22:16:16', '0000-00-00 00:00:00'),
(53, '8.jpg', 'http://localhost/inversionesjireh/images/_jpg8FLVQ1GE_.jpg', 0, '../../images//_jpg8FLVQ1GE_.jpg', '2013-06-30 22:17:23', '0000-00-00 00:00:00'),
(54, '9.jpg', 'http://localhost/inversionesjireh/images/_jpgUAGZEYHN_.jpg', 0, '../../images//_jpgUAGZEYHN_.jpg', '2013-06-30 22:22:04', '0000-00-00 00:00:00'),
(55, '2.jpg', 'http://localhost/inversionesjireh/images/_jpg7T188WWQ_.jpg', 0, '../../images//_jpg7T188WWQ_.jpg', '2013-06-30 22:35:43', '0000-00-00 00:00:00'),
(56, '1.jpg', 'http://localhost/inversionesjireh/images/_jpg5IY6BQYA_.jpg', 0, '../../images//_jpg5IY6BQYA_.jpg', '2013-06-30 22:39:03', '0000-00-00 00:00:00'),
(57, '3.jpg', 'http://localhost/inversionesjireh/images/_jpg3MZ8EPA1_.jpg', 0, '../../images//_jpg3MZ8EPA1_.jpg', '2013-06-30 22:39:54', '0000-00-00 00:00:00'),
(58, '4.jpg', 'http://localhost/inversionesjireh/images/_jpgAW3NLABS_.jpg', 0, '../../images//_jpgAW3NLABS_.jpg', '2013-06-30 22:41:02', '0000-00-00 00:00:00'),
(59, '5.jpg', 'http://localhost/inversionesjireh/images/_jpg41AD1XUK_.jpg', 0, '../../images//_jpg41AD1XUK_.jpg', '2013-06-30 22:41:38', '0000-00-00 00:00:00'),
(60, '1.jpg', 'http://localhost/inversionesjireh/images/_jpgMAK2J5N7_.jpg', 0, '../../images//_jpgMAK2J5N7_.jpg', '2013-06-30 22:43:32', '0000-00-00 00:00:00'),
(61, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgL1F3AXQ4_.jpg', 0, '../../images//_jpgL1F3AXQ4_.jpg', '2013-06-30 22:45:05', '0000-00-00 00:00:00'),
(62, '3.jpg', 'http://localhost/inversionesjireh/images/_jpgA12U27L9_.jpg', 0, '../../images//_jpgA12U27L9_.jpg', '2013-06-30 22:45:48', '0000-00-00 00:00:00'),
(63, '11.jpg', 'http://localhost/inversionesjireh/images/_jpg41IP41R1_.jpg', 0, '../../images//_jpg41IP41R1_.jpg', '2013-06-30 22:47:18', '0000-00-00 00:00:00'),
(64, '7.jpg', 'http://localhost/inversionesjireh/images/_jpgG4FU93PH_.jpg', 0, '../../images//_jpgG4FU93PH_.jpg', '2013-06-30 22:48:23', '0000-00-00 00:00:00'),
(65, '1.jpg', 'http://localhost/inversionesjireh/images/_jpg5JW2N3P2_.jpg', 0, '../../images//_jpg5JW2N3P2_.jpg', '2013-06-30 22:51:41', '0000-00-00 00:00:00'),
(66, '2.jpg', 'http://localhost/inversionesjireh/images/_jpgZ42E42VD_.jpg', 0, '../../images//_jpgZ42E42VD_.jpg', '2013-06-30 22:52:41', '0000-00-00 00:00:00'),
(67, '3.jpg', 'http://localhost/inversionesjireh/images/_jpgQZB6N3T8_.jpg', 0, '../../images//_jpgQZB6N3T8_.jpg', '2013-06-30 22:55:04', '0000-00-00 00:00:00'),
(68, '4.jpg', 'http://localhost/inversionesjireh/images/_jpg9YARS3HM_.jpg', 0, '../../images//_jpg9YARS3HM_.jpg', '2013-06-30 22:56:11', '0000-00-00 00:00:00'),
(69, '5.jpg', 'http://localhost/inversionesjireh/images/_jpgX4BX3NE1_.jpg', 0, '../../images//_jpgX4BX3NE1_.jpg', '2013-06-30 22:56:43', '0000-00-00 00:00:00'),
(70, '6.jpg', 'http://localhost/inversionesjireh/images/_jpgP1QW71ES_.jpg', 0, '../../images//_jpgP1QW71ES_.jpg', '2013-06-30 22:57:34', '0000-00-00 00:00:00'),
(71, '7.jpg', 'http://localhost/inversionesjireh/images/_jpg2GPNFYWP_.jpg', 0, '../../images//_jpg2GPNFYWP_.jpg', '2013-06-30 22:58:36', '0000-00-00 00:00:00'),
(72, '8.jpg', 'http://localhost/inversionesjireh/images/_jpg1XZG2J7X_.jpg', 0, '../../images//_jpg1XZG2J7X_.jpg', '2013-06-30 23:00:41', '0000-00-00 00:00:00'),
(73, '9.jpg', 'http://localhost/inversionesjireh/images/_jpgXA8LULE7_.jpg', 0, '../../images//_jpgXA8LULE7_.jpg', '2013-06-30 23:01:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_images_folders`
--

CREATE TABLE IF NOT EXISTS `mws_images_folders` (
  `f_imgFolderId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_imgFolderName` varchar(150) NOT NULL,
  `f_imgFolderInternalPath` text NOT NULL,
  `f_imgFolderAbsolutepath` text NOT NULL,
  `f_imgFolderRegDate` datetime NOT NULL,
  PRIMARY KEY (`f_imgFolderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mws_images_folders`
--

INSERT INTO `mws_images_folders` (`f_imgFolderId`, `f_imgFolderName`, `f_imgFolderInternalPath`, `f_imgFolderAbsolutepath`, `f_imgFolderRegDate`) VALUES
(1, 'productos', 'http://localhost/pcnetwork/images/productos', '../../images/productos', '2011-11-24 00:25:48'),
(2, 'usuarios', 'http://localhost/pcnetwork/images/usuarios', '../../images/usuarios', '2011-11-24 01:32:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_orders`
--

CREATE TABLE IF NOT EXISTS `mws_orders` (
  `o_orderId` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `o_orderUserId` int(11) NOT NULL,
  `o_orderUserName` varchar(300) NOT NULL,
  `o_orderNameBank` varchar(300) NOT NULL,
  `o_orederDepositNumber` varchar(300) NOT NULL,
  `o_orderStatus` int(2) NOT NULL,
  `o_orderCompany` varchar(300) NOT NULL,
  `o_orderUserFirstName` varchar(300) NOT NULL,
  `o_orderUserLastName` varchar(300) NOT NULL,
  `o_orderPhone1` varchar(50) NOT NULL,
  `o_orderPhone2` varchar(50) NOT NULL,
  `o_orderAddress1` varchar(500) NOT NULL,
  `o_orderAddress2` varchar(500) NOT NULL,
  `o_orderCity` varchar(300) NOT NULL,
  `o_orderState` varchar(300) NOT NULL,
  `o_orderZipCode` varchar(300) NOT NULL,
  `o_orderCountry` varchar(300) NOT NULL,
  `o_orderFax` varchar(50) NOT NULL,
  `o_orderEmail` varchar(300) NOT NULL,
  `o_orderShippingMethod` varchar(300) NOT NULL,
  `o_orderNumOrder` varchar(300) NOT NULL,
  `o_orderRegDate` varchar(100) NOT NULL,
  `o_orderSubTotal` decimal(10,2) NOT NULL,
  `o_orderTotalAmount` decimal(10,2) NOT NULL,
  `o_orderComment` varchar(400) NOT NULL,
  `o_orderIpAddress` varchar(20) NOT NULL,
  PRIMARY KEY (`o_orderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `mws_orders`
--

INSERT INTO `mws_orders` (`o_orderId`, `o_orderUserId`, `o_orderUserName`, `o_orderNameBank`, `o_orederDepositNumber`, `o_orderStatus`, `o_orderCompany`, `o_orderUserFirstName`, `o_orderUserLastName`, `o_orderPhone1`, `o_orderPhone2`, `o_orderAddress1`, `o_orderAddress2`, `o_orderCity`, `o_orderState`, `o_orderZipCode`, `o_orderCountry`, `o_orderFax`, `o_orderEmail`, `o_orderShippingMethod`, `o_orderNumOrder`, `o_orderRegDate`, `o_orderSubTotal`, `o_orderTotalAmount`, `o_orderComment`, `o_orderIpAddress`) VALUES
(00000000001, 2, '', '', 'PENDIENTE', 1, 'AJSYSTEM', 'Anderson', 'Buyones', 'sdv', '', 'san francisco', 'sdgv', 'sdvs', 'sdgv', '4004', 'Venezuela', 'Venezuela', 'and@hotmail.com', 'MRW', '', '2013-06-30 18:50:10', 600.00, 600.00, '', '127.0.0.1'),
(00000000002, 4, '', 'BANESCO - CTA CORRIENTE', '0116-0858-17-000056056952', 3, 'INVERSIONES JIREH', 'ANA', 'PEREZ', '04246936852', '02614789576', 'SAN FRANCISCO', 'SOLER', 'MARACAIBO', 'ZULIA', '4004', 'VENEZUELA', 'VENEZUELA', 'ana@hotmail.com', 'MRW', '', '2013-07-01 08:06:35', 9780.00, 9780.00, 'GRACIAS', '127.0.0.1'),
(00000000003, 5, '', 'PROVINCIAL - CTA CORRIENTE', '3213546', 3, '', 'Flor', 'Duran', '7661439', '', 'Haticos', 'San Francisco', 'Maracaibo', 'Zulia', '4004', 'Venezueka', 'Venezueka', 'flor@hotmail.com', 'MRW', '', '2013-07-01 15:00:13', 16570.00, 16570.00, 'Gracias', '127.0.0.1'),
(00000000004, 5, '', '', 'PENDIENTE', 1, '', 'Flor', 'Duran', '7661439', '', 'Haticos', 'San Francisco', 'Maracaibo', 'Zulia', '4004', 'Venezueka', 'Venezueka', 'flor@hotmail.com', 'MRW', '', '2013-07-01 15:05:58', 2800.00, 2800.00, '', '127.0.0.1'),
(00000000005, 5, '', '', 'PENDIENTE', 1, '', 'Flor', 'Duran', '7661439', '', 'Haticos', 'San Francisco', 'Maracaibo', 'Zulia', '4004', 'Venezueka', 'Venezueka', 'flor@hotmail.com', 'MRW', '', '2013-07-01 15:08:48', 252000.00, 252000.00, '', '127.0.0.1'),
(00000000006, 6, '', '', 'PENDIENTE', 3, '', 'Jocner', 'PatiÃ±o', '04246164434', '', 'San Francisco', '', 'Maracaibo', 'Zulia', '4004', 'Venezuela', 'Venezuela', 'jocner_p_b@hotmail.com', 'MRW', '', '2013-07-07 13:56:09', 1030.00, 1030.00, '', '127.0.0.1'),
(00000000007, 6, '', 'BANCO DEL CARIBE', '01245467', 3, '', 'Jocner', 'PatiÃ±o', '04246164434', '', 'San Francisco', '', 'Maracaibo', 'Zulia', '4004', 'Venezuela', 'Venezuela', 'jocner_p_b@hotmail.com', 'MRW', '', '2013-07-07 13:58:31', 300.00, 300.00, '', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_order_items`
--

CREATE TABLE IF NOT EXISTS `mws_order_items` (
  `oi_orderItemId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `oi_orderItemOrderId` int(11) unsigned zerofill NOT NULL,
  `oi_orderItemUserId` int(11) NOT NULL,
  `oi_orderItemCode` varchar(50) NOT NULL,
  `oi_orderItemProduct` varchar(200) NOT NULL,
  `oi_orderItemPrice` decimal(10,2) NOT NULL,
  `oi_orderItemFinalPrice` decimal(10,2) NOT NULL,
  `oi_orderItemQuantity` int(11) NOT NULL,
  `oi_orderItemSubTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`oi_orderItemId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `mws_order_items`
--

INSERT INTO `mws_order_items` (`oi_orderItemId`, `oi_orderItemOrderId`, `oi_orderItemUserId`, `oi_orderItemCode`, `oi_orderItemProduct`, `oi_orderItemPrice`, `oi_orderItemFinalPrice`, `oi_orderItemQuantity`, `oi_orderItemSubTotal`) VALUES
(1, 00000000001, 2, 'A001', 'Anillo 18 K', 250.00, 300.00, 2, 600.00),
(2, 00000000002, 4, 'A001', 'Anillo 18 K', 250.00, 300.00, 1, 300.00),
(3, 00000000002, 4, 'R008', 'Reloj Diesel ', 2000.00, 2200.00, 4, 8800.00),
(4, 00000000002, 4, 'C003', 'COLLAR PARA DAMAS ', 260.00, 220.00, 1, 220.00),
(5, 00000000002, 4, 'P007', 'PENDIENTE', 80.00, 90.00, 1, 90.00),
(6, 00000000002, 4, 'P002', 'PULSERAS PARA CABALLEROS', 140.00, 150.00, 1, 150.00),
(7, 00000000002, 4, 'P007', 'PULSERA DE CUERO', 200.00, 220.00, 1, 220.00),
(8, 00000000003, 5, 'A001', 'Anillo 18 K', 250.00, 300.00, 55, 16500.00),
(9, 00000000003, 5, 'A005', 'Anillo Antiestres de Estrelllas', 50.00, 70.00, 1, 70.00),
(10, 00000000004, 5, 'R009', 'Reloj Edifice ', 2600.00, 2800.00, 1, 2800.00),
(11, 00000000005, 5, 'R009', 'Reloj Edifice ', 2600.00, 2800.00, 90, 252000.00),
(12, 00000000006, 6, 'P009', 'PENDIENTE', 120.00, 130.00, 2, 260.00),
(13, 00000000006, 6, 'C008', 'COLLARES PARA CABALLERO ', 450.00, 570.00, 1, 570.00),
(14, 00000000006, 6, '0005', 'Gorra Plana', 180.00, 200.00, 1, 200.00),
(15, 00000000007, 6, 'A001', 'Anillo 18 K', 250.00, 300.00, 1, 300.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_order_status`
--

CREATE TABLE IF NOT EXISTS `mws_order_status` (
  `s_orderStatusId` int(11) NOT NULL AUTO_INCREMENT,
  `s_orderStatusCode` char(1) NOT NULL DEFAULT '',
  `s_orderStatusName` varchar(64) DEFAULT NULL,
  `s_orderStatusDescription` text NOT NULL,
  PRIMARY KEY (`s_orderStatusId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `mws_order_status`
--

INSERT INTO `mws_order_status` (`s_orderStatusId`, `s_orderStatusCode`, `s_orderStatusName`, `s_orderStatusDescription`) VALUES
(1, 'P', 'Pendiente', ''),
(2, 'T', 'Tramitandose', ''),
(3, 'E', 'Entregado', ''),
(4, 'C', 'Cancelado', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_productcategory`
--

CREATE TABLE IF NOT EXISTS `mws_productcategory` (
  `c_categoryId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `c_categoryName` varchar(100) NOT NULL,
  `c_categoryStatus` int(1) NOT NULL,
  `c_categoryRegdate` datetime NOT NULL,
  `c_categoryUpdatedate` datetime NOT NULL,
  PRIMARY KEY (`c_categoryId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `mws_productcategory`
--

INSERT INTO `mws_productcategory` (`c_categoryId`, `c_categoryName`, `c_categoryStatus`, `c_categoryRegdate`, `c_categoryUpdatedate`) VALUES
(1, 'Anillos', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Pendientes', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Collares para Damas', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Pulseras para Damas', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Collares para Caballeros', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Reloj', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Pulseras para Caballeros', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_products`
--

CREATE TABLE IF NOT EXISTS `mws_products` (
  `p_productId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_codeProduct` varchar(40) NOT NULL,
  `p_productName` varchar(100) NOT NULL,
  `p_productPrice` decimal(10,2) NOT NULL,
  `p_productFinalPrice` decimal(10,2) NOT NULL,
  `p_productStatus` tinyint(1) NOT NULL,
  `p_productOnSale` tinyint(1) NOT NULL,
  `p_productDescription` longtext NOT NULL,
  `p_productStock` int(11) NOT NULL,
  `p_productMinStock` int(11) NOT NULL,
  `p_productPicture` text NOT NULL,
  `p_productRegdate` datetime NOT NULL,
  `p_productUpdatedate` datetime NOT NULL,
  `p_productCurrency` text NOT NULL,
  `p_productCategory` int(2) NOT NULL,
  PRIMARY KEY (`p_productId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `mws_products`
--

INSERT INTO `mws_products` (`p_productId`, `p_codeProduct`, `p_productName`, `p_productPrice`, `p_productFinalPrice`, `p_productStatus`, `p_productOnSale`, `p_productDescription`, `p_productStock`, `p_productMinStock`, `p_productPicture`, `p_productRegdate`, `p_productUpdatedate`, `p_productCurrency`, `p_productCategory`) VALUES
(1, 'A001', 'Anillo 18 K', 250.00, 300.00, 1, 0, '<p>Anillo de 18 K Unixe Antiestres</p>', 41, 10, 'http://localhost/inversionesjireh/images/_jpg7CNCVU6H_.jpg', '2013-06-30 18:45:36', '2013-06-30 19:09:21', '', 1),
(2, 'A002', 'Anillo Antiestres', 50.00, 72.00, 1, 0, '<p>Anillo Antiestres Plateado</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpg8QKNII9N_.jpg', '2013-06-30 19:11:32', '2013-06-30 19:29:10', '', 1),
(3, 'A003', 'Anillo de Acero con Cruz', 50.00, 70.00, 1, 0, '<p>Anillo de Acero con Cruz</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpgUXNDX2MS_.jpg', '2013-06-30 19:14:12', '2013-06-30 19:14:39', '', 1),
(4, 'A004', 'Anillo de Acero Inoxidable', 30.00, 50.00, 1, 0, '<p>Anillo de Acero Inoxidable</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpg4XPIVXW3_.jpg', '2013-06-30 19:15:37', '2013-06-30 19:15:56', '', 1),
(5, 'A005', 'Anillo Antiestres de Estrelllas', 50.00, 70.00, 1, 0, '<p>Anillo Antiestres de Estrelllas</p>', 49, 10, 'http://localhost/inversionesjireh/images/_jpgNNS8AXTL_.jpg', '2013-06-30 19:17:13', '2013-06-30 19:17:13', '', 1),
(6, 'A006', 'Anillo Antiestres', 50.00, 70.00, 1, 0, '<p>Anillo Antiestres con Grabado Griego</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpgV6JXJ71P_.jpg', '2013-06-30 19:18:22', '2013-06-30 19:18:22', '', 1),
(7, 'A007', 'Anillo Antiestres', 50.00, 76.00, 1, 0, '<p>Anillo Antiestres con Grabado del Padre Nuestro</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpg512KSTNA_.jpg', '2013-06-30 19:20:58', '2013-06-30 19:29:28', '', 1),
(8, 'A008', 'Anillo de Acero Inoxidable', 30.00, 50.00, 1, 0, '<p>Anillo de Acero Inoxidable</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpgM1WRJYNS_.jpg', '2013-06-30 19:23:06', '2013-06-30 19:23:06', '', 1),
(9, 'A009', 'Anillo de Acero', 50.00, 75.00, 1, 0, '<p>Anillo de Acero con Dise&ntilde;o de X</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpg4TJQ2JXD_.jpg', '2013-06-30 19:28:01', '2013-06-30 19:28:01', '', 1),
(10, 'C001', 'COLLARES PARA CABALLEROS', 200.00, 250.00, 1, 0, '<p>CADENA DE CABALLERO DE ACERO INOXIDABLE</p>', 60, 5, 'http://localhost/inversionesjireh/images/_jpg72MT6IYY_.jpg', '2013-06-30 19:37:59', '2013-06-30 19:56:27', '', 5),
(12, 'C003', 'COLLARES PARA CABALLEROS', 500.00, 600.00, 1, 0, '<p>CADENA DE PLATA PARA CABALLERO</p>', 60, 10, 'http://localhost/inversionesjireh/images/_jpgR91EI94J_.jpg', '2013-06-30 19:48:42', '2013-06-30 19:56:16', '', 5),
(11, 'C002', 'COLLARES PARA CABALLEROS', 150.00, 100.00, 1, 0, '<p>CADENA PARA HOMBRES EN PLATAS ITALIANA</p>', 100, 50, 'http://localhost/inversionesjireh/images/_jpgZBVE59G5_.jpg', '2013-06-30 19:40:25', '2013-06-30 19:56:22', '', 5),
(13, 'C004', 'COLLARES PARA CABALLEROS', 800.00, 900.00, 1, 0, '<p>CADENA DE CABALLERO ORO LAMINADO</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpg1SSI1PH5_.jpg', '2013-06-30 19:50:52', '2013-06-30 19:56:11', '', 5),
(14, 'C005', 'COLLARES PARA CABALLEROS', 400.00, 500.00, 1, 0, '<p>CADENA DE ACERO GRUESA PARA CABALLERO</p>', 80, 5, 'http://localhost/inversionesjireh/images/_jpgRKW17M2Q_.jpg', '2013-06-30 19:55:43', '2013-06-30 19:55:43', '', 5),
(15, 'C006', 'COLLARES PARA CABALLEROS', 400.00, 450.00, 1, 0, '<p>COLLAR DE PLATA INOXIDABLE</p>', 40, 3, 'http://localhost/inversionesjireh/images/_jpgVZ61DWEP_.jpg', '2013-06-30 20:00:25', '2013-06-30 20:00:25', '', 5),
(16, 'C007', 'COLLARES PARA CABALLEROS', 350.00, 450.00, 1, 0, '<p>COLLAR DE TITANIO DE ACERO&nbsp;</p>', 50, 5, 'http://localhost/inversionesjireh/images/_jpgIW11121Q_.jpg', '2013-06-30 20:11:57', '2013-06-30 20:11:57', '', 5),
(18, 'C008', 'COLLARES PARA CABALLERO ', 450.00, 570.00, 1, 0, '<p>COLLAR DE TITANIO DE ACERO&nbsp;</p>', 39, 8, 'http://localhost/inversionesjireh/images/_jpg1M1GG6AL_.jpg', '2013-06-30 20:18:42', '2013-06-30 20:18:42', '', 5),
(19, 'C009', 'COLLAR PARA CABALLEROS ', 550.00, 630.00, 1, 0, '<p>COLLAR DE PLATA</p>', 60, 12, 'http://localhost/inversionesjireh/images/_jpg4UQ8YBSR_.jpg', '2013-06-30 20:22:33', '2013-06-30 20:22:33', '', 5),
(20, 'C001', 'COLLARES PARA DAMAS', 230.00, 290.00, 1, 0, '<p>LUNA CRECIENTE EN FORMA DE COLLAR&nbsp;</p>', 45, 9, 'http://localhost/inversionesjireh/images/_jpgI2RTXJ7G_.jpg', '2013-06-30 20:29:47', '2013-06-30 20:29:47', '', 3),
(21, 'C002', 'COLLARES PARA DAMA', 300.00, 350.00, 1, 0, '<p>COLLAR DE DIAMANTE&nbsp;</p>', 39, 10, 'http://localhost/inversionesjireh/images/_jpgG6G4XJ88_.jpg', '2013-06-30 20:36:23', '2013-06-30 20:36:23', '', 3),
(22, 'C003', 'COLLAR PARA DAMAS ', 260.00, 220.00, 1, 0, '<p>COLLAR DE PLATA&nbsp;</p>', 34, 8, 'http://localhost/inversionesjireh/images/_jpgL3F1Y7WC_.jpg', '2013-06-30 20:41:28', '2013-06-30 20:41:28', '', 3),
(23, 'C004', 'COLLAR PARA DAMAS ', 300.00, 360.00, 1, 0, '<p>COLLAR DE ORO</p>', 40, 5, 'http://localhost/inversionesjireh/images/_jpg1NW7YS1U_.jpg', '2013-06-30 20:52:01', '2013-06-30 20:52:01', '', 3),
(24, 'C005', 'COLLAR PARA DAMAS ', 290.00, 370.00, 1, 0, '<p>COLLAR DE PLATA</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpgDS3688LU_.jpg', '2013-06-30 21:07:21', '2013-06-30 21:07:21', '', 3),
(25, 'C006', 'COLLAR PARA DAMAS ', 420.00, 500.00, 1, 0, '<p>GARGANTILLA DE PLATA&nbsp;</p>', 65, 7, 'http://localhost/inversionesjireh/images/_jpgULE2CLVQ_.jpg', '2013-06-30 21:09:30', '2013-06-30 21:09:30', '', 3),
(26, 'C007', 'COLLAR PARA DAMAS ', 230.00, 300.00, 1, 0, '<p>COLLAR DE ACERO INOXIDABLE&nbsp;</p>', 30, 5, 'http://localhost/inversionesjireh/images/_jpgEJZPCZSA_.jpg', '2013-06-30 21:14:25', '2013-06-30 21:14:25', '', 3),
(28, 'C008', 'COLLARES DE DAMAS ', 310.00, 390.00, 1, 0, '<p>GARGANTILLA DE COLORES&nbsp;</p>', 50, 9, 'http://localhost/inversionesjireh/images/_jpgY37ZYXK8_.jpg', '2013-06-30 21:20:12', '2013-06-30 21:20:12', '', 3),
(29, 'C009', 'COLLARES PARA DAMAS ', 330.00, 410.00, 1, 0, '<p>COLLAR DE EORO&nbsp;</p>', 30, 5, 'http://localhost/inversionesjireh/images/_jpg4J3SF11P_.jpg', '2013-06-30 21:23:13', '2013-06-30 21:23:13', '', 3),
(30, 'P001', 'PENDIENTES ', 220.00, 300.00, 1, 0, '<p>Pendientes colgantes en lat&oacute;n dorado y cristal checo</p>', 35, 9, 'http://localhost/inversionesjireh/images/_jpgERFNCCXE_.jpg', '2013-06-30 21:31:20', '2013-06-30 22:00:46', '', 2),
(31, 'P002', 'PENDIENTES ', 250.00, 310.00, 1, 0, '<p>Pendientes colgantes en lat&oacute;n plateado y cristal checo color lila</p>', 55, 10, 'http://localhost/inversionesjireh/images/_jpgY2G9P6NM_.jpg', '2013-06-30 21:32:57', '2013-06-30 22:00:41', '', 2),
(32, 'P003', 'PENDIENTES ', 330.00, 400.00, 1, 0, '<p>Pendientes colgantes en lat&oacute;n plateado y cristal checo color rojo</p>', 40, 5, 'http://localhost/inversionesjireh/images/_jpgCR4SX6Y1_.jpg', '2013-06-30 21:34:52', '2013-06-30 22:00:36', '', 2),
(33, 'P004', 'PENDIENTES ', 400.00, 500.00, 1, 0, '<p>Pendientes colgantes en lat&oacute;n dorado y cristal checo color marf&iacute;l</p>', 42, 6, 'http://localhost/inversionesjireh/images/_jpgZJT2E4ES_.jpg', '2013-06-30 21:36:27', '2013-06-30 22:00:32', '', 2),
(34, 'P005', 'PENDIENTES', 230.00, 300.00, 1, 0, '<p>Pendientes colgantes en lat&oacute;n dorado y cristal checo color rosa salm&oacute;n</p>', 50, 10, 'http://localhost/inversionesjireh/images/_jpgY29Z7E21_.jpg', '2013-06-30 21:39:50', '2013-06-30 22:00:27', '', 2),
(35, 'P006', 'PENDIENTE', 70.00, 80.00, 1, 0, '<p>Pendientes aro (Criollas) de 45 mm de di&aacute;metro, en metal con ba&ntilde;o de plata</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgC2R2ZZJ2_.jpg', '2013-06-30 22:02:06', '2013-06-30 22:02:06', '', 2),
(36, 'P007', 'PENDIENTE', 80.00, 90.00, 1, 0, '<p>Pendientes en forma de aro plano en metal chapado en oro de 25 mm</p>', 99, 5, 'http://localhost/inversionesjireh/images/_jpgIHF5EUYY_.jpg', '2013-06-30 22:03:36', '2013-06-30 22:03:36', '', 2),
(37, 'P008', 'PENDIENTE', 100.00, 110.00, 1, 0, '<p>Pendientes en forma cuadrada con piedra de tanzanie azul, en metal chapado en oro</p>', 80, 3, 'http://localhost/inversionesjireh/images/_jpgBHHL13XQ_.jpg', '2013-06-30 22:04:29', '2013-06-30 22:05:10', '', 2),
(38, 'P009', 'PENDIENTE', 120.00, 130.00, 1, 0, '<p>Pendientes de colgar en forma de espiral en metal chapado en plata</p>', 68, 3, 'http://localhost/inversionesjireh/images/_jpgIQBVHA47_.jpg', '2013-06-30 22:05:58', '2013-06-30 22:05:58', '', 2),
(39, 'P001', 'PULSERAS PARA CABALLEROS', 150.00, 200.00, 1, 0, '<p>Pulsera de Acero Tipica</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgXNCP1X58_.jpg', '2013-06-30 22:10:06', '2013-06-30 22:12:11', '', 7),
(40, 'P002', 'PULSERAS PARA CABALLEROS', 140.00, 150.00, 1, 0, '<p>Pulsera de Acero con Tejido en X</p>', 59, 3, 'http://localhost/inversionesjireh/images/_jpgQJDKB8RS_.jpg', '2013-06-30 22:11:00', '2013-06-30 22:12:04', '', 7),
(41, 'P003', 'PULSERAS PARA CABALLEROS', 170.00, 180.00, 1, 0, '<p>Pulsera de Acero con Chapado Negro&nbsp;</p>', 100, 5, 'http://localhost/inversionesjireh/images/_jpg14Y4RRG8_.jpg', '2013-06-30 22:11:46', '2013-06-30 22:11:46', '', 7),
(42, 'P004', 'PULSERAS PARA CABALLEROS', 180.00, 200.00, 1, 0, '<p>Pulsera de Acero con Cadenas a los Lados</p>', 80, 5, 'http://localhost/inversionesjireh/images/_jpgQ2TY1YM5_.jpg', '2013-06-30 22:14:14', '2013-06-30 22:14:14', '', 7),
(43, 'P005', 'PULSERA PARA CABALLEROS', 220.00, 250.00, 1, 0, '<p>Pulsera de Acero con Placa</p>', 60, 3, 'http://localhost/inversionesjireh/images/_jpgU6W8MZAN_.jpg', '2013-06-30 22:15:06', '2013-06-30 22:15:06', '', 7),
(44, 'P006', 'PULSERAS PARA CABALLEROS', 200.00, 210.00, 1, 0, '<p>Pulsera de Acero con Chapado Negro y Plateado Fina</p>', 70, 3, 'http://localhost/inversionesjireh/images/_jpg9HSG1MHC_.jpg', '2013-06-30 22:15:54', '2013-06-30 22:15:54', '', 7),
(45, 'P007', 'PULSERAS PARA CABALLEROS', 200.00, 230.00, 1, 0, '<p>Pulsera de Acero con Chapado Negro y Figuras de Cruz</p>', 50, 3, 'http://localhost/inversionesjireh/images/_jpgA8ZIC83D_.jpg', '2013-06-30 22:17:10', '2013-06-30 22:17:10', '', 7),
(46, 'P008', 'PULSERAS PARA CABALLEROS', 250.00, 260.00, 1, 0, '<p>Pulsera de Acero tipo Cadenas con Cabezas de Dragones</p>', 40, 5, 'http://localhost/inversionesjireh/images/_jpg8FLVQ1GE_.jpg', '2013-06-30 22:21:56', '2013-06-30 22:21:56', '', 7),
(47, 'P009', 'PULSERAS PARA CABALLEROS ', 180.00, 190.00, 1, 0, '<p>Pulsera de Acero con Chapado de Oro</p>', 90, 5, 'http://localhost/inversionesjireh/images/_jpgUAGZEYHN_.jpg', '2013-06-30 22:22:44', '2013-06-30 22:22:44', '', 7),
(48, 'P001', 'PULSERA CHAPADO', 120.00, 130.00, 1, 0, '<p>Pulsera tipo esclava ancha acabado martel&eacute;, forma convecsa, en metal chapado en plata</p>', 70, 3, 'http://localhost/inversionesjireh/images/_jpg7T188WWQ_.jpg', '2013-06-30 22:38:20', '2013-06-30 22:38:20', '', 4),
(49, 'P002', 'PULSERA CHAPADO', 200.00, 260.00, 1, 0, '<p>ulsera tipo cord&oacute;n de metal chapado en oro</p>\r\n<p>Medida: 19 cm</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpg5IY6BQYA_.jpg', '2013-06-30 22:39:36', '2013-06-30 22:39:36', '', 4),
(50, 'P003', 'PULSERA CHAPADO', 200.00, 230.00, 1, 0, '<p>Pulsera tipo esclava ancha acabado martel&eacute;, forma convecsa, en metal chapado en oro</p>', 100, 5, 'http://localhost/inversionesjireh/images/_jpg3MZ8EPA1_.jpg', '2013-06-30 22:40:40', '2013-06-30 22:40:40', '', 4),
(51, 'P004', 'PULSERA CHAPADO', 140.00, 150.00, 1, 0, '<p>Pulsera tipo esclava con tres hilos ondulados, en metal chapado en oro Medida: 19 cm</p>', 100, 2, 'http://localhost/inversionesjireh/images/_jpgAW3NLABS_.jpg', '2013-06-30 22:41:26', '2013-06-30 22:42:30', '', 4),
(52, 'P005', 'PULSERA CHAPADO', 160.00, 140.00, 1, 0, '<p>Pulsera con ovalos unidos y extensi&oacute;n en el cierre, de metal chapado en plata</p>', 120, 10, 'http://localhost/inversionesjireh/images/_jpg41AD1XUK_.jpg', '2013-06-30 22:42:12', '2013-06-30 22:42:12', '', 4),
(53, 'P006', 'PULSERA DE CUERO', 150.00, 160.00, 1, 0, '<p>Colecci&oacute;n Fortuna</p>\r\n<p>Cuero trenzado color lila</p>\r\n<p>Tres bolas de adorno, a tono, de pl&aacute;stico, piedra de r&iacute;o y cristal checo</p>\r\n<p>Existe collar a juego</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgMAK2J5N7_.jpg', '2013-06-30 22:44:28', '2013-06-30 22:44:28', '', 4),
(54, 'P007', 'PULSERA DE CUERO', 200.00, 220.00, 1, 0, '<p>Pulsera Modelo Puerto Rico</p>\r\n<p>Material:</p>\r\n<p>Cuero (En varios colores)</p>\r\n<p>Metal Zamak con ba&ntilde;o de plata</p>\r\n<p>Medida para hombre (20/22 cm) y para mujer (17/19 cm)</p>', 139, 10, 'http://localhost/inversionesjireh/images/_jpgL1F3AXQ4_.jpg', '2013-06-30 22:45:24', '2013-06-30 22:45:24', '', 4),
(55, 'P008', 'PULSERA DE CUERO', 90.00, 120.00, 1, 0, '<p>Pulsera Modelo Menorca</p>\r\n<p>Material:</p>\r\n<p>Cuero (En varios colores)</p>\r\n<p>Metal Zamak con ba&ntilde;o de plata</p>\r\n<p>Medida para hombre (20/22 cm) y para mujer (17/19 cm</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgA12U27L9_.jpg', '2013-06-30 22:46:25', '2013-06-30 22:46:25', '', 4),
(56, 'P009', 'PULSERA DE CUERO', 150.00, 160.00, 1, 0, '<p>Pulsera Modelo Malaga</p>\r\n<p>Material:</p>\r\n<p>Cuero (En varios colores)</p>\r\n<p>Metal Zamak con ba&ntilde;o de plata</p>\r\n<p>Medida para hombre (20/22 cm) y para mujer (17/19 cm)</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgG4FU93PH_.jpg', '2013-06-30 22:48:51', '2013-06-30 22:48:51', '', 4),
(57, 'R001', 'Reloj Nautica', 500.00, 600.00, 1, 0, '<p>Reloj Nautica</p>', 101, 10, 'http://localhost/inversionesjireh/images/_jpg5JW2N3P2_.jpg', '2013-06-30 22:51:56', '2013-06-30 22:51:56', '', 6),
(58, 'R002', 'Reloj Waterproof ', 1000.00, 1200.00, 1, 0, '<p>Reloj Waterproof Resistente al Agua</p>', 60, 5, 'http://localhost/inversionesjireh/images/_jpgZ42E42VD_.jpg', '2013-06-30 22:53:12', '2013-06-30 22:53:12', '', 6),
(59, 'R003', 'Reloj Rolex CronÃ³grafo', 1500.00, 1600.00, 1, 0, '<p>Reloj Rolex Cron&oacute;grafo</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgQZB6N3T8_.jpg', '2013-06-30 22:55:16', '2013-06-30 22:55:16', '', 6),
(60, 'R004', 'Relojes Fossil ', 1400.00, 1500.00, 1, 0, '<p>Relojes Fossil Para Caballero</p>', 100, 5, 'http://localhost/inversionesjireh/images/_jpg9YARS3HM_.jpg', '2013-06-30 22:56:14', '2013-06-30 22:56:14', '', 6),
(61, 'R005', 'Reloj Longines ', 1800.00, 2000.00, 1, 0, '<p>Reloj Longines 2009 Correa de Cuero Marron</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpgX4BX3NE1_.jpg', '2013-06-30 22:57:08', '2013-06-30 22:57:08', '', 6),
(62, 'R006', 'Reloj Longines 2009 Plateado', 1800.00, 2000.00, 1, 0, '<p>Reloj Longines 2009 Plateado</p>', 100, 5, 'http://localhost/inversionesjireh/images/_jpgP1QW71ES_.jpg', '2013-06-30 22:57:49', '2013-06-30 22:57:49', '', 6),
(63, 'R007', 'Reloj Adidas ', 2200.00, 2300.00, 1, 0, '<p>Reloj Adidas Melbourne Mini 100% Original. Adh2745 Acero</p>', 100, 10, 'http://localhost/inversionesjireh/images/_jpg2GPNFYWP_.jpg', '2013-06-30 22:58:50', '2013-06-30 22:58:50', '', 6),
(64, 'R008', 'Reloj Diesel ', 2000.00, 2200.00, 1, 0, '<p>Diesel Dz1131 Correa de Piel Negra Resistente al Agua hasta 50 mts</p>', 146, 10, 'http://localhost/inversionesjireh/images/_jpg1XZG2J7X_.jpg', '2013-06-30 23:01:02', '2013-06-30 23:01:02', '', 6),
(65, 'R009', 'Reloj Edifice ', 2600.00, 2800.00, 1, 0, '<p>Reloj Edifice Casio de Acero</p>', 9, 10, 'http://localhost/inversionesjireh/images/_jpgXA8LULE7_.jpg', '2013-06-30 23:01:49', '2013-06-30 23:01:49', '', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `mws_shipping_carrier` (
  `s_shippingCarrierId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `s_shippingCarrierName` varchar(300) NOT NULL,
  `s_shippingCarrierPrice` decimal(10,2) NOT NULL,
  `s_shippingCarrierStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`s_shippingCarrierId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `mws_shipping_carrier`
--

INSERT INTO `mws_shipping_carrier` (`s_shippingCarrierId`, `s_shippingCarrierName`, `s_shippingCarrierPrice`, `s_shippingCarrierStatus`) VALUES
(24, 'DOMESA', 0.00, 1),
(23, 'MRW', 45.00, 1),
(29, 'ZOOM', 0.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_taxes`
--

CREATE TABLE IF NOT EXISTS `mws_taxes` (
  `t_taxId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `t_taxInt` int(10) NOT NULL,
  `t_taxRate` decimal(10,2) NOT NULL,
  `t_taxCountry` varchar(200) NOT NULL,
  `t_taxRegDate` datetime NOT NULL,
  `t_taxUpdateDate` datetime NOT NULL,
  `t_taxStatus` int(1) NOT NULL,
  PRIMARY KEY (`t_taxId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `mws_taxes`
--

INSERT INTO `mws_taxes` (`t_taxId`, `t_taxInt`, `t_taxRate`, `t_taxCountry`, `t_taxRegDate`, `t_taxUpdateDate`, `t_taxStatus`) VALUES
(22, 12, 0.12, 'Venezuela', '2012-03-07 14:24:32', '2013-06-30 17:20:18', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_users`
--

CREATE TABLE IF NOT EXISTS `mws_users` (
  `u_userId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_userName` varchar(20) NOT NULL,
  `u_userLastName` varchar(20) NOT NULL,
  `u_userIdNumber` int(14) NOT NULL,
  `u_userMail` tinytext NOT NULL,
  `u_userUserName` tinytext NOT NULL,
  `u_userPassWord` tinytext NOT NULL,
  `u_userRegDate` datetime NOT NULL,
  `u_userLastVisit` datetime NOT NULL,
  `u_userActivated` varchar(2) NOT NULL,
  `u_userStatus` varchar(2) NOT NULL,
  `u_userLevelAccess` int(11) NOT NULL,
  `u_userPolicy` int(1) NOT NULL,
  PRIMARY KEY (`u_userId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mws_users`
--

INSERT INTO `mws_users` (`u_userId`, `u_userName`, `u_userLastName`, `u_userIdNumber`, `u_userMail`, `u_userUserName`, `u_userPassWord`, `u_userRegDate`, `u_userLastVisit`, `u_userActivated`, `u_userStatus`, `u_userLevelAccess`, `u_userPolicy`) VALUES
(1, 'Jhon', 'Urdaneta', 2147483647, 'jhon@hotmail.com', 'admin', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '1', 1, 0),
(2, 'Anderson', 'Buyones', 23474802, 'and@hotmail.com', '', 'c7376834330380fbd1c33e89f980e898', '2013-06-30 18:48:25', '0000-00-00 00:00:00', '1', '', 4, 1),
(3, 'ANTHONY', 'SARCOS', 2147483647, 'a_sarcos1@hotmail.com', '', '25d55ad283aa400af464c76d713c07ad', '2013-06-30 18:57:24', '0000-00-00 00:00:00', '1', '', 4, 1),
(4, 'ANA', 'PEREZ', 25416789, 'ana@hotmail.com', '', '25d55ad283aa400af464c76d713c07ad', '2013-07-01 08:04:02', '0000-00-00 00:00:00', '1', '', 4, 1),
(5, 'Flor', 'Duran', 9746896, 'flor@hotmail.com', '', '73ebc5fe22ca0b9c068c5d8bcba5561d', '2013-07-01 14:57:16', '0000-00-00 00:00:00', '1', '', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_user_level_access`
--

CREATE TABLE IF NOT EXISTS `mws_user_level_access` (
  `l_levelId` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `l_levelAccess` varchar(200) COLLATE latin1_general_ci NOT NULL,
  KEY `utid` (`l_levelId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `mws_user_level_access`
--

INSERT INTO `mws_user_level_access` (`l_levelId`, `l_levelAccess`) VALUES
(1, 'Master  '),
(2, 'Super administrador'),
(3, 'Administrador'),
(4, 'Registrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mws_user_order_info`
--

CREATE TABLE IF NOT EXISTS `mws_user_order_info` (
  `o_userOrdersId` int(11) NOT NULL AUTO_INCREMENT,
  `o_userId` int(11) NOT NULL,
  `o_userCompany` varchar(150) NOT NULL,
  `o_userAddress1` varchar(200) NOT NULL,
  `o_userAddress2` varchar(200) NOT NULL,
  `o_userState` varchar(200) NOT NULL,
  `o_userCity` varchar(150) NOT NULL,
  `o_userZip` varchar(20) NOT NULL,
  `o_userCountry` varchar(150) NOT NULL,
  `o_userPhone1` varchar(20) NOT NULL,
  `o_userPhone2` varchar(20) NOT NULL,
  `o_userFax` mediumtext NOT NULL,
  PRIMARY KEY (`o_userOrdersId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `mws_user_order_info`
--

INSERT INTO `mws_user_order_info` (`o_userOrdersId`, `o_userId`, `o_userCompany`, `o_userAddress1`, `o_userAddress2`, `o_userState`, `o_userCity`, `o_userZip`, `o_userCountry`, `o_userPhone1`, `o_userPhone2`, `o_userFax`) VALUES
(1, 2, 'AJSYSTEM', 'san francisco', 'sdgv', 'sdgv', 'sdvs', '4004', 'Venezuela', 'sdv', '', 'svs'),
(2, 3, '', 'SAN FCO', 'IIHIU', 'LKNLN', 'ONONO', '4004', 'ASADS', '654654564654', '', ''),
(3, 4, 'INVERSIONES JIREH', 'SAN FRANCISCO', 'SOLER', 'ZULIA', 'MARACAIBO', '4004', 'VENEZUELA', '04246936852', '02614789576', ''),
(4, 5, '', 'Haticos', 'San Francisco', 'Zulia', 'Maracaibo', '4004', 'Venezueka', '7661439', '', ''),
(5, 6, '', 'San Francisco', '', 'Zulia', 'Maracaibo', '4004', 'Venezuela', '04246164434', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
