-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 08:54 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `DATA2001_A2_Data`
--

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

CREATE TABLE IF NOT EXISTS `COUNTRY` (
  `CountryCode` char(2) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `OfficialLanguageCode` char(2) DEFAULT NULL,
  PRIMARY KEY (`CountryCode`),
  KEY `OfficialLanguageCode` (`OfficialLanguageCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`CountryCode`, `Country`, `OfficialLanguageCode`) VALUES
('ad', 'Andorra', NULL),
('ae', 'United Arab Emirates', 'ar'),
('af', 'Afghanistan', 'ps'),
('ag', 'Antigua and Barbuda', NULL),
('ai', 'Anguilla', NULL),
('al', 'Albania', 'sq'),
('am', 'Armenia', 'hy'),
('ao', 'Angola', NULL),
('ar', 'Argentina', 'es'),
('as', 'American Samoa', NULL),
('at', 'Austria', 'de'),
('au', 'Australia', 'en'),
('az', 'Azerbaijan', 'az'),
('ba', 'Bosnia and Herzegovina', 'sr'),
('bb', 'Barbados', NULL),
('be', 'Belgium', 'fr'),
('bf', 'Burkina Faso', NULL),
('bg', 'Bulgaria', 'bg'),
('bj', 'Benin', NULL),
('bm', 'Bermuda', NULL),
('bn', 'Brunei', 'ms'),
('bo', 'Bolivia', 'es'),
('br', 'Brazil', 'pt'),
('bs', 'Bahamas', NULL),
('bt', 'Bhutan', NULL),
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
('fk', 'Falkland Islands', NULL),
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
('kn', 'Saint Kitts and Nevis', NULL),
('kr', 'South Korea', 'ko'),
('kw', 'Kuwait', 'ar'),
('kz', 'Kazakhstan', 'kk'),
('la', 'Laos', 'lo'),
('lb', 'Lebanon', 'ar'),
('lc', 'Saint Lucia', NULL),
('li', 'Liechtenstein', 'de'),
('lk', 'Sri Lanka', 'si'),
('lt', 'Lithuania', 'lt'),
('lu', 'Luxembourg', 'lb'),
('lv', 'Latvia', 'lv'),
('ly', 'Libya', 'ar'),
('ma', 'Morocco', 'ar'),
('mc', 'Monaco', 'fr'),
('me', 'Montenegro', 'sr'),
('mf', 'Saint Martin', NULL),
('mk', 'Macedonia', 'mk'),
('ml', 'Mali', NULL),
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
('pm', 'Saint Pierre and Miquelon', NULL),
('pr', 'Puerto Rico', 'es'),
('pt', 'Portugal', 'pt'),
('py', 'Paraguay', 'es'),
('qa', 'Qatar', 'ar'),
('ro', 'Romania', 'ro'),
('rs', 'Serbia', 'sr'),
('ru', 'Russia', 'sa'),
('rw', 'Rwanda', 'rw'),
('sa', 'Saudi Arabia', 'ar'),
('sb', 'Solomon Islands', NULL),
('sc', 'Seychelles', NULL),
('sd', 'Sudan', NULL),
('se', 'Sweden', 'sv'),
('sg', 'Singapore', 'en'),
('sh', 'Saint Helena', NULL),
('si', 'Slovenia', 'sl'),
('sk', 'Slovakia', 'sk'),
('sl', 'Sierra Leone', NULL),
('sm', 'San Marino', NULL),
('sn', 'Senegal', 'wo'),
('so', 'Somalia', NULL),
('sr', 'Suriname', NULL),
('ss', 'South Sudan', NULL),
('st', 'Sí£o Tomí and Prí_ncipe', NULL),
('sv', 'El Salvador', 'es'),
('sz', 'Swaziland', NULL),
('tc', 'Turks and Caicos Islands', NULL),
('tg', 'Togo', NULL),
('th', 'Thailand', 'th'),
('tj', 'Tajikistan', 'tg'),
('tk', 'Tokelau', NULL),
('tm', 'Turkmenistan', 'tk'),
('tn', 'Tunisia', 'ar'),
('to', 'Tonga', NULL),
('tr', 'Turkey', 'tr'),
('tt', 'Trinidad and Tobago', 'en'),
('tv', 'Tuvalu', NULL),
('tw', 'Taiwan', 'zh'),
('tz', 'Tanzania', NULL),
('ua', 'Ukraine', 'uk'),
('ug', 'Uganda', NULL),
('us', 'United States', 'en'),
('uy', 'Uruguay', 'es'),
('uz', 'Uzbekistan', 'uz'),
('vc', 'Saint Vincent and the Grenadin', NULL),
('ve', 'Venezuela', 'es'),
('vi', 'Virgin Islands', NULL),
('vn', 'Vietnam', 'vi'),
('vu', 'Vanuatu', NULL),
('wf', 'Wallis and Futuna', NULL),
('ws', 'Samoa', NULL),
('ye', 'Yemen', 'ar'),
('za', 'South Africa', 'tn'),
('zm', 'Zambia', NULL),
('zw', 'Zimbabwe', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `LANGUAGE`
--

CREATE TABLE IF NOT EXISTS `LANGUAGE` (
  `LanguageCode` char(2) NOT NULL,
  `Language` varchar(20) NOT NULL,
  PRIMARY KEY (`LanguageCode`)
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

CREATE TABLE IF NOT EXISTS `PERSON` (
  `PersonID` int(4) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Postcode` char(10) NOT NULL,
  `CountryCode` char(2) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `FirstLanguageCode` char(2) NOT NULL,
  PRIMARY KEY (`PersonID`),
  KEY `CountryCode` (`CountryCode`),
  KEY `FirstLanguageCode` (`FirstLanguageCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`PersonID`, `FirstName`, `LastName`, `Street`, `City`, `State`, `Postcode`, `CountryCode`, `Phone`, `Email`, `FirstLanguageCode`) VALUES
(1, 'James', ' Clark', 'George Street', 'Spresiano', 'NT', '1028', 'au', '0405 088 044', 'pellentesque@ehg.org', 'en'),
(2, 'Robert', 'Ramirez', 'William Street', 'Kortrijk', 'NT', '1120', 'au', '0467 234 573', 'velit.eas@Maecene.com', 'en'),
(3, 'John', 'Lewis', 'Church Street', 'Bicester', 'NT', '1639', 'au', '043 265 800', 'aliquam.adipus@rerit.co.uk', 'en'),
(4, 'Michael', 'Robinson', 'High Street.', 'Lublin', 'NT', '1765', 'au', '0415 496 955', 'sodles@tellusid.co.uk', 'en'),
(5, 'William', 'Walker', 'King Street. ', 'Pottsville', 'NSW', '2433', 'au', '0423 777 555', 'mattis@setnetus.net', 'de'),
(6, 'David', 'Young', 'Short Street. ', 'Oranienburg', 'NSW', '2956', 'au', '0415 956 858', 'aliquam.iais@utin.com', 'en'),
(60, 'Richard', 'Allen', 'Elizabeth Dr', 'Red Deer', 'VIC', '3564', 'au', '0408 579 026', 'nascetur@non.co.uk', 'en'),
(61, 'Joseph', 'King', 'John Dr', 'Mühlheim am Main', 'VIC', '3936', 'au', '0415 482 199', 'nibh.vulputate@maurissapien.ca', 'en'),
(62, 'Thomas', 'Mason', 'Koala Street', 'Doetinchem', 'QLD', '4053', 'au', '0415 573 236', 'is.Integer@euultricessit.org', 'ar'),
(63, 'Christopher', 'Mitchell', 'Emu Street ', 'Goulburn', 'QLD', '4406', 'au', '0415 488 077', 'non@Nam.org', 'fa'),
(64, 'Matthew', 'Hill', 'Dingo Street ', 'Alto Hospicio', 'SA', '5971', 'au', '0415 131 096', 'dapibus.id@facilisiSed.ca', 'ar'),
(65, 'Anthony', 'Flores', 'Wallaby Road ', 'Curaco de Vélez', 'WA', '6699', 'au', '0415 329 570', 'orci.luctus.et@etmagnis.org', 'ar'),
(66, 'Mark', 'Green', 'Echidna Street ', 'Stendal', 'TAS', '7512', 'au', '0415 133 547', 'tristique@fringillaia.org', 'ar'),
(67, 'Donald', 'Lopez', 'Wombat Road ', 'Arauco', 'TAS', '7873', 'au', '0415 442 456', 'erat.in@amolestie.org', 'ar'),
(68, 'Steven', ' Gonzalez', 'Kangaroo Street', 'Huntley', 'NSW', '2303', 'au', '0415 696 122', 'non.lobortis.quis@id.org', 'ar'),
(69, 'Paul', 'Wilson', 'Brushtail Crescent', 'Wanzele', 'NSW', '2425', 'au', '0415 727 415', 'pesque@erateget.org', 'bn'),
(70, 'Andrew', 'Anderson', 'Jumbuck Street ', 'Cantalupo in Sabina', 'NSW', '2220', 'au', '0415 336 747', 'velit.egess@enornare.com', 'bn'),
(71, 'Joshua', 'Thomas', 'Platypus Street', 'Traiguén', 'NSW', '2017', 'au', '0415 117 691', 'aliquam.adcus@rutr.uk', 'bn'),
(72, 'Kenneth', 'Taylor', 'William Street', 'Halifax', 'NSW', '2134', 'au', '0415 291 024', 'sodales@tki.co.uk', 'bn'),
(73, 'Kevin', 'Moore', 'Church Street', 'Fumal', 'NSW', '2222', 'au', '0415 639 716', 'mattis@senetnetus.net', 'bn'),
(74, 'Brian', 'Jackson', 'High Street.', 'Liévin', 'NSW', '2302', 'au', '0415 361 193', 'iaculis@utmggn.com', 'bn'),
(109, 'Brian', 'Jackson', 'High Street.', 'Liévin', 'NSW', '2302', 'au', '0415 361 193', 'iaculis@utmggn.com', 'bn'),
(110, 'George', 'Martin', 'King Street. ', 'Spoleto', 'NSW', '2572', 'au', '0415 218 972', 'nascetur.ris.mus@non.co.uk', 'bn'),
(111, 'Edward', ' Lee', 'Short Street. ', 'Giugliano in Campania', 'NSW', '2222', 'au', '0499 697 935', 'nibh.vte@maurissapien.ca', 'fr'),
(112, 'Ronald', 'Perez', 'George Street', 'Beaumont', 'NSW', '2233', 'au', '0415 035 497', 'mauris.Inger@euultricessit.org', 'fr'),
(113, 'Timothy', 'Thompson', 'William Street', 'Portsmouth', 'VIC', '3079', 'au', '0489394 622', 'augue.eu.tellus@yahoo.com', 'fr'),
(114, 'Jason', 'White', 'Church Street', 'Heidenheim', 'VIC', '3850', 'au', '0415 609 075', 'non@Nam.org', 'fr'),
(130, 'Barbara', 'Mitchell', 'Mill Lane', 'Hualpén', 'NSW', '2230', 'au', '0415 349 532', 'veliestas@hotmail.com', 'ga'),
(131, 'Susan', 'Carter', 'Alexander Road', 'GŽrouville', 'NSW', '2052', 'au', '0415 729 127', 'aliquam.adcus@rutr.uk', 'ga'),
(139, 'Kimberly', 'Collins', 'Victoria Street', 'Zeles', 'CO', '6606', 'bm', '0415 281 118', 'dapibus.id@hotmail.com', 'ii'),
(140, 'Emily', 'Reyes', 'Albert Road', 'Okcester', 'CT', '6904', 'bt', '0415 184 363', 'orci.luc@etmagnis.org', 'ii'),
(141, 'Donna', 'Stewart', 'Queensway', 'Onavine', 'DC ', '7341', 'bo', '0415 742 477', 'trjkkque@fcinia.org', 'ii'),
(142, 'Michelle', 'Moore', 'New Street', 'Troving', 'CA', '7946', 'ba', '0415 993 093', 'erat.in@gmail.com', 'ii'),
(143, 'Lisa', 'Turner', 'King Street', 'Klesas', 'ALD', '4556', 'bb', '0423 783 240', 'nibh.vte@maurissapien.ca', 'ii'),
(144, 'Betty', 'Diaz', 'The Green', 'Clitding', 'APG', '4905', 'by', '0415 581 322', 'maurger@euricessit.org', 'ii'),
(145, 'Margaret', 'Parker', 'Springfield Road', 'Glaeson', 'ARB', '5341', 'be', '0415 163 940', 'augue.tellus@yahoo.com', 'ii'),
(146, 'Sandra', 'Cruz', 'George Street', 'Ifarc', 'AZ', '5369', 'bz', '0460 003 922', 'non@Nam.org', 'ii'),
(147, 'Ashley', 'Edwards', 'Park Lane', 'Phesa', 'CA', '6247', 'bj', '0415 243 270', 'mauris.uti@doauctor.edu', 'ii'),
(152, 'Jessica', 'Roberts', 'York Road', 'Alness', 'NSW', '2220', 'au', '0445 257 351', 'sodales@co.uk', 'ga'),
(153, 'Sarah', 'Gomez', 'St. John’s Road', 'Forchtenstein', 'sa', '5666', 'au', '0415 723 190', 'mattis@hotmail.com', 'ga'),
(155, 'Karen', 'Phillips', 'Main Road', 'Srofmouth', 'AE', '3990', 'fr', '0411 234567', 'iaculis@utmolestiein.com', 'ga'),
(159, 'Nancy', 'Evans', 'Broadway', 'Iyulphia', 'QLD', '4221', 'au', '0415 330 183', 'nascr.ridi@non.co.uk', 'ar'),
(163, 'Dorothy', 'Jackson', 'Queen Street', 'Vamore', 'CT', '7984', 'au', '0415 853 575', 'quis@id.org', 'en'),
(164, 'Carol', 'Martin', 'West Street', 'Khadale', 'QLD', '4201', 'au', '0415 778 660', 'erat.in@gmail.com', 'de'),
(166, 'Amanda', 'Masters', 'North Street', 'Sumond', 'QLD', '4230', 'au', '0415 175 638', 'quis@id.org', 'de');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Person_Language_View`
--
CREATE TABLE IF NOT EXISTS `Person_Language_View` (
`PersonID` int(4)
,`FullName` varchar(101)
,`Street` varchar(50)
,`City` varchar(30)
,`State` varchar(30)
,`Postcode` char(10)
,`Country` varchar(30)
,`FirstLanguage` varchar(20)
);
-- --------------------------------------------------------

--
-- Structure for view `Person_Language_View`
--
DROP TABLE IF EXISTS `Person_Language_View`;

CREATE VIEW `Person_Language_View` AS select `PERSON`.`PersonID` AS `PersonID`,concat(`PERSON`.`FirstName`,' ',`PERSON`.`LastName`) AS `FullName`,`PERSON`.`Street` AS `Street`,`PERSON`.`City` AS `City`,`PERSON`.`State` AS `State`,`PERSON`.`Postcode` AS `Postcode`,`COUNTRY`.`Country` AS `Country`,`LANGUAGE`.`Language` AS `FirstLanguage` from ((`PERSON` join `COUNTRY` on((`PERSON`.`CountryCode` = `COUNTRY`.`CountryCode`))) join `LANGUAGE` on((`LANGUAGE`.`LanguageCode` = `PERSON`.`FirstLanguageCode`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `COUNTRY`
--
ALTER TABLE `COUNTRY`
  ADD CONSTRAINT `COUNTRY_ibfk_1` FOREIGN KEY (`OfficialLanguageCode`) REFERENCES `LANGUAGE` (`LanguageCode`);

--
-- Constraints for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD CONSTRAINT `PERSON_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `COUNTRY` (`CountryCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PERSON_ibfk_2` FOREIGN KEY (`FirstLanguageCode`) REFERENCES `LANGUAGE` (`LanguageCode`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
