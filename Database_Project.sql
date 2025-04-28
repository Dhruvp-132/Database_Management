-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2024 at 11:19 PM
-- Server version: 5.7.44-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpatel41_Dhruv_Patel_Ass3`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `CountriesWithAverageHieght`
-- (See below for the actual view)
--
CREATE TABLE `CountriesWithAverageHieght` (
`Country` varchar(30)
,`HappinessScore` float(4,4)
,`Density` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `CountriesWithHighestHappiness`
-- (See below for the actual view)
--
CREATE TABLE `CountriesWithHighestHappiness` (
`Country` varchar(30)
,`HappinessScore` float(4,4)
,`Density` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

CREATE TABLE `COUNTRY` (
  `CountryCode` char(2) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `LanguageCode` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`CountryCode`, `Country`, `LanguageCode`) VALUES
('ae', 'United Arab Emirates', 'ar'),
('af', 'Afghanistan', 'ps'),
('ag', 'Antigua and Barbuda', 'ag'),
('ai', 'Anguilla', 'ai'),
('al', 'Albania', 'sq'),
('am', 'Armenia', 'hy'),
('ao', 'Angola', 'ao'),
('ar', 'Argentina', 'es'),
('as', 'American Samoa', 'as'),
('at', 'Austria', 'de'),
('au', 'Australia', 'en'),
('az', 'Azerbaijan', 'az'),
('ba', 'Bosnia and Herzegovina', 'sr'),
('bb', 'Barbados', 'bb'),
('be', 'Belgium', 'fr'),
('bf', 'Burkina Faso', 'bf'),
('bg', 'Bulgaria', 'bg'),
('bj', 'Benin', 'bj'),
('bm', 'Bermuda', 'bm'),
('bn', 'Brunei', 'ms'),
('bo', 'Bolivia', 'es'),
('br', 'Brazil', 'pt'),
('bs', 'Bahamas', 'bs'),
('bt', 'Bhutan', 'bt'),
('by', 'Belarus', 'be'),
('bz', 'Belize', 'en'),
('ch', 'Switzerland', 'rm'),
('cl', 'Chile', 'es'),
('cn', 'China', 'ii'),
('co', 'Colombia', 'es'),
('cr', 'Costa Rica', 'es'),
('cz', 'Czech Republic', 'cs'),
('dk', 'Denmark', 'da'),
('do', 'Dominican Republic', 'es'),
('dz', 'Algeria', 'ar'),
('ec', 'Ecuador', 'es'),
('ee', 'Estonia', 'et'),
('eg', 'Egypt', 'ar'),
('es', 'Spain', 'es'),
('et', 'Ethiopia', 'am'),
('fi', 'Finland', 'sv'),
('fk', 'Falkland Islands', 'fk'),
('fo', 'Faroe Islands', 'fo'),
('fr', 'France', 'oc'),
('gb', 'United Kingdom', 'cy'),
('ge', 'Georgia', 'ka'),
('gl', 'Greenland', 'kl'),
('gr', 'Greece', 'el'),
('gt', 'Guatemala', 'es'),
('hk', 'Hong Kong', 'zh'),
('hn', 'Honduras', 'es'),
('hr', 'Croatia', 'hr'),
('hu', 'Hungary', 'hu'),
('id', 'Indonesia', 'id'),
('ie', 'Ireland', 'ga'),
('il', 'Israel', 'he'),
('in', 'India', 'te'),
('iq', 'Iraq', 'ar'),
('ir', 'Iran', 'fa'),
('is', 'Iceland', 'is'),
('it', 'Italy', 'it'),
('jm', 'Jamaica', 'en'),
('jo', 'Jordan', 'ar'),
('jp', 'Japan', 'ja'),
('ke', 'Kenya', 'sw'),
('kg', 'Kyrgyzstan', 'ky'),
('kh', 'Cambodia', 'km'),
('kn', 'Saint Kitts and Nevis', 'kn'),
('kr', 'South Korea', 'ko'),
('kw', 'Kuwait', 'ar'),
('kz', 'Kazakhstan', 'kk'),
('la', 'Laos', 'lo'),
('lb', 'Lebanon', 'ar'),
('lc', 'Saint Lucia', 'lc'),
('li', 'Liechtenstein', 'de'),
('lk', 'Sri Lanka', 'si'),
('lt', 'Lithuania', 'lt'),
('lu', 'Luxembourg', 'lb'),
('lv', 'Latvia', 'lv'),
('ly', 'Libya', 'ar'),
('ma', 'Morocco', 'ar'),
('mc', 'Monaco', 'fr'),
('me', 'Montenegro', 'sr'),
('mf', 'Saint Martin', 'mf'),
('mk', 'Macedonia', 'mk'),
('ml', 'Mali', 'ml'),
('mn', 'Mongolia', 'mn'),
('mo', 'Macau', 'zh'),
('mt', 'Malta', 'mt'),
('mv', 'Maldives', 'dv'),
('mx', 'Mexico', 'es'),
('my', 'Malaysia', 'ms'),
('ng', 'Nigeria', 'yo'),
('ni', 'Nicaragua', 'es'),
('nl', 'Netherlands', 'fy'),
('no', 'Norway', 'sm'),
('np', 'Nepal', 'ne'),
('nz', 'New Zealand', 'mi'),
('om', 'Oman', 'ar'),
('pa', 'Panama', 'es'),
('pe', 'Peru', 'es'),
('ph', 'Philippines', 'en'),
('pk', 'Pakistan', 'ur'),
('pl', 'Poland', 'pl'),
('pm', 'Saint Pierre and Miquelon', 'pm'),
('pr', 'Puerto Rico', 'es'),
('pt', 'Portugal', 'pt'),
('py', 'Paraguay', 'es'),
('qa', 'Qatar', 'ar'),
('ro', 'Romania', 'ro'),
('rs', 'Serbia', 'sr'),
('ru', 'Russia', 'sa'),
('rw', 'Rwanda', 'rw'),
('sa', 'Saudi Arabia', 'ar'),
('sb', 'Solomon Islands', 'sb'),
('sc', 'Seychelles', 'sc'),
('sd', 'Sudan', 'sd'),
('se', 'Sweden', 'sv'),
('sg', 'Singapore', 'en'),
('sh', 'Saint Helena', 'sh'),
('si', 'Slovenia', 'sl'),
('sk', 'Slovakia', 'sk'),
('sl', 'Sierra Leone', 'sl'),
('sm', 'San Marino', 'sm'),
('sn', 'Senegal', 'wo'),
('so', 'Somalia', 'so'),
('sr', 'Suriname', 'sr'),
('ss', 'South Sudan', 'ss'),
('st', 'Sí£o Tomí and Prí_ncipe', 'st'),
('sv', 'El Salvador', 'es'),
('sz', 'Swaziland', 'sz'),
('tc', 'Turks and Caicos Islands', 'tc'),
('tg', 'Togo', 'tg'),
('th', 'Thailand', 'th'),
('tj', 'Tajikistan', 'tg'),
('tk', 'Tokelau', 'tk'),
('tm', 'Turkmenistan', 'tk'),
('tn', 'Tunisia', 'ar'),
('to', 'Tonga', 'to'),
('tr', 'Turkey', 'tr'),
('tt', 'Trinidad and Tobago', 'en'),
('tv', 'Tuvalu', 'tv'),
('tw', 'Taiwan', 'zh'),
('tz', 'Tanzania', 'tz'),
('ua', 'Ukraine', 'uk'),
('ug', 'Uganda', 'ug'),
('us', 'United States', 'en'),
('uy', 'Uruguay', 'es'),
('uz', 'Uzbekistan', 'uz'),
('vc', 'Saint Vincent and the Grenadin', 'vc'),
('ve', 'Venezuela', 'es'),
('vi', 'Virgin Islands', 'vg'),
('vn', 'Vietnam', 'vi'),
('vu', 'Vanuatu', 'vu'),
('wf', 'Wallis and Futuna', 'wf'),
('ws', 'Samoa', 'ws'),
('ye', 'Yemen', 'ar'),
('za', 'South Africa', 'tn'),
('zm', 'Zambia', 'zm'),
('zw', 'Zimbabwe', 'en');

-- --------------------------------------------------------

--
-- Stand-in structure for view `HappiestCountryDetails`
-- (See below for the actual view)
--
CREATE TABLE `HappiestCountryDetails` (
`Country` varchar(30)
,`HappinessScore` float(4,4)
,`MaleHeightCm` decimal(5,2)
,`FemaleHeightCm` decimal(5,2)
,`Density` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `HAPPINESS`
--

CREATE TABLE `HAPPINESS` (
  `HappinessID` int(8) NOT NULL,
  `Rank` int(4) NOT NULL,
  `HappinessScore` float(4,4) NOT NULL,
  `GDPPerCapita` float(4,4) NOT NULL,
  `SocialSupport` float(5,5) NOT NULL,
  `LifeExpectancy` double(5,5) NOT NULL,
  `LifeChoices` float(3,3) NOT NULL,
  `Generosity` float(4,4) NOT NULL,
  `Corruption` float(5,5) NOT NULL,
  `CountryCode` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HAPPINESS`
--

