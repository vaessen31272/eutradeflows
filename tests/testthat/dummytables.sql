-- Database structure of the dummy data
--
-- To load this table in the database, use the R function:
-- tradeflows::createdbstructure("dummytables.sql", dbname = "test", sqlfolder = ".")
--


--
-- Table structure for table `raw_dummy_code`
--
DROP TABLE IF EXISTS `raw_dummy_code`;
CREATE TABLE `raw_dummy_code` (
  `code` int DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `raw_dummy_product`
--
DROP TABLE IF EXISTS `raw_dummy_product`;
CREATE TABLE `raw_dummy_product` (
  `productcode` int DEFAULT NULL,
  `productdescription` text COLLATE utf8_unicode_ci,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `raw_dummy_reporter`
--
DROP TABLE IF EXISTS `raw_dummy_reporter`;
CREATE TABLE `raw_dummy_reporter` (
  `reportercode` int DEFAULT NULL,
  `reporter` text COLLATE utf8_unicode_ci,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `raw_dummy_partner`
--
DROP TABLE IF EXISTS `raw_dummy_partner`;
CREATE TABLE `raw_dummy_partner` (
  `partnercode` int DEFAULT NULL,
  `partner` text COLLATE utf8_unicode_ci,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


               
--
-- Table structure for table `raw_dummy_monthly`
--
DROP TABLE IF EXISTS `raw_dummy_monthly`;
CREATE TABLE `raw_dummy_monthly` (
  `reportercode` int DEFAULT NULL,
  `partnercode` int DEFAULT NULL,
  `productcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flowcode` int DEFAULT NULL,
  `statregime` int DEFAULT NULL,
  `period` int DEFAULT NULL,
  `tradevalue` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  KEY `reportercode` (`reportercode`),
  KEY `partnercode` (`partnercode`),
  KEY `productcode` (`productcode`),
  KEY `flowcode` (`flowcode`),
  KEY `period` (`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `vld_dummy_code`
--
DROP TABLE IF EXISTS `vld_dummy_code`;
CREATE TABLE `vld_dummy_code` (
  `code` int DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `vld_dummy_product`
--
DROP TABLE IF EXISTS `vld_dummy_product`;
CREATE TABLE `vld_dummy_product` (
  `productcode` int DEFAULT NULL,
  `productdescription` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `productcode` (`productcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `vld_dummy_reporter`
--
DROP TABLE IF EXISTS `vld_dummy_reporter`;
CREATE TABLE `vld_dummy_reporter` (
  `reportercode` int DEFAULT NULL,
  `reporter` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `reportercode` (`reportercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `vld_dummy_partner`
--
DROP TABLE IF EXISTS `vld_dummy_partner`;
CREATE TABLE `vld_dummy_partner` (
  `partnercode` int DEFAULT NULL,
  `partner` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `partnercode` (`partnercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `vld_dummy_unit`
--
DROP TABLE IF EXISTS `vld_dummy_unit`;
CREATE TABLE `vld_dummy_unit` (
  `productcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitcode` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodstart` int DEFAULT NULL,
  `periodend` int DEFAULT NULL,
  KEY `productcode` (`productcode`),
  KEY `unitcode` (`unitcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

