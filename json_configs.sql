-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `json_configs`;
CREATE TABLE `json_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` text NOT NULL,
  `configuration` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `json_configs` (`id`, `config_name`, `configuration`) VALUES
(1,	'WEBSITE_CONFIGS',	'{\"allow\": true, \"version\": 7, \"language\": \"fr\"}'),
(2,	'WEBSITE_CONFIGS',	'{\"name\": \"fadil xcoder\", \"unit\": 786, \"language\": \"php\", \"nato_phonetic\": \"Foxtrot Alfa Delta India Lima\"}');

-- 2022-08-14 19:32:22