INSERT INTO `HAPPINESS` (`HappinessID`, `Rank`, `HappinessScore`, `GDPPerCapita`, `SocialSupport`, `LifeExpectancy`, `LifeChoices`, `Generosity`, `Corruption`, `CountryCode`) VALUES
(1, 1, 7.8210, 1.8920, 1.25800, 0.77500, 0.736, 0.1090, 0.53400, 'fi'),
(2, 107, 4.9410, 1.2890, 0.68200, 0.55400, 0.328, 0.1470, 0.04600, 'iq'),
(3, 57, 5.9670, 1.5920, 1.10200, 0.66200, 0.555, 0.0810, 0.08500, 'ar'),
(4, 58, 5.9480, 1.7030, 0.98000, 0.77400, 0.249, 0.0150, 0.10800, 'gr'),
(5, 59, 5.9350, 1.8510, 0.88600, 0.84100, 0.414, 0.1110, 0.17600, 'kr'),
(6, 6, 7.4040, 2.2090, 1.15500, 0.79000, 0.700, 0.1200, 0.38800, 'lu'),
(7, 60, 5.9040, 1.2680, 0.91200, 0.51400, 0.678, 0.1070, 0.14200, 'ph'),
(8, 61, 5.8910, 1.5350, 1.09600, 0.69700, 0.617, 0.3210, 0.02600, 'th'),
(9, 62, 5.8570, 1.4170, 1.00800, 0.59700, 0.561, 0.1020, 0.02800, 'md'),
(10, 63, 5.8500, 1.2960, 1.04500, 0.64600, 0.567, 0.0800, 0.05300, 'jm'),
(11, 64, 5.8280, 1.0690, 1.10900, 0.63800, 0.693, 0.2080, 0.02500, 'kg'),
(12, 65, 5.8210, 1.5620, 1.15700, 0.62900, 0.342, 0.0400, 0.28200, 'by'),
(13, 108, 4.9250, 0.0000, 0.96800, 0.57800, 0.283, 0.2250, 0.08200, 've'),
(14, 66, 5.7810, 1.4520, 0.92900, 0.72000, 0.545, 0.0870, 0.07700, 'co'),
(15, 67, 5.7680, 1.4680, 1.06800, 0.66500, 0.448, 0.2440, 0.00600, 'ba'),
(16, 68, 5.7610, 1.3930, 1.19700, 0.46700, 0.398, 0.2470, 0.05900, 'mn'),
(17, 69, 5.7370, 1.5380, 1.00300, 0.57700, 0.606, 0.0840, 0.17900, 'do'),
(18, 7, 7.3840, 1.9200, 1.20400, 0.80300, 0.724, 0.2180, 0.51200, 'se'),
(19, 70, 5.7110, 1.6890, 0.93800, 0.62000, 0.654, 0.2130, 0.12600, 'my'),
(20, 71, 5.6000, 1.2560, 0.88000, 0.55500, 0.627, 0.1120, 0.06400, 'bo'),
(21, 72, 5.5850, 1.5080, 0.95800, 0.70500, 0.656, 0.0990, 0.14200, 'cn'),
(22, 73, 5.5780, 1.4090, 1.13000, 0.62400, 0.629, 0.1710, 0.05900, 'py'),
(23, 74, 5.5590, 1.3970, 0.86500, 0.73500, 0.545, 0.0900, 0.03700, 'pe'),
(24, 109, 4.8910, 0.8480, 0.56600, 0.27500, 0.334, 0.2140, 0.11600, 'gn'),
(25, 75, 5.5470, 1.5730, 1.02300, 0.65900, 0.460, 0.1350, 0.07700, 'me'),
(26, 76, 5.5330, 1.3520, 0.87900, 0.70800, 0.565, 0.0800, 0.08300, 'ec'),
(27, 77, 5.4850, 1.2520, 0.93200, 0.61100, 0.707, 0.1430, 0.10500, 'vn'),
(28, 78, 5.4740, 1.4840, 1.31900, 0.51600, 0.649, 0.3140, 0.03200, 'tm'),
(29, 79, 5.4670, 1.8150, 0.88800, 0.81900, 0.523, 0.1300, 0.21300, 'cy'),
(30, 8, 7.3650, 1.9970, 1.23900, 0.78600, 0.728, 0.2170, 0.47400, 'no'),
(31, 80, 5.4590, 1.6850, 1.09500, 0.58600, 0.401, 0.1170, 0.08000, 'ru'),
(32, 81, 5.4250, 1.9570, 0.95400, 0.94200, 0.400, 0.1470, 0.38300, 'hk'),
(33, 82, 5.3990, 1.4340, 0.82000, 0.66800, 0.558, 0.0540, 0.21000, 'am'),
(34, 83, 5.3770, 0.9660, 1.00500, 0.51800, 0.572, 0.1180, 0.30400, 'tj'),
(35, 11, 7.1630, 1.9310, 1.16500, 0.77400, 0.623, 0.1930, 0.32900, 'at'),
(36, 84, 5.3770, 0.9840, 0.78400, 0.49900, 0.519, 0.2370, 0.13000, 'np'),
(37, 85, 5.3710, 1.6250, 1.16300, 0.64000, 0.563, 0.1230, 0.02100, 'bg'),
(38, 86, 5.3300, 1.4760, 0.94300, 0.60600, 0.477, 0.1060, 0.17900, 'ly'),
(39, 87, 5.2400, 1.3820, 0.88300, 0.53900, 0.620, 0.4680, 0.04700, 'id'),
(40, 88, 5.2350, 1.0940, 0.44200, 0.32200, 0.451, 0.1490, 0.12400, 'ci'),
(41, 89, 5.1990, 1.5050, 0.86300, 0.63700, 0.488, 0.2150, 0.03100, 'mk'),
(42, 9, 7.3640, 1.8260, 1.22100, 0.81800, 0.568, 0.1550, 0.14300, 'il'),
(43, 90, 5.1990, 1.4390, 0.64600, 0.71900, 0.511, 0.1380, 0.02800, 'al'),
(44, 91, 5.1940, 1.4250, 1.08800, 0.36100, 0.442, 0.0890, 0.04600, 'za'),
(45, 92, 5.1730, 1.4580, 1.09300, 0.56000, 0.601, 0.0230, 0.34100, 'az'),
(46, 110, 4.8880, 1.4100, 0.74100, 0.64200, 0.281, 0.2410, 0.14600, 'ir'),
(47, 93, 5.1640, 0.7850, 0.62100, 0.36900, 0.367, 0.3880, 0.10300, 'gm'),
(48, 94, 5.1550, 1.0600, 0.61400, 0.58100, 0.622, 0.1250, 0.18700, 'bd'),
(49, 95, 5.1400, 1.2390, 0.65400, 0.47900, 0.679, 0.1970, 0.18400, 'la'),
(50, 96, 5.1220, 1.3630, 0.97000, 0.64300, 0.146, 0.1060, 0.15000, 'dz'),
(51, 97, 5.1220, 0.6360, 0.67000, 0.30900, 0.405, 0.1780, 0.08000, 'lr'),
(52, 98, 5.0840, 1.4110, 1.08100, 0.58300, 0.473, 0.1880, 0.01700, 'ua'),
(53, 99, 5.0750, 0.9500, 0.40500, 0.35500, 0.431, 0.1300, 0.14600, 'cg'),
(54, 111, 4.8720, 1.1120, 0.59500, 0.40900, 0.500, 0.2300, 0.05600, 'gh'),
(55, 112, 4.7440, 1.7070, 0.86500, 0.70200, 0.209, 0.0870, 0.11500, 'tr'),
(56, 113, 4.6700, 0.7790, 0.56500, 0.32000, 0.382, 0.1860, 0.12600, 'bf'),
(57, 114, 4.6400, 1.0190, 0.73200, 0.50500, 0.740, 0.1660, 0.06800, 'kh'),
(58, 115, 4.6230, 0.9320, 0.06400, 0.33500, 0.479, 0.1270, 0.23000, 'bj'),
(59, 10, 7.2000, 1.8520, 1.23500, 0.75200, 0.680, 0.2450, 0.48300, 'nz'),
(60, 116, 4.6090, 0.8990, 0.47600, 0.42400, 0.185, 0.1950, 0.12500, 'km'),
(61, 117, 4.6030, 0.7770, 0.87500, 0.41800, 0.402, 0.2220, 0.06600, 'ug'),
(62, 118, 4.5520, 1.0790, 0.73200, 0.30000, 0.444, 0.1750, 0.03800, 'ng'),
(63, 119, 4.5430, 1.0320, 0.60500, 0.40100, 0.440, 0.3220, 0.08200, 'ke'),
(64, 12, 7.1620, 1.9000, 1.20300, 0.77200, 0.676, 0.2580, 0.34100, 'au'),
(65, 120, 4.5160, 1.3500, 0.59600, 0.65600, 0.316, 0.0290, 0.02900, 'tn'),
(66, 121, 4.5160, 1.0490, 0.41300, 0.37400, 0.448, 0.1810, 0.11200, 'pk'),
(67, 122, 4.4830, 1.1480, 0.95700, 0.52100, 0.336, 0.0730, 0.07900, 'ps'),
(68, 123, 4.4790, 0.7920, 0.48300, 0.31100, 0.350, 0.1280, 0.04200, 'ml'),
(69, 124, 4.4590, 1.2920, 0.87700, 0.35400, 0.384, 0.0670, 0.07100, 'na'),
(70, 100, 5.0600, 1.2080, 0.26800, 0.56500, 0.492, 0.0200, 0.10200, 'ma'),
(71, 125, 4.3960, 1.2740, 0.78600, 0.19700, 0.259, 0.0380, 0.15400, 'sz'),
(72, 126, 4.3940, 1.0380, 0.82900, 0.49100, 0.513, 0.4520, 0.19400, 'mm'),
(73, 127, 4.3620, 1.4150, 0.93400, 0.66000, 0.529, 0.1500, 0.07900, 'lk'),
(74, 128, 4.3390, 0.6700, 0.64500, 0.37800, 0.202, 0.1430, 0.15400, 'mg'),
(75, 129, 4.2880, 1.3880, 0.73200, 0.54800, 0.469, 0.0410, 0.25400, 'eg'),
(76, 13, 7.0410, 2.1290, 1.16600, 0.77900, 0.627, 0.1900, 0.40800, 'ie'),
(77, 130, 4.2510, 0.6620, 0.50600, 0.22500, 0.180, 0.1820, 0.07700, 'td'),
(78, 131, 4.2410, 0.7880, 0.80900, 0.45700, 0.472, 0.2050, 0.13600, 'et'),
(79, 132, 4.1970, 0.6910, 1.04300, 0.38400, 0.330, 0.0900, 0.09800, 'ye'),
(80, 133, 4.1530, 1.1000, 0.86500, 0.45000, 0.304, 0.0880, 0.13800, 'mr'),
(81, 101, 5.0480, 0.5780, 0.66000, 0.19100, 0.593, 0.1850, 0.20000, 'mz'),
(82, 134, 4.1520, 1.3240, 0.72400, 0.67500, 0.476, 0.0580, 0.20000, 'jo'),
(83, 135, 4.1120, 0.7710, 0.32200, 0.36000, 0.292, 0.1740, 0.13200, 'tg'),
(84, 136, 3.7770, 1.1670, 0.37600, 0.47100, 0.647, 0.1980, 0.12300, 'in'),
(85, 137, 3.7600, 0.9300, 0.57700, 0.30600, 0.525, 0.2030, 0.08300, 'zm'),
(86, 138, 3.7500, 0.6480, 0.27900, 0.38800, 0.477, 0.1400, 0.15700, 'mw'),
(87, 139, 3.7020, 0.8480, 0.59700, 0.42500, 0.578, 0.2480, 0.27000, 'tz'),
(88, 14, 7.0340, 1.9240, 1.08800, 0.77600, 0.585, 0.1630, 0.35800, 'de'),
(89, 140, 3.5740, 0.6860, 0.41600, 0.27300, 0.387, 0.2020, 0.05500, 'sl'),
(90, 141, 3.5120, 0.8390, 0.84800, 0.00000, 0.419, 0.0760, 0.01800, 'ls'),
(91, 142, 3.4710, 1.5030, 0.81500, 0.28000, 0.571, 0.0120, 0.10200, 'bw'),
(92, 102, 5.0480, 0.9680, 0.67200, 0.31700, 0.397, 0.1520, 0.07400, 'cm'),
(93, 143, 3.2680, 0.7850, 0.13300, 0.46200, 0.621, 0.1870, 0.54400, 'rw'),
(94, 144, 2.9950, 0.9470, 0.69000, 0.27000, 0.329, 0.1060, 0.10500, 'zw'),
(95, 145, 2.9550, 1.3920, 0.49800, 0.63100, 0.103, 0.0820, 0.03400, 'lb'),
(96, 146, 2.4040, 0.7580, 0.00000, 0.28900, 0.000, 0.0890, 0.00500, 'af'),
(97, 15, 7.0250, 1.8860, 1.18800, 0.78300, 0.659, 0.2170, 0.36800, 'ca'),
(98, 16, 6.9770, 1.9820, 1.18200, 0.62800, 0.574, 0.2200, 0.17700, 'us'),
(99, 17, 6.9430, 1.8670, 1.14300, 0.75000, 0.597, 0.2890, 0.32900, 'gb'),
(100, 18, 6.9200, 1.8150, 1.26000, 0.71500, 0.660, 0.1580, 0.04800, 'cz'),
(101, 19, 6.8050, 1.9070, 1.10600, 0.76400, 0.492, 0.0490, 0.20400, 'be'),
(102, 2, 7.6360, 1.9530, 1.24300, 0.77700, 0.719, 0.1880, 0.53200, 'dk'),
(103, 103, 5.0460, 0.9330, 0.53000, 0.44700, 0.494, 0.1430, 0.08100, 'sn'),
(104, 20, 6.6870, 1.8630, 1.21900, 0.80800, 0.567, 0.0700, 0.26600, 'fr'),
(105, 21, 6.6470, 1.8540, 1.02900, 0.62500, 0.693, 0.1990, 0.15500, 'bh'),
(106, 22, 6.6300, 1.8100, 1.24900, 0.76900, 0.685, 0.1180, 0.11500, 'si'),
(107, 23, 6.5820, 1.5840, 1.05400, 0.74400, 0.661, 0.0890, 0.10200, 'cr'),
(108, 24, 6.5760, 1.9980, 0.98000, 0.63300, 0.702, 0.2040, 0.25000, 'ae'),
(109, 25, 6.5230, 1.8700, 1.09200, 0.57700, 0.651, 0.0780, 0.18000, 'sa'),
(110, 26, 6.5120, 1.8970, 1.09500, 0.73300, 0.542, 0.0750, 0.16800, 'tw'),
(111, 27, 6.4800, 2.1490, 1.12700, 0.85100, 0.672, 0.1630, 0.58700, 'sg'),
(112, 28, 6.4770, 1.7190, 1.00600, 0.65500, 0.605, 0.0390, 0.00600, 'ro'),
(113, 29, 6.4760, 1.8080, 1.21100, 0.80800, 0.505, 0.1010, 0.14900, 'es'),
(114, 104, 5.0030, 0.5700, 0.56000, 0.32600, 0.571, 0.1650, 0.14500, 'ng'),
(115, 3, 7.5570, 1.9360, 1.32000, 0.80300, 0.718, 0.2700, 0.19100, 'is'),
(116, 30, 6.4740, 1.6150, 1.18000, 0.67200, 0.665, 0.1030, 0.26500, 'uy'),
(117, 31, 6.4670, 1.8340, 1.05200, 0.80100, 0.412, 0.0850, 0.05900, 'it'),
(118, 32, 6.4550, 1.3620, 0.94900, 0.56900, 0.599, 0.3090, 0.03500, 'xk'),
(119, 33, 6.4470, 1.8380, 1.16900, 0.78900, 0.679, 0.1740, 0.16600, 'mt'),
(120, 34, 6.4460, 1.8040, 1.20400, 0.65900, 0.496, 0.0530, 0.07700, 'lt'),
(121, 35, 6.3910, 1.7360, 1.23200, 0.70700, 0.479, 0.1180, 0.02500, 'sk'),
(122, 36, 6.3410, 1.7930, 1.23200, 0.72800, 0.689, 0.1230, 0.33300, 'ee'),
(123, 37, 6.3090, 1.7150, 1.10700, 0.70900, 0.592, 0.0490, 0.05100, 'pa'),
(124, 38, 6.2930, 1.4620, 1.04400, 0.61500, 0.546, 0.1310, 0.13400, 'br'),
(125, 105, 4.9730, 1.4670, 0.61200, 0.59500, 0.508, 0.0000, 0.20800, 'ge'),
(126, 39, 6.2620, 1.2740, 0.83100, 0.52200, 0.662, 0.1120, 0.11500, 'gt'),
(127, 4, 7.5120, 2.0260, 1.22600, 0.82200, 0.677, 0.1470, 0.46100, 'ch'),
(128, 40, 6.2340, 1.6680, 1.22000, 0.61100, 0.584, 0.1340, 0.15700, 'kz'),
(129, 41, 6.2210, 1.8150, 0.90900, 0.81900, 0.448, 0.1230, 0.06200, 'cy'),
(130, 42, 6.1800, 1.7320, 1.22100, 0.63700, 0.502, 0.0750, 0.09000, 'lv'),
(131, 43, 6.1780, 1.5500, 1.08600, 0.65800, 0.546, 0.2190, 0.08800, 'rs'),
(132, 44, 6.1720, 1.6510, 1.08000, 0.74800, 0.460, 0.1240, 0.06900, 'cl'),
(133, 45, 6.1650, 1.1050, 1.02900, 0.61700, 0.617, 0.1680, 0.21200, 'ni'),
(134, 46, 6.1280, 1.5520, 0.88600, 0.62300, 0.621, 0.0920, 0.11500, 'mx'),
(135, 47, 6.1250, 1.7050, 1.18300, 0.70900, 0.535, 0.1090, 0.00000, 'hr'),
(136, 106, 4.9580, 1.4590, 0.73800, 0.39600, 0.343, 0.0320, 0.09900, 'ga'),
(137, 48, 6.1230, 1.7580, 1.17400, 0.71200, 0.523, 0.1240, 0.14000, 'pl'),
(138, 49, 6.1200, 1.2650, 0.76800, 0.60700, 0.666, 0.0890, 0.21200, 'sv'),
(139, 5, 7.4150, 1.9450, 1.20600, 0.78700, 0.651, 0.2710, 0.41900, 'nl'),
(140, 50, 6.1060, 1.9040, 0.98300, 0.74700, 0.617, 0.0870, 0.14700, 'kw'),
(141, 51, 6.0860, 1.7480, 1.23300, 0.66800, 0.485, 0.0780, 0.06400, 'hu'),
(142, 52, 6.0710, 1.5910, 1.11600, 0.56800, 0.589, 0.1310, 0.10700, 'mu'),
(143, 53, 6.0630, 1.2190, 1.09200, 0.60000, 0.716, 0.2830, 0.24000, 'uz'),
(144, 54, 6.0390, 1.8350, 1.08900, 0.86600, 0.537, 0.0070, 0.21800, 'jp'),
(145, 55, 6.0220, 1.1110, 0.88500, 0.55500, 0.582, 0.2020, 0.07600, 'hn'),
(146, 56, 6.0160, 1.7600, 1.07800, 0.77700, 0.655, 0.0160, 0.03900, 'pt');

-- --------------------------------------------------------

--
-- Stand-in structure for view `HappyCountryDetails`
-- (See below for the actual view)
--
CREATE TABLE `HappyCountryDetails` (
`Country` varchar(30)
,`HappinessScore` float(4,4)
,`MaleHeightCm` decimal(5,2)
,`FemaleHeightCm` decimal(5,2)
,`Density` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `HEIGHT`
--

CREATE TABLE `HEIGHT` (
  `HeightID` int(3) NOT NULL,
  `CountryCode` char(3) NOT NULL,
  `Rank` int(3) NOT NULL,
  `MaleHeightCm` decimal(5,2) NOT NULL,
  `FemaleHeightCm` decimal(5,2) NOT NULL,
  `MaleHeightFt` decimal(3,2) NOT NULL,
  `FemaleHeightFt` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HEIGHT`
--

INSERT INTO `HEIGHT` (`HeightID`, `CountryCode`, `Rank`, `MaleHeightCm`, `FemaleHeightCm`, `MaleHeightFt`, `FemaleHeightFt`) VALUES
(1, ' cd', 156, 168.60, 156.11, 5.53, 5.13),
(2, ' cu', 99, 173.56, 162.23, 5.69, 5.25),
(3, ' dj', 126, 170.77, 162.35, 5.60, 5.24),
(4, ' er', 133, 170.60, 167.55, 5.60, 5.17),
(5, ' fj', 93, 173.98, 165.53, 5.71, 5.39),
(6, ' gd', 32, 178.70, 158.10, 5.86, 5.45),
(7, ' gm', 161, 168.36, 165.72, 5.52, 5.31),
(8, ' gq', 164, 168.18, 161.22, 5.52, 5.19),
(9, ' gt', 194, 164.36, 159.85, 5.39, 4.95),
(10, ' gw', 165, 168.17, 164.67, 5.52, 5.21),
(11, ' gy', 110, 172.15, 166.93, 5.65, 5.24),
(12, ' hk', 75, 174.83, 161.37, 5.74, 5.27),
(13, ' ht', 109, 172.23, 163.46, 5.65, 5.27),
(14, ' ki', 143, 170.09, 158.29, 5.58, 5.28),
(15, ' km', 170, 167.72, 152.38, 5.50, 5.14),
(16, ' kp', 77, 174.69, 165.66, 5.73, 5.29),
(17, ' kw', 73, 174.96, 166.93, 5.74, 5.25),
(18, ' lc', 51, 176.43, 163.40, 5.79, 5.43),
(19, ' lr', 186, 165.48, 158.12, 5.43, 5.14),
(20, ' ly', 53, 176.39, 158.40, 5.79, 5.33),
(21, ' mg', 190, 165.16, 166.11, 5.42, 5.02),
(22, ' mr', 185, 165.54, 155.15, 5.43, 5.25),
(23, ' mv', 169, 167.87, 155.58, 5.51, 5.06),
(24, ' ne', 140, 170.26, 167.47, 5.59, 5.24),
(25, ' om', 117, 171.70, 162.06, 5.63, 5.20),
(26, ' pf', 38, 178.32, 162.41, 5.85, 5.46),
(27, ' pg', 196, 163.10, 154.90, 5.35, 5.15),
(28, ' pr', 22, 179.48, 164.58, 5.89, 5.35),
(29, ' qa', 103, 173.27, 161.33, 5.68, 5.27),
(30, ' sd', 112, 172.07, 155.08, 5.65, 5.26),
(31, ' sr', 80, 174.51, 154.75, 5.73, 5.32),
(32, ' sy', 119, 171.64, 160.41, 5.63, 5.23),
(33, ' sz', 150, 169.41, 164.73, 5.56, 5.21),
(34, ' tl', 199, 160.13, 159.65, 5.25, 5.01),
(35, ' tw', 101, 173.53, 162.12, 5.69, 5.27),
(36, 'ad', 27, 178.84, 159.42, 5.87, 5.43),
(37, 'ae', 89, 174.08, 163.46, 5.71, 5.27),
(38, 'af', 157, 168.50, 157.96, 5.53, 5.12),
(39, 'ag', 28, 178.84, 156.54, 5.87, 5.44),
(40, 'al', 90, 174.07, 167.31, 5.71, 5.32),
(41, 'am', 98, 173.67, 160.36, 5.70, 5.24),
(42, 'ao', 158, 168.46, 166.80, 5.53, 5.19),
(43, 'ar', 76, 174.76, 160.13, 5.73, 5.29),
(44, 'as', 44, 177.09, 160.55, 5.81, 5.50),
(45, 'at', 35, 178.52, 167.96, 5.86, 5.48),
(46, 'au', 29, 178.77, 169.47, 5.87, 5.40),
(47, 'az', 92, 174.00, 159.82, 5.71, 5.29),
(48, 'ba', 4, 182.47, 166.89, 5.99, 5.49),
(49, 'bb', 45, 177.03, 161.21, 5.81, 5.44),
(50, 'bd', 191, 165.08, 156.30, 5.42, 5.00),
(51, 'be', 24, 179.09, 155.25, 5.88, 5.36),
(52, 'bf', 114, 171.89, 160.88, 5.64, 5.29),
(53, 'bg', 88, 174.17, 156.39, 5.71, 5.40),
(54, 'bh', 107, 172.76, 158.05, 5.67, 5.19),
(55, 'bi', 172, 167.34, 157.58, 5.49, 5.09),
(56, 'bj', 159, 168.44, 168.66, 5.53, 5.20),
(57, 'bm', 21, 179.72, 158.92, 5.90, 5.45),
(58, 'bn', 181, 166.31, 157.15, 5.46, 5.08),
(59, 'bo', 166, 168.10, 164.28, 5.52, 5.10),
(60, 'br', 63, 175.73, 166.48, 5.77, 5.33),
(61, 'bs', 83, 174.40, 164.49, 5.72, 5.36),
(62, 'bt', 175, 167.05, 166.52, 5.48, 5.09),
(63, 'bw', 104, 173.16, 160.05, 5.68, 5.32),
(64, 'by', 33, 178.69, 161.73, 5.86, 5.48),
(65, 'bz', 134, 170.52, 163.24, 5.59, 5.19),
(66, 'ca', 30, 178.75, 166.18, 5.86, 5.40),
(67, 'cf', 152, 169.01, 158.86, 5.54, 5.24),
(68, 'cg', 123, 171.23, 165.81, 5.62, 5.21),
(69, 'ch', 31, 178.73, 161.40, 5.86, 5.39),
(70, 'ci', 163, 168.23, 165.99, 5.52, 5.21),
(71, 'ck', 37, 178.32, 150.91, 5.85, 5.49),
(72, 'cl', 106, 172.88, 158.75, 5.67, 5.23),
(73, 'cm', 111, 172.13, 158.72, 5.65, 5.26),
(74, 'cn', 64, 175.66, 159.57, 5.76, 5.36),
(75, 'co', 115, 171.85, 160.58, 5.64, 5.18),
(77, 'cr', 91, 174.04, 155.18, 5.71, 5.26),
(78, 'cy', 108, 172.75, 160.62, 5.67, 5.27),
(79, 'cz', 7, 181.19, 162.55, 5.94, 5.51),
(80, 'de', 19, 180.28, 168.91, 5.91, 5.45),
(81, 'dk', 6, 181.89, 155.18, 5.97, 5.56),
(82, 'dm', 20, 180.15, 154.36, 5.91, 5.48),
(83, 'do', 78, 174.65, 161.18, 5.73, 5.29),
(84, 'dz', 71, 175.04, 158.75, 5.74, 5.33),
(85, 'ec', 174, 167.32, 164.50, 5.49, 5.09),
(86, 'ee', 3, 182.79, 162.22, 6.00, 5.53),
(87, 'eg', 79, 174.57, 161.81, 5.73, 5.28),
(88, 'es', 57, 176.11, 158.65, 5.78, 5.32),
(89, 'et', 154, 168.84, 164.32, 5.54, 5.16),
(90, 'fi', 16, 180.57, 158.50, 5.92, 5.46),
(91, 'fm', 148, 169.57, 159.46, 5.56, 5.24),
(92, 'fr', 34, 178.60, 161.74, 5.86, 5.40),
(93, 'ga', 135, 170.48, 159.43, 5.59, 5.25),
(94, 'gb', 39, 178.21, 161.04, 5.85, 5.38),
(95, 'ge', 61, 175.98, 160.10, 5.77, 5.36),
(96, 'gh', 138, 170.30, 160.20, 5.59, 5.21),
(97, 'gl', 94, 173.84, 153.10, 5.70, 5.30),
(98, 'gn', 127, 170.70, 168.81, 5.60, 5.21),
(99, 'gr', 23, 179.26, 163.67, 5.88, 5.44),
(100, 'hn', 147, 169.59, 156.72, 5.56, 5.09),
(101, 'hr', 12, 180.76, 156.54, 5.93, 5.47),
(102, 'hu', 50, 176.59, 162.56, 5.79, 5.33),
(103, 'id', 182, 166.26, 167.63, 5.45, 5.06),
(104, 'ie', 25, 179.04, 165.07, 5.87, 5.40),
(105, 'il', 60, 175.98, 153.06, 5.77, 5.32),
(106, 'in', 179, 166.50, 156.14, 5.46, 5.09),
(107, 'iq', 96, 173.79, 157.06, 5.70, 5.21),
(108, 'ir', 65, 175.62, 154.28, 5.76, 5.29),
(109, 'is', 5, 182.10, 161.99, 5.97, 5.54),
(110, 'it', 81, 174.42, 162.95, 5.72, 5.31),
(111, 'jm', 46, 176.97, 154.76, 5.81, 5.39),
(112, 'jo', 74, 174.84, 160.06, 5.74, 5.23),
(113, 'jp', 113, 172.06, 158.94, 5.65, 5.20),
(114, 'ke', 136, 170.46, 157.90, 5.59, 5.23),
(115, 'kg', 118, 171.66, 159.66, 5.63, 5.26),
(116, 'kh', 187, 165.35, 162.96, 5.42, 5.08),
(117, 'kn', 97, 173.71, 159.89, 5.70, 5.34),
(118, 'kr', 67, 175.52, 169.96, 5.76, 5.36),
(119, 'kz', 68, 175.50, 161.18, 5.76, 5.31),
(120, 'la', 198, 162.78, 155.42, 5.34, 5.02),
(121, 'lb', 26, 178.96, 154.71, 5.87, 5.37),
(122, 'lk', 167, 168.07, 160.26, 5.51, 5.11),
(123, 'ls', 168, 167.92, 157.82, 5.51, 5.14),
(124, 'lt', 14, 180.72, 152.39, 5.93, 5.50),
(125, 'lu', 36, 178.46, 170.36, 5.86, 5.42),
(126, 'lv', 8, 181.17, 164.66, 5.94, 5.54),
(127, 'ma', 55, 176.35, 155.62, 5.79, 5.29),
(128, 'md', 66, 175.59, 159.81, 5.76, 5.35),
(129, 'me', 2, 183.30, 158.14, 6.01, 5.58),
(130, 'mh', 188, 165.26, 167.03, 5.42, 5.08),
(131, 'mk', 52, 176.43, 161.22, 5.79, 5.28),
(132, 'ml', 72, 175.02, 160.88, 5.74, 5.31),
(133, 'mm', 178, 166.70, 166.45, 5.47, 5.08),
(134, 'mn', 129, 170.67, 158.44, 5.60, 5.25),
(135, 'mt', 84, 174.38, 154.77, 5.72, 5.35),
(136, 'mu', 105, 173.01, 159.52, 5.68, 5.21),
(137, 'mw', 184, 165.68, 161.28, 5.44, 5.12),
(138, 'mx', 139, 170.29, 158.19, 5.59, 5.18),
(139, 'my', 151, 169.20, 156.89, 5.55, 5.15),
(140, 'mz', 195, 164.30, 159.76, 5.39, 5.10),
(141, 'na', 145, 169.75, 154.39, 5.57, 5.26),
(142, 'ng', 121, 171.55, 154.14, 5.63, 5.19),
(143, 'ni', 144, 169.91, 165.78, 5.57, 5.11),
(144, 'nl', 1, 183.78, 161.23, 6.03, 5.59),
(145, 'no', 17, 180.48, 163.06, 5.92, 5.46),
(146, 'np', 193, 164.36, 160.72, 5.39, 5.00),
(147, 'nr', 149, 169.57, 158.78, 5.56, 5.18),
(148, 'nu', 43, 177.19, 164.73, 5.81, 5.48),
(149, 'nz', 41, 177.72, 164.52, 5.83, 5.40),
(150, 'pa', 141, 170.19, 156.72, 5.58, 5.19),
(151, 'pe', 177, 166.75, 162.78, 5.47, 5.07),
(152, 'ph', 189, 165.23, 165.52, 5.42, 5.06),
(153, 'pk', 173, 167.33, 165.30, 5.49, 5.08),
(154, 'pl', 15, 180.69, 163.82, 5.93, 5.44),
(155, 'ps', 70, 175.05, 159.81, 5.74, 5.29),
(156, 'pt', 86, 174.37, 158.84, 5.72, 5.29),
(157, 'pw', 132, 170.62, 163.92, 5.60, 5.23),
(158, 'py', 95, 173.81, 168.29, 5.70, 5.24),
(159, 'ro', 40, 177.82, 162.47, 5.83, 5.40),
(160, 'rs', 13, 180.74, 157.34, 5.93, 5.52),
(161, 'ru', 49, 176.65, 161.30, 5.80, 5.40),
(162, 'rw', 183, 166.02, 167.12, 5.45, 5.14),
(163, 'sa', 131, 170.67, 167.20, 5.60, 5.21),
(164, 'sb', 197, 163.07, 156.79, 5.35, 5.14),
(165, 'sc', 62, 175.90, 159.86, 5.77, 5.33),
(166, 'se', 18, 180.46, 158.58, 5.92, 5.47),
(167, 'sg', 102, 173.50, 163.23, 5.69, 5.29),
(168, 'si', 10, 180.98, 162.03, 5.94, 5.49),
(169, 'sk', 9, 181.02, 155.88, 5.94, 5.48),
(170, 'sl', 180, 166.43, 160.36, 5.46, 5.16),
(171, 'sn', 56, 176.18, 162.26, 5.78, 5.38),
(172, 'so', 124, 171.22, 166.67, 5.62, 5.24),
(173, 'st', 137, 170.37, 164.33, 5.59, 5.24),
(174, 'sv', 130, 170.67, 159.38, 5.60, 5.13),
(175, 'td', 116, 171.84, 160.70, 5.64, 5.32),
(176, 'tg', 142, 170.14, 158.12, 5.58, 5.22),
(177, 'th', 120, 171.61, 156.89, 5.63, 5.23),
(178, 'tj', 160, 168.43, 159.42, 5.53, 5.19),
(179, 'tk', 58, 176.06, 152.71, 5.78, 5.45),
(180, 'tm', 85, 174.37, 159.13, 5.72, 5.34),
(181, 'tn', 48, 176.85, 166.08, 5.80, 5.30),
(182, 'to', 69, 175.11, 166.08, 5.75, 5.45),
(183, 'tr', 54, 176.36, 163.38, 5.79, 5.31),
(184, 'tt', 59, 176.03, 161.69, 5.78, 5.36),
(185, 'tv', 122, 171.30, 161.80, 5.62, 5.37),
(186, 'tz', 176, 166.98, 162.83, 5.48, 5.15),
(187, 'ua', 11, 180.98, 163.57, 5.94, 5.47),
(188, 'ug', 155, 168.74, 158.53, 5.54, 5.20),
(189, 'us', 47, 176.94, 166.62, 5.81, 5.36),
(190, 'uy', 87, 174.32, 160.53, 5.72, 5.30),
(191, 'uz', 125, 170.94, 163.94, 5.61, 5.26),
(192, 'vc', 42, 177.49, 163.31, 5.82, 5.42),
(193, 've', 100, 173.53, 161.56, 5.69, 5.25),
(194, 'vn', 153, 168.89, 160.29, 5.54, 5.20),
(195, 'vu', 162, 168.29, 160.48, 5.52, 5.27),
(196, 'ws', 82, 174.42, 160.04, 5.72, 5.37),
(197, 'ye', 192, 164.42, 158.43, 5.39, 5.08),
(198, 'za', 146, 169.63, 154.76, 5.57, 5.20),
(199, 'zm', 171, 167.62, 157.32, 5.50, 5.16),
(200, 'zw', 128, 170.69, 159.85, 5.60, 5.24);

-- --------------------------------------------------------

--
-- Stand-in structure for view `HighDensityHighHappiness`
-- (See below for the actual view)
--
CREATE TABLE `HighDensityHighHappiness` (
`Country` varchar(30)
,`Density` int(10)
,`HappinessScore` float(4,4)
,`AverageLifeExpectancy` double(9,9)
);

-- --------------------------------------------------------

--
-- Table structure for table `LANGUAGE`
--

CREATE TABLE `LANGUAGE` (
  `LanguageCode` char(2) NOT NULL,
  `Language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LANGUAGE`
--

INSERT INTO `LANGUAGE` (`LanguageCode`, `Language`) VALUES
('aa', 'Afar'),
('ab', 'Abkhazian'),
('ae', 'Avestan'),
('af', 'Afrikaans'),
('ak', 'Akan'),
('am', 'Amharic'),
('an', 'Aragonese'),
('ar', 'Arabic'),
('as', 'Assamese'),
('av', 'Avaric'),
('ay', 'Aymara'),
('az', 'Azerbaijani'),
('ba', 'Bashkir'),
('be', 'Belarusian'),
('bg', 'Bulgarian'),
('bh', 'Bihari languages'),
('bi', 'Bislama'),
('bm', 'Bambara'),
('bn', 'Bengali'),
('bo', 'Tibetan'),
('br', 'Breton'),
('bs', 'Bosnian'),
('ca', 'Catalan'),
('ce', 'Chechen'),
('ch', 'Chamorro'),
('co', 'Corsican'),
('cr', 'Cree'),
('cs', 'Czech'),
('cu', 'Church Slavic'),
('cv', 'Chuvash'),
('cy', 'Welsh'),
('da', 'Danish'),
('de', 'German'),
('dv', 'Divehi'),
('dz', 'Dzongkha'),
('ee', 'Ewe'),
('el', 'Greek'),
('en', 'English'),
('eo', 'Esperanto'),
('es', 'Spanish'),
('et', 'Estonian'),
('eu', 'Basque'),
('fa', 'Persian'),
('ff', 'Fulah'),
('fi', 'Finnish'),
('fj', 'Fijian'),
('fo', 'Faroese'),
('fr', 'French'),
('fy', 'Western Frisian'),
('ga', 'Irish'),
('gd', 'Gaelic'),
('gl', 'Galician'),
('gn', 'Guarani'),
('gu', 'Gujarati'),
('gv', 'Manx'),
('ha', 'Hausa'),
('he', 'Hebrew'),
('hi', 'Hindi'),
('ho', 'Hiri Motu'),
('hr', 'Croatian'),
('ht', 'Haitian'),
('hu', 'Hungarian'),
('hy', 'Armenian'),
('hz', 'Herero'),
('ia', 'Interlingua '),
('id', 'Indonesian'),
('ie', 'Interlingue'),
('ig', 'Igbo'),
('ii', 'Sichuan Yi'),
('ik', 'Inupiaq'),
('io', 'Ido'),
('is', 'Icelandic'),
('it', 'Italian'),
('iu', 'Inuktitut'),
('ja', 'Japanese'),
('jv', 'Javanese'),
('ka', 'Georgian'),
('kg', 'Kongo'),
('ki', 'Kikuyu'),
('kj', 'Kuanyama'),
('kk', 'Kazakh'),
('kl', 'Kalaallisut'),
('km', 'Central Khmer'),
('kn', 'Kannada'),
('ko', 'Korean'),
('kr', 'Kanuri'),
('ks', 'Kashmiri'),
('ku', 'Kurdish'),
('kv', 'Komi'),
('kw', 'Cornish'),
('ky', 'Kirghiz'),
('la', 'Latin'),
('lb', 'Luxembourgish'),
('lg', 'Ganda'),
('li', 'Limburgan'),
('ln', 'Lingala'),
('lo', 'Lao'),
('lt', 'Lithuanian'),
('lu', 'Luba-Katanga'),
('lv', 'Latvian'),
('mg', 'Malagasy'),
('mh', 'Marshallese'),
('mi', 'Maori'),
('mk', 'Macedonian'),
('ml', 'Malayalam'),
('mn', 'Mongolian'),
('mr', 'Marathi'),
('ms', 'Malay'),
('mt', 'Maltese'),
('my', 'Burmese'),
('na', 'Nauru'),
('nb', 'Norwegian'),
('nd', 'Ndebele'),
('ne', 'Nepali'),
('ng', 'Ndonga'),
('nl', 'Dutch'),
('nn', 'Norwegian Nynorsk'),
('no', 'Norwegian'),
('nr', 'Ndebele'),
('nv', 'Navajo;'),
('ny', 'Chichewa'),
('oc', 'Occitan'),
('oj', 'Ojibwa'),
('om', 'Oromo'),
('or', 'Oriya'),
('os', 'Ossetian'),
('pa', 'Panjabi'),
('pi', 'Pali'),
('pl', 'Polish'),
('ps', 'Pushto'),
('pt', 'Portuguese'),
('qu', 'Quechua'),
('rm', 'Romansh'),
('rn', 'Rundi'),
('ro', 'Romanian'),
('ru', 'Russian'),
('rw', 'Kinyarwanda'),
('sa', 'Sanskrit'),
('sc', 'Sardinian'),
('sd', 'Sindhi'),
('se', 'Northern Sami'),
('sg', 'Sango'),
('si', 'Sinhala'),
('sk', 'Slovak'),
('sl', 'Slovenian'),
('sm', 'Samoan'),
('sn', 'Shona'),
('so', 'Somali'),
('sq', 'Albanian'),
('sr', 'Serbian'),
('ss', 'Swati'),
('st', 'Sotho'),
('su', 'Sundanese'),
('sv', 'Swedish'),
('sw', 'Swahili'),
('ta', 'Tamil'),
('te', 'Telugu'),
('tg', 'Tajik'),
('th', 'Thai'),
('ti', 'Tigrinya'),
('tk', 'Turkmen'),
('tl', 'Tagalog'),
('tn', 'Tswana'),
('to', 'Tonga'),
('tr', 'Turkish'),
('ts', 'Tsonga'),
('tt', 'Tatar'),
('tw', 'Twi'),
('ty', 'Tahitian'),
('ug', 'Uighur'),
('uk', 'Ukrainian'),
('ur', 'Urdu'),
('uz', 'Uzbek'),
('ve', 'Venda'),
('vi', 'Vietnamese'),
('vo', 'VolapA'),
('wa', 'Walloon'),
('wo', 'Wolof'),
('xh', 'Xhosa'),
('yi', 'Yiddish'),
('yo', 'Yoruba'),
('za', 'Zhuang'),
('zh', 'Chinese'),
('zu', 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

CREATE TABLE `PERSON` (
  `PersonID` int(4) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Postcode` int(10) NOT NULL,
  `CountryCode` char(2) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `LanguageCode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`PersonID`, `FirstName`, `LastName`, `Street`, `City`, `State`, `Postcode`, `CountryCode`, `Phone`, `Email`, `LanguageCode`) VALUES
(1, 'James', ' Clark', 'George Street', 'Spresiano', 'NT', 1028, 'au', '0405 088 044', 'pellentesque@ehg.org', 'en'),
(2, 'Robert', 'Ramirez', 'William Street', 'Kortrijk', 'NT', 1120, 'au', '0467 234 573', 'velit.eas@Maecene.com', 'en'),
(3, 'John', 'Lewis', 'Church Street', 'Bicester', 'NT', 1639, 'au', '043 265 800', 'aliquam.adipus@rerit.co.uk', 'en'),
(4, 'Michael', 'Robinson', 'High Street.', 'Lublin', 'NT', 1765, 'au', '0415 496 955', 'sodles@tellusid.co.uk', 'en'),
(5, 'William', 'Walker', 'King Street. ', 'Pottsville', 'NSW', 2433, 'au', '0423 777 555', 'mattis@setnetus.net', 'de'),
(6, 'David', 'Young', 'Short Street. ', 'Oranienburg', 'NSW', 2956, 'au', '0415 956 858', 'aliquam.iais@utin.com', 'en'),
(60, 'Richard', 'Allen', 'Elizabeth Dr', 'Red Deer', 'VIC', 3564, 'au', '0466 679 025', 'nascetur@non.co.uk', 'en'),
(61, 'Joseph', 'King', 'John Dr', 'Mühlheim am Main', 'VIC', 3936, 'au', '0415 482 199', 'nibh.vulputate@maurissapien.ca', 'en'),
(62, 'Thomas', 'Mason', 'Koala Street', 'Doetinchem', 'QLD', 4053, 'au', '0415 573 236', 'is.Integer@euultricessit.org', 'ar'),
(63, 'Christopher', 'Mitchell', 'Emu Street ', 'Goulburn', 'QLD', 4406, 'au', '0415 488 077', 'non@Nam.org', 'fa'),
(64, 'Matthew', 'Hill', 'Dingo Street ', 'Alto Hospicio', 'SA', 5971, 'au', '0415 131 096', 'dapibus.id@facilisiSed.ca', 'ar'),
(65, 'Anthony', 'Flores', 'Wallaby Road ', 'Curaco de Vélez', 'WA', 6699, 'au', '0415 329 570', 'orci.luctus.et@etmagnis.org', 'ar'),
(66, 'Mark', 'Green', 'Echidna Street ', 'Stendal', 'TAS', 7512, 'au', '0415 133 547', 'tristique@fringillaia.org', 'ar'),
(67, 'Donald', 'Lopez', 'Wombat Road ', 'Arauco', 'TAS', 7873, 'au', '0415 442 456', 'erat.in@amolestie.org', 'ar'),
(68, 'Steven', ' Gonzalez', 'Kangaroo Street', 'Huntley', 'NSW', 2303, 'au', '0415 696 122', 'non.lobortis.quis@id.org', 'ar'),
(69, 'Paul', 'Wilson', 'Brushtail Crescent', 'Wanzele', 'NSW', 2425, 'au', '0415 727 415', 'pesque@erateget.org', 'bn'),
(70, 'Andrew', 'Anderson', 'Jumbuck Street ', 'Cantalupo in Sabina', 'NSW', 2220, 'au', '0415 336 747', 'velit.egess@enornare.com', 'bn'),
(71, 'Joshua', 'Thomas', 'Platypus Street', 'Traiguén', 'NSW', 2017, 'au', '0415 117 691', 'aliquam.adcus@rutr.uk', 'bn'),
(72, 'Kenneth', 'Taylor', 'William Street', 'Halifax', 'NSW', 2134, 'au', '0415 291 024', 'sodales@tki.co.uk', 'bn'),
(73, 'Kevin', 'Moore', 'Church Street', 'Fumal', 'NSW', 2222, 'au', '0415 639 716', 'mattis@senetnetus.net', 'bn'),
(74, 'Brian', 'Jackson', 'High Street.', 'Liévin', 'NSW', 2302, 'au', '0415 361 193', 'iaculis@utmggn.com', 'bn'),
(109, 'Brian', 'Jackson', 'High Street.', 'Liévin', 'NSW', 2302, 'au', '0415 361 193', 'iaculis@utmggn.com', 'bn'),
(110, 'George', 'Martin', 'King Street. ', 'Spoleto', 'NSW', 2572, 'au', '0415 218 972', 'nascetur.ris.mus@non.co.uk', 'bn'),
(111, 'Edward', ' Lee', 'Short Street. ', 'Giugliano in Campania', 'NSW', 2222, 'au', '0499 697 935', 'nibh.vte@maurissapien.ca', 'fr'),
(112, 'Ronald', 'Perez', 'George Street', 'Beaumont', 'NSW', 2233, 'au', '0415 035 497', 'mauris.Inger@euultricessit.org', 'fr'),
(113, 'Timothy', 'Thompson', 'William Street', 'Portsmouth', 'VIC', 3079, 'au', '0489394 622', 'augue.eu.tellus@yahoo.com', 'fr'),
(114, 'Jason', 'White', 'Church Street', 'Heidenheim', 'VIC', 3850, 'au', '0415 609 075', 'non@Nam.org', 'es'),
(130, 'Barbara', 'Mitchell', 'Mill Lane', 'Hualpén', 'NSW', 2230, 'au', '0415 349 532', 'veliestas@hotmail.com', 'es'),
(131, 'Susan', 'Carter', 'Alexander Road', 'GŽrouville', 'NSW', 2052, 'au', '0415 729 127', 'aliquam.adcus@rutr.uk', 'es'),
(139, 'Kimberly', 'Collins', 'Victoria Street', 'Zeles', 'CO', 6606, 'bm', '0415 281 118', 'dapibus.id@hotmail.com', 'ii'),
(140, 'Emily', 'Reyes', 'Albert Road', 'Okcester', 'CT', 6904, 'bt', '0415 184 363', 'orci.luc@etmagnis.org', 'ii'),
(141, 'Donna', 'Stewart', 'Queensway', 'Onavine', 'DC ', 7341, 'au', '0415 742 477', 'trjkkque@fcinia.org', 'ii'),
(142, 'Michelle', 'Moore', 'New Street', 'Troving', 'CA', 7946, 'ba', '0415 993 093', 'erat.in@gmail.com', 'ii'),
(143, 'Lisa', 'Turner', 'King Street', 'Klesas', 'ALD', 4556, 'au', '0423 783 240', 'nibh.vte@maurissapien.ca', 'ii'),
(144, 'Betty', 'Diaz', 'The Green', 'Clitding', 'APG', 4905, 'au', '0415 581 322', 'maurger@euricessit.org', 'es'),
(145, 'Margaret', 'Parker', 'Springfield Road', 'Glaeson', 'ARB', 5341, 'au', '0415 163 940', 'augue.tellus@yahoo.com', 'es'),
(152, 'Jessica', 'Roberts', 'York Road', 'Alness', 'NSW', 2220, 'au', '0445 257 351', 'sodales@co.uk', 'ga'),
(153, 'Sarah', 'Gomez', 'St. John’s Road', 'Forchtenstein', 'sa', 5666, 'au', '0415 723 190', 'mattis@hotmail.com', 'ga'),
(155, 'Karen', 'Phillips', 'Main Road', 'Srofmouth', 'AE', 3990, 'fr', '0411 234567', 'iaculis@utmolestiein.com', 'ga'),
(159, 'Nancy', 'Evans', 'Broadway', 'Iyulphia', 'QLD', 4221, 'au', '0415 330 183', 'nascr.ridi@non.co.uk', 'ar'),
(163, 'Dorothy', 'Jackson', 'Queen Street', 'Vamore', 'CT', 7984, 'au', '0415 853 575', 'quis@id.org', 'en'),
(164, 'Carol', 'Martin', 'West Street', 'Khadale', 'QLD', 4201, 'au', '0415 778 660', 'erat.in@gmail.com', 'de'),
(166, 'Amanda', 'Masters', 'North Street', 'Sumond', 'QLD', 4230, 'au', '0415 175 638', 'quis@id.org', 'de');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON_LANGUAGE`
--

CREATE TABLE `PERSON_LANGUAGE` (
  `Person_LanguageID` int(8) NOT NULL,
  `PersonID` int(8) NOT NULL,
  `LanguageCode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PERSON_LANGUAGE`
--

INSERT INTO `PERSON_LANGUAGE` (`Person_LanguageID`, `PersonID`, `LanguageCode`) VALUES
(1, 1, 'en'),
(2, 109, 'bn'),
(3, 110, 'bn'),
(4, 111, 'fr'),
(5, 112, 'fr'),
(6, 113, 'fr'),
(7, 114, 'es'),
(8, 130, 'es'),
(9, 131, 'es'),
(10, 139, 'ii'),
(11, 140, 'ii'),
(12, 141, 'ii'),
(13, 142, 'ii'),
(14, 143, 'ii'),
(15, 144, 'ii'),
(16, 145, 'ii'),
(17, 146, 'es'),
(18, 147, 'es'),
(19, 152, 'ga'),
(20, 153, 'ga'),
(21, 155, 'ga'),
(22, 159, 'ar'),
(23, 163, 'en'),
(24, 164, 'de'),
(25, 166, 'de'),
(26, 2, 'en'),
(27, 3, 'en'),
(28, 4, 'en'),
(29, 5, 'de'),
(30, 6, 'en'),
(31, 60, 'en'),
(32, 61, 'en'),
(33, 62, 'ar'),
(34, 63, 'fa'),
(35, 64, 'ar'),
(36, 65, 'ar'),
(37, 66, 'ar'),
(38, 67, 'ar'),
(39, 68, 'ar'),
(40, 69, 'bn'),
(41, 70, 'bn'),
(42, 71, 'bn'),
(43, 72, 'bn'),
(44, 73, 'bn'),
(45, 74, 'bn'),
(47, 1, 'ii');

-- --------------------------------------------------------

--
-- Table structure for table `POPULATION`
--

CREATE TABLE `POPULATION` (
  `PopulationID` int(12) NOT NULL,
  `Population` int(17) NOT NULL,
  `YearlyChange` float(5,4) NOT NULL,
  `NetChange` int(9) NOT NULL,
  `Density` int(10) NOT NULL,
  `LandArea` int(12) NOT NULL,
  `Migrants` bigint(8) NOT NULL,
  `FertilityRate` float(3,2) NOT NULL,
  `MedAge` int(6) NOT NULL,
  `UrbanPop` int(5) NOT NULL,
  `WorldShare` float NOT NULL,
  `CountryCode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POPULATION`
--

INSERT INTO `POPULATION` (`PopulationID`, `Population`, `YearlyChange`, `NetChange`, `Density`, `LandArea`, `Migrants`, `FertilityRate`, `MedAge`, `UrbanPop`, `WorldShare`, `CountryCode`) VALUES
(1, 38928346, 2.3300, 886592, 60, 652860, -62920, 4.60, 18, 25, 0.5, 'af'),
(2, 2877797, -0.1100, -3120, 105, 27400, -14000, 1.60, 36, 63, 0.04, 'al'),
(3, 43851044, 1.8500, 797990, 18, 2381740, -10000, 3.10, 29, 73, 0.56, 'dz'),
(4, 32866272, 3.2700, 1040977, 26, 1246700, 6413, 5.60, 17, 67, 0.42, ' ao'),
(5, 97929, 0.8400, 811, 223, 440, 0, 2.00, 34, 26, 0, 'ag'),
(6, 45195774, 0.9300, 415097, 17, 2736690, 4800, 2.30, 32, 93, 0.58, 'ar'),
(7, 2963243, 0.1900, 5512, 104, 28470, -4998, 1.80, 35, 63, 0.04, 'am'),
(8, 106766, 0.4300, 452, 593, 180, 201, 1.90, 41, 44, 0, 'aw'),
(9, 25499884, 1.1800, 296686, 3, 7682300, 158246, 1.80, 38, 86, 0.33, 'au'),
(10, 9006398, 0.5700, 51296, 109, 82409, 65000, 1.50, 43, 57, 0.12, 'at'),
(11, 10139177, 0.9100, 91459, 123, 82658, 1200, 2.10, 32, 56, 0.13, ' az'),
(12, 393244, 0.9700, 3762, 39, 10010, 1000, 1.80, 32, 86, 0.01, ' bs'),
(13, 1701575, 3.6800, 60403, 2239, 760, 47800, 2.00, 32, 89, 0.02, 'bh'),
(14, 164689383, 1.0100, 1643222, 1265, 130170, -369501, 2.10, 28, 39, 2.11, 'bd'),
(15, 287375, 0.1200, 350, 668, 430, -79, 1.60, 40, 31, 0, ' bb'),
(16, 9449323, -0.0300, -3088, 47, 202910, 8730, 1.70, 40, 79, 0.12, ' by'),
(17, 11589623, 0.4400, 50295, 383, 30280, 48000, 1.70, 42, 98, 0.15, 'be'),
(18, 397628, 1.8600, 7275, 17, 22810, 1200, 2.30, 25, 46, 0.01, ' bz'),
(19, 12123200, 2.7300, 322049, 108, 112760, -2000, 4.90, 19, 48, 0.16, 'bj'),
(20, 771608, 1.1200, 8516, 20, 38117, 320, 2.00, 28, 46, 0.01, ' bt'),
(21, 11673021, 1.3900, 159921, 11, 1083300, -9504, 2.80, 26, 69, 0.15, 'bo'),
(22, 3280819, -0.6100, -20181, 64, 51000, -21585, 1.30, 43, 52, 0.04, 'ba'),
(23, 2351627, 2.0800, 47930, 4, 566730, 3000, 2.90, 24, 73, 0.03, ' bw'),
(24, 212559417, 0.7200, 1509890, 25, 8358140, 21200, 1.70, 33, 88, 2.73, 'br'),
(25, 437479, 0.9700, 4194, 83, 5270, 0, 1.80, 32, 80, 0.01, ' bn'),
(26, 6948445, -0.7400, -51674, 64, 108560, -4800, 1.60, 45, 76, 0.09, 'bg'),
(27, 20903273, 2.8600, 581895, 76, 273600, -25000, 5.20, 18, 31, 0.27, 'bf'),
(28, 11890784, 3.1200, 360204, 463, 25680, 2001, 5.50, 17, 14, 0.15, ' bi'),
(29, 555987, 1.1000, 6052, 138, 4030, -1342, 2.30, 28, 68, 0.01, ' cv'),
(30, 16718965, 1.4100, 232423, 95, 176520, -30000, 2.50, 26, 24, 0.21, 'kh'),
(31, 26545863, 2.5900, 669483, 56, 472710, -4800, 4.60, 19, 56, 0.34, 'cm'),
(32, 37742154, 0.8900, 331107, 4, 9093510, 242032, 1.50, 41, 81, 0.48, 'ca'),
(33, 4829767, 1.7800, 84582, 8, 622980, -40000, 4.80, 18, 43, 0.06, ' cf'),
(34, 16425864, 3.0000, 478988, 13, 1259200, 2000, 5.80, 17, 23, 0.21, ' td'),
(35, 173863, 0.9300, 1604, 915, 190, 1351, 1.50, 43, 30, 0, 'je'),
(36, 19116201, 0.8700, 164163, 26, 743532, 111708, 1.70, 35, 85, 0.25, 'cl'),
(37, 1439323776, 0.3900, 5540090, 153, 9388211, -348399, 1.70, 38, 61, 18.47, 'cn'),
(38, 50882891, 1.0800, 543448, 46, 1109500, 204796, 1.80, 31, 80, 0.65, 'co'),
(39, 869601, 2.2000, 18715, 467, 1861, -2000, 4.20, 20, 29, 0.01, ' km'),
(40, 5518087, 2.5600, 137579, 16, 341500, -4000, 4.50, 19, 70, 0.07, 'cg'),
(41, 5094118, 0.9200, 46557, 100, 51060, 4200, 1.80, 33, 80, 0.07, 'cr'),
(42, 26378274, 2.5700, 661730, 83, 318000, -8000, 4.70, 19, 51, 0.34, ' ci'),
(43, 4105267, -0.6100, -25037, 73, 55960, -8001, 1.40, 44, 58, 0.05, 'hr'),
(44, 11326616, -0.0600, -6867, 106, 106440, -14400, 1.60, 42, 78, 0.15, ' cu'),
(45, 164093, 0.4100, 669, 370, 444, 515, 1.80, 42, 89, 0, ' cw'),
(46, 1207359, 0.7300, 8784, 131, 9240, 5000, 1.30, 37, 67, 0.02, 'cy'),
(47, 10708981, 0.1800, 19772, 139, 77240, 22011, 1.60, 43, 74, 0.14, ' cz'),
(48, 5792202, 0.3500, 20326, 137, 42430, 15200, 1.80, 42, 88, 0.07, 'dk'),
(49, 988000, 1.4800, 14440, 43, 23180, 900, 2.80, 27, 79, 0.01, ' dj'),
(50, 10847910, 1.0100, 108952, 225, 48320, -30000, 2.40, 28, 85, 0.14, 'do'),
(51, 89561403, 3.1900, 2770836, 40, 2267050, 23861, 6.00, 17, 46, 1.15, ' cd'),
(52, 17643054, 1.5500, 269392, 71, 248360, 36400, 2.40, 28, 63, 0.23, 'ec'),
(53, 102334404, 1.9400, 1946331, 103, 995450, -38033, 3.30, 25, 43, 1.31, 'eg'),
(54, 6486205, 0.5100, 32652, 313, 20720, -40539, 2.10, 28, 73, 0.08, 'sv'),
(55, 1402985, 3.4700, 46999, 50, 28050, 16000, 4.60, 22, 73, 0.02, ' gq'),
(56, 3546421, 1.4100, 49304, 35, 101000, -39858, 4.10, 19, 63, 0.05, ' er'),
(57, 1326535, 0.0700, 887, 31, 42390, 3911, 1.60, 42, 68, 0.02, 'ee'),
(58, 1160164, 1.0500, 12034, 67, 17200, -8353, 3.00, 21, 30, 0.01, ' sz'),
(59, 114963588, 2.5700, 2884858, 115, 1000000, 30000, 4.30, 19, 21, 1.47, 'et'),
(60, 896445, 0.7300, 6492, 49, 18270, -6202, 2.80, 28, 59, 0.01, ' fj'),
(61, 5540720, 0.1500, 8564, 18, 303890, 14000, 1.50, 43, 86, 0.07, 'fi'),
(62, 65273511, 0.2200, 143783, 119, 547557, 36527, 1.90, 42, 82, 0.84, 'fr'),
(63, 298682, 2.7000, 7850, 4, 82200, 1200, 3.40, 25, 87, 0, ' gf'),
(64, 280908, 0.5800, 1621, 77, 3660, -1000, 2.00, 34, 64, 0, ' pf'),
(65, 2225734, 2.4500, 53155, 9, 257670, 3260, 4.00, 23, 87, 0.03, 'ga'),
(66, 2416668, 2.9400, 68962, 239, 10120, -3087, 5.30, 18, 59, 0.03, ' gm'),
(67, 3989167, -0.1900, -7598, 57, 69490, -10000, 2.10, 38, 58, 0.05, 'ge'),
(68, 83783942, 0.3200, 266897, 240, 348560, 543822, 1.60, 46, 76, 1.07, 'de'),
(69, 31072940, 2.1500, 655084, 137, 227540, -10000, 3.90, 22, 57, 0.4, 'gh'),
(70, 10423054, -0.4800, -50401, 81, 128900, -16000, 1.30, 46, 85, 0.13, 'gr'),
(71, 112523, 0.4600, 520, 331, 340, -200, 2.10, 32, 35, 0, ' gd'),
(72, 400124, 0.0200, 68, 237, 1690, -1440, 2.20, 44, 25, 0.01, ' gp'),
(73, 168775, 0.8900, 1481, 313, 540, -506, 2.30, 31, 95, 0, ' gu'),
(74, 17915568, 1.9000, 334096, 167, 107160, -9215, 2.90, 23, 52, 0.23, ' gt'),
(75, 13132795, 2.8300, 361549, 53, 245720, -4000, 4.70, 18, 39, 0.17, 'gn'),
(76, 1968001, 2.4500, 47079, 70, 28120, -1399, 4.50, 19, 45, 0.03, ' gw'),
(77, 786552, 0.4800, 3786, 4, 196850, -6000, 2.50, 27, 27, 0.01, ' gy'),
(78, 11402528, 1.2400, 139451, 414, 27560, -35000, 3.00, 24, 57, 0.15, ' ht'),
(79, 9904607, 1.6300, 158490, 89, 111890, -6800, 2.50, 24, 57, 0.13, 'hn'),
(80, 7496981, 0.8200, 60827, 7140, 1050, 29308, 1.30, 45, 46, 0.1, ' hk'),
(81, 9660351, -0.2500, -24328, 107, 90530, 6000, 1.50, 43, 72, 0.12, 'hu'),
(82, 341243, 0.6500, 2212, 3, 100250, 380, 1.80, 37, 94, 0, 'is'),
(83, 1380004385, 0.9900, 13586631, 464, 2973190, -532687, 2.20, 28, 35, 17.7, 'in'),
(84, 273523615, 1.0700, 2898047, 151, 1811570, -98955, 2.30, 30, 56, 3.51, 'id'),
(85, 83992949, 1.3000, 1079043, 52, 1628550, -55000, 2.20, 32, 76, 1.08, 'ir'),
(86, 40222493, 2.3200, 912710, 93, 434320, 7834, 3.70, 21, 73, 0.52, 'iq'),
(87, 4937786, 1.1300, 55291, 72, 68890, 23604, 1.80, 38, 63, 0.06, 'ie'),
(88, 8655535, 1.6000, 136158, 400, 21640, 10000, 3.00, 30, 93, 0.11, 'il'),
(89, 60461826, -0.1500, -88249, 206, 294140, 148943, 1.30, 47, 69, 0.78, 'it'),
(90, 2961167, 0.4400, 12888, 273, 10830, -11332, 2.00, 31, 55, 0.04, 'jm'),
(91, 126476461, -0.3000, -383840, 347, 364555, 71560, 1.40, 48, 92, 1.62, 'jp'),
(92, 10203134, 1.0000, 101440, 115, 88780, 10220, 2.80, 24, 91, 0.13, 'jo'),
(93, 18776707, 1.2100, 225280, 7, 2699700, -18000, 2.80, 31, 58, 0.24, 'kz'),
(94, 53771296, 2.2800, 1197323, 94, 569140, -10000, 3.50, 20, 28, 0.69, 'ke'),
(95, 119449, 1.5700, 1843, 147, 810, -800, 3.60, 23, 57, 0, ' ki'),
(96, 4270571, 1.5100, 63488, 240, 17820, 39520, 2.10, 37, 35, 0.05, ' kw'),
(97, 6524195, 1.6900, 108345, 34, 191800, -4000, 3.00, 26, 36, 0.08, 'kg'),
(98, 7275560, 1.4800, 106105, 32, 230800, -14704, 2.70, 24, 36, 0.09, 'la'),
(99, 1886198, -1.0800, -20545, 30, 62200, -14837, 1.70, 44, 69, 0.02, 'lv'),
(100, 6825445, -0.4400, -30268, 667, 10230, -30012, 2.10, 30, 78, 0.09, 'lb'),
(101, 2142249, 0.8000, 16981, 71, 30360, -10047, 3.20, 24, 31, 0.03, 'ls'),
(102, 5057681, 2.4400, 120307, 53, 96320, -5000, 4.40, 19, 53, 0.06, ' lr'),
(103, 6871292, 1.3800, 93840, 4, 1759540, -1999, 2.30, 29, 78, 0.09, ' ly'),
(104, 2722289, -1.3500, -37338, 43, 62674, -32780, 1.70, 45, 71, 0.03, 'lt'),
(105, 625978, 1.6600, 10249, 242, 2590, 9741, 1.50, 40, 88, 0.01, 'lu'),
(106, 649335, 1.3900, 8890, 21645, 30, 5000, 1.20, 39, 34, 0.01, ' mo'),
(107, 27691018, 2.6800, 721711, 48, 581795, -1500, 4.10, 20, 39, 0.36, ' mg'),
(108, 19129952, 2.6900, 501205, 203, 94280, -16053, 4.30, 18, 18, 0.25, 'mw'),
(109, 32365999, 1.3000, 416222, 99, 328550, 50000, 2.00, 30, 78, 0.42, 'my'),
(110, 540544, 1.8100, 9591, 1802, 300, 11370, 1.90, 30, 35, 0.01, ' mv'),
(111, 20250833, 3.0200, 592802, 17, 1220190, -40000, 5.90, 16, 44, 0.26, 'ml'),
(112, 441543, 0.2700, 1171, 1380, 320, 900, 1.50, 43, 93, 0.01, 'mt'),
(113, 375265, -0.0800, -289, 354, 1060, -960, 1.90, 47, 92, 0, ' mq'),
(114, 4649658, 2.7400, 123962, 5, 1030700, 5000, 4.60, 20, 57, 0.06, ' mr'),
(115, 1271768, 0.1700, 2100, 626, 2030, 0, 1.40, 37, 41, 0.02, 'mu'),
(116, 272815, 2.5000, 6665, 728, 375, 0, 3.70, 20, 46, 0, ' yt'),
(117, 128932753, 1.0600, 1357224, 66, 1943950, -60000, 2.10, 29, 84, 1.65, 'mx'),
(118, 548914, 1.0000, 5428, 784, 700, -2957, 2.90, 27, 68, 0.01, '#N/A'),
(119, 4033963, -0.2300, -9300, 123, 32850, -1387, 1.30, 38, 43, 0.05, 'md'),
(120, 3278290, 1.6500, 53123, 2, 1553560, -852, 2.90, 28, 67, 0.04, 'mn'),
(121, 628066, 0.0100, 79, 47, 13450, -480, 1.80, 39, 68, 0.01, 'me'),
(122, 36910560, 1.2000, 438791, 83, 446300, -51419, 2.40, 30, 64, 0.47, 'ma'),
(123, 31255435, 2.9300, 889399, 40, 786380, -5000, 4.90, 18, 38, 0.4, 'mz'),
(124, 54409800, 0.6700, 364380, 83, 653290, -163313, 2.20, 29, 31, 0.7, 'mm'),
(125, 2540905, 1.8600, 46375, 3, 823290, -4806, 3.40, 22, 55, 0.03, 'na'),
(126, 29136808, 1.8500, 528098, 203, 143350, 41710, 1.90, 25, 21, 0.37, 'np'),
(127, 17134872, 0.2200, 37742, 508, 33720, 16000, 1.70, 43, 92, 0.22, 'nl'),
(128, 285498, 0.9700, 2748, 16, 18280, 502, 2.00, 34, 72, 0, ' nc'),
(129, 4822233, 0.8200, 39170, 18, 263310, 14881, 1.90, 38, 87, 0.06, 'nz'),
(130, 6624554, 1.2100, 79052, 55, 120340, -21272, 2.40, 26, 57, 0.08, 'ni'),
(131, 24206644, 3.8400, 895929, 19, 1266700, 4000, 7.00, 15, 17, 0.31, ' ne'),
(132, 206139589, 2.5800, 5175990, 226, 910770, -60000, 5.40, 18, 52, 2.64, 'ng'),
(133, 25778816, 0.4400, 112655, 214, 120410, -5403, 1.90, 35, 63, 0.33, ' kp'),
(134, 2083374, 0.0000, -85, 83, 25220, -1000, 1.50, 39, 59, 0.03, 'mk'),
(135, 5421241, 0.7900, 42384, 15, 365268, 28000, 1.70, 40, 83, 0.07, 'no'),
(136, 5106626, 2.6500, 131640, 16, 309500, 87400, 2.90, 31, 87, 0.07, ' om'),
(137, 220892340, 2.0000, 4327022, 287, 770880, -233379, 3.60, 23, 35, 2.83, 'pk'),
(138, 4314767, 1.6100, 68328, 58, 74340, 11200, 2.50, 30, 68, 0.06, 'pa'),
(139, 8947024, 1.9500, 170915, 20, 452860, -800, 3.60, 22, 13, 0.11, ' pg'),
(140, 7132538, 1.2500, 87902, 18, 397300, -16556, 2.40, 26, 62, 0.09, 'py'),
(141, 32971854, 1.4200, 461401, 26, 1280000, 99069, 2.30, 31, 79, 0.42, 'pe'),
(142, 109581078, 1.3500, 1464463, 368, 298170, -67152, 2.60, 26, 47, 1.41, 'ph'),
(143, 37846611, -0.1100, -41157, 124, 306230, -29395, 1.40, 42, 60, 0.49, 'pl'),
(144, 10196709, -0.2900, -29478, 111, 91590, -6000, 1.30, 46, 66, 0.13, 'pt'),
(145, 2860853, -2.4700, -72555, 323, 8870, -97986, 1.20, 44, 66, 0.04, ' pr'),
(146, 2881053, 1.7300, 48986, 248, 11610, 40000, 1.90, 32, 96, 0.04, ' qa'),
(147, 895312, 0.7200, 6385, 358, 2500, -1256, 2.30, 36, 100, 0.01, ' re'),
(148, 19237691, -0.6600, -126866, 84, 230170, -73999, 1.60, 43, 55, 0.25, 'ro'),
(149, 145934462, 0.0400, 62206, 9, 16376870, 182456, 1.80, 40, 74, 1.87, 'ru'),
(150, 12952218, 2.5800, 325268, 525, 24670, -9000, 4.10, 20, 18, 0.17, 'rw'),
(151, 183627, 0.4600, 837, 301, 610, 0, 1.40, 34, 19, 0, ' lc'),
(152, 198414, 0.6700, 1317, 70, 2830, -2803, 3.90, 22, 18, 0, ' ws'),
(153, 219159, 1.9100, 4103, 228, 960, -1680, 4.40, 19, 74, 0, ' st'),
(154, 34813871, 1.5900, 545343, 16, 2149690, 134979, 2.30, 32, 84, 0.45, 'sa'),
(155, 16743927, 2.7500, 447563, 87, 192530, -20000, 4.70, 19, 49, 0.21, 'sn'),
(156, 8737371, -0.4000, -34864, 100, 87460, 4000, 1.50, 42, 56, 0.11, 'rs'),
(157, 98347, 0.6200, 608, 214, 460, -200, 2.50, 34, 56, 0, ' sc'),
(158, 7976983, 2.1000, 163768, 111, 72180, -4200, 4.30, 19, 43, 0.1, 'sl'),
(159, 5850342, 0.7900, 46005, 8358, 700, 27028, 1.20, 42, 55, 0.08, 'sg'),
(160, 5459642, 0.0500, 2629, 114, 48088, 1485, 1.50, 41, 54, 0.07, 'sk'),
(161, 2078938, 0.0100, 284, 103, 20140, 2000, 1.60, 45, 55, 0.03, 'si'),
(162, 686884, 2.5500, 17061, 25, 27990, -1600, 4.40, 20, 23, 0.01, ' sb'),
(163, 15893222, 2.9200, 450317, 25, 627340, -40000, 6.10, 17, 47, 0.2, ' so'),
(164, 59308690, 1.2800, 750420, 49, 1213090, 145405, 2.40, 28, 67, 0.76, 'za'),
(165, 51269185, 0.0900, 43877, 527, 97230, 11731, 1.10, 44, 82, 0.66, 'kr'),
(166, 11193725, 1.1900, 131612, 18, 610952, -174200, 4.70, 19, 25, 0.14, ' ss'),
(167, 46754778, 0.0400, 18002, 94, 498800, 40000, 1.30, 45, 80, 0.6, 'es'),
(168, 21413249, 0.4200, 89516, 341, 62710, -97986, 2.20, 34, 18, 0.27, 'lk'),
(169, 110940, 0.3200, 351, 284, 390, -200, 1.90, 33, 53, 0, ' vc'),
(170, 5101414, 2.4100, 119994, 847, 6020, -10563, 3.70, 21, 80, 0.07, ' ps'),
(171, 43849260, 2.4200, 1036022, 25, 1765048, -50000, 4.40, 20, 35, 0.56, ' sd'),
(172, 586632, 0.9000, 5260, 4, 156000, -1000, 2.40, 29, 65, 0.01, ' sr'),
(173, 10099265, 0.6300, 62886, 25, 410340, 40000, 1.90, 41, 88, 0.13, 'se'),
(174, 8654622, 0.7400, 63257, 219, 39516, 52000, 1.50, 43, 74, 0.11, 'ch'),
(175, 17500658, 2.5200, 430523, 95, 183630, -427391, 2.80, 26, 60, 0.22, ' sy'),
(176, 23816775, 0.1800, 42899, 673, 35410, 30001, 1.20, 42, 79, 0.31, ' tw'),
(177, 9537645, 2.3200, 216627, 68, 139960, -20000, 3.60, 22, 27, 0.12, 'tj'),
(178, 59734218, 2.9800, 1728755, 67, 885800, -40076, 4.90, 18, 37, 0.77, 'tz'),
(179, 69799978, 0.2500, 174396, 137, 510890, 19444, 1.50, 40, 51, 0.9, 'th'),
(180, 1318445, 1.9600, 25326, 89, 14870, -5385, 4.10, 21, 33, 0.02, ' tl'),
(181, 8278724, 2.4300, 196358, 152, 54390, -2000, 4.40, 19, 43, 0.11, 'tg'),
(182, 105695, 1.1500, 1201, 147, 720, -800, 3.60, 22, 24, 0, 'to'),
(183, 1399488, 0.3200, 4515, 273, 5130, -800, 1.70, 36, 52, 0.02, 'tt'),
(184, 11818619, 1.0600, 123900, 76, 155360, -4000, 2.20, 33, 70, 0.15, 'tn'),
(185, 84339067, 1.0900, 909452, 110, 769630, 283922, 2.10, 32, 76, 1.08, 'tr'),
(186, 6031200, 1.5000, 89111, 13, 469930, -5000, 2.80, 27, 53, 0.08, 'tm'),
(187, 104425, -0.1500, -153, 298, 350, -451, 2.00, 43, 96, 0, 'vi'),
(188, 45741007, 3.3200, 1471413, 229, 199810, 168694, 5.00, 17, 26, 0.59, 'ug'),
(189, 43733762, -0.5900, -259876, 75, 579320, 10000, 1.40, 41, 69, 0.56, 'ua'),
(190, 9890402, 1.2300, 119873, 118, 83600, 40000, 1.40, 33, 86, 0.13, 'ae'),
(191, 67886011, 0.5300, 355839, 281, 241930, 260650, 1.80, 40, 83, 0.87, 'gb'),
(192, 331002651, 0.5900, 1937734, 36, 9147420, 954806, 1.80, 38, 83, 4.25, 'us'),
(193, 3473730, 0.3500, 11996, 20, 175020, -3000, 2.00, 36, 96, 0.04, 'uy'),
(194, 33469203, 1.4800, 487487, 79, 425400, -8863, 2.40, 28, 50, 0.43, 'uz'),
(195, 307145, 2.4200, 7263, 25, 12190, 120, 3.80, 21, 24, 0, 'vu'),
(196, 28435940, -0.2800, -79889, 32, 882050, -653249, 2.30, 30, 23, 0.36, 've'),
(197, 97338579, 0.9100, 876473, 314, 310070, -80000, 2.10, 32, 38, 1.25, 'vn'),
(198, 597339, 2.5500, 14876, 2, 266000, 5582, 2.40, 28, 87, 0.01, 'eh'),
(199, 29825964, 2.2800, 664042, 56, 527970, -30000, 3.80, 20, 38, 0.38, 'ye'),
(200, 18383955, 2.9300, 522925, 25, 743390, -8000, 4.70, 18, 45, 0.24, 'zm'),
(201, 14862924, 1.4800, 217456, 38, 386850, -116858, 3.60, 19, 38, 0.19, 'zw');

-- --------------------------------------------------------

--
-- Structure for view `CountriesWithAverageHieght`
--
DROP TABLE IF EXISTS `CountriesWithAverageHieght`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dpatel41`@`localhost` SQL SECURITY DEFINER VIEW `CountriesWithAverageHieght`  AS SELECT `c`.`Country` AS `Country`, `h`.`HappinessScore` AS `HappinessScore`, `p`.`Density` AS `Density` FROM ((`COUNTRY` `c` join `HAPPINESS` `h` on((`c`.`CountryCode` = `h`.`CountryCode`))) join `POPULATION` `p` on((`c`.`CountryCode` = `p`.`CountryCode`))) WHERE (`h`.`HappinessScore` = (select max(`HAPPINESS`.`HappinessScore`) from `HAPPINESS`)) ;

-- --------------------------------------------------------

--
-- Structure for view `CountriesWithHighestHappiness`
--
DROP TABLE IF EXISTS `CountriesWithHighestHappiness`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dpatel41`@`localhost` SQL SECURITY DEFINER VIEW `CountriesWithHighestHappiness`  AS SELECT `c`.`Country` AS `Country`, `h`.`HappinessScore` AS `HappinessScore`, `p`.`Density` AS `Density` FROM ((`COUNTRY` `c` join `HAPPINESS` `h` on((`c`.`CountryCode` = `h`.`CountryCode`))) join `POPULATION` `p` on((`c`.`CountryCode` = `p`.`CountryCode`))) WHERE (`h`.`HappinessScore` = (select max(`HAPPINESS`.`HappinessScore`) from `HAPPINESS`)) ;

-- --------------------------------------------------------

--
-- Structure for view `HappiestCountryDetails`
--
DROP TABLE IF EXISTS `HappiestCountryDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dpatel41`@`localhost` SQL SECURITY DEFINER VIEW `HappiestCountryDetails`  AS SELECT `c`.`Country` AS `Country`, `h`.`HappinessScore` AS `HappinessScore`, `ht`.`MaleHeightCm` AS `MaleHeightCm`, `ht`.`FemaleHeightCm` AS `FemaleHeightCm`, `p`.`Density` AS `Density` FROM (((`COUNTRY` `c` join `HAPPINESS` `h` on((`c`.`CountryCode` = `h`.`CountryCode`))) join `HEIGHT` `ht` on((`c`.`CountryCode` = `ht`.`CountryCode`))) join `POPULATION` `p` on((`c`.`CountryCode` = `p`.`CountryCode`))) WHERE (`h`.`HappinessScore` = (select max(`HAPPINESS`.`HappinessScore`) from `HAPPINESS`)) ;

-- --------------------------------------------------------

--
-- Structure for view `HappyCountryDetails`
--
DROP TABLE IF EXISTS `HappyCountryDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dpatel41`@`localhost` SQL SECURITY DEFINER VIEW `HappyCountryDetails`  AS SELECT `c`.`Country` AS `Country`, `h`.`HappinessScore` AS `HappinessScore`, `ht`.`MaleHeightCm` AS `MaleHeightCm`, `ht`.`FemaleHeightCm` AS `FemaleHeightCm`, `p`.`Density` AS `Density` FROM (((`COUNTRY` `c` join `HAPPINESS` `h` on((`c`.`CountryCode` = `h`.`CountryCode`))) join `HEIGHT` `ht` on((`c`.`CountryCode` = `ht`.`CountryCode`))) join `POPULATION` `p` on((`c`.`CountryCode` = `p`.`CountryCode`))) WHERE (`h`.`HappinessScore` = (select max(`HAPPINESS`.`HappinessScore`) from `HAPPINESS`)) ;

-- --------------------------------------------------------

--
-- Structure for view `HighDensityHighHappiness`
--
DROP TABLE IF EXISTS `HighDensityHighHappiness`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dpatel41`@`localhost` SQL SECURITY DEFINER VIEW `HighDensityHighHappiness`  AS SELECT `c`.`Country` AS `Country`, `p`.`Density` AS `Density`, `h`.`HappinessScore` AS `HappinessScore`, avg(`h`.`LifeExpectancy`) AS `AverageLifeExpectancy` FROM ((`COUNTRY` `c` join `POPULATION` `p` on((`c`.`CountryCode` = `p`.`CountryCode`))) join `HAPPINESS` `h` on((`c`.`CountryCode` = `h`.`CountryCode`))) WHERE ((`p`.`Density` > 500) AND (`h`.`HappinessScore` > 6.5)) GROUP BY `c`.`Country`, `p`.`Density`, `h`.`HappinessScore` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COUNTRY`
--
ALTER TABLE `COUNTRY`
  ADD PRIMARY KEY (`CountryCode`),
  ADD KEY `LanguageCode` (`LanguageCode`);

--
-- Indexes for table `HAPPINESS`
--
ALTER TABLE `HAPPINESS`
  ADD PRIMARY KEY (`HappinessID`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- Indexes for table `HEIGHT`
--
ALTER TABLE `HEIGHT`
  ADD PRIMARY KEY (`HeightID`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- Indexes for table `LANGUAGE`
--
ALTER TABLE `LANGUAGE`
  ADD PRIMARY KEY (`LanguageCode`);

--
-- Indexes for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD PRIMARY KEY (`PersonID`),
  ADD KEY `CountryCode` (`CountryCode`),
  ADD KEY `LanguageCode` (`LanguageCode`);

--
-- Indexes for table `PERSON_LANGUAGE`
--
ALTER TABLE `PERSON_LANGUAGE`
  ADD PRIMARY KEY (`Person_LanguageID`),
  ADD KEY `LanguageCode` (`LanguageCode`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `POPULATION`
--
ALTER TABLE `POPULATION`
  ADD PRIMARY KEY (`PopulationID`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HAPPINESS`
--
ALTER TABLE `HAPPINESS`
  MODIFY `HappinessID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `HEIGHT`
--
ALTER TABLE `HEIGHT`
  MODIFY `HeightID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `PERSON_LANGUAGE`
--
ALTER TABLE `PERSON_LANGUAGE`
  MODIFY `Person_LanguageID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PERSON_LANGUAGE`
--
ALTER TABLE `PERSON_LANGUAGE`
  ADD CONSTRAINT `PERSON_LANGUAGE_ibfk_1` FOREIGN KEY (`LanguageCode`) REFERENCES `LANGUAGE` (`LanguageCode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
