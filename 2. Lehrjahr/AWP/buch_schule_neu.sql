-- phpMyAdmin SQL Dump
-- version 2.11.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 28. September 2010 um 18:24
-- Server Version: 5.0.45
-- PHP-Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Datenbank: `buch_schule`
--
DROP DATABASE IF EXISTS `buch_schule`;
CREATE DATABASE `buch_schule`;
USE `buch_schule`;
-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `ablegen`
--

CREATE TABLE IF NOT EXISTS `ablegen` (
  `ID_Schueler` bigint(20) NOT NULL,
  `ID_Pruefung` bigint(20) NOT NULL,
  `Note` smallint(6) NOT NULL,
  PRIMARY KEY  (`ID_Schueler`,`ID_Pruefung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fuer Tabelle `ablegen`
--

INSERT INTO `ablegen` (`ID_Schueler`, `ID_Pruefung`, `Note`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 3),
(1, 4, 2),
(1, 5, 3),
(1, 6, 5),
(1, 7, 4),
(1, 8, 3),
(1, 9, 1),
(2, 1, 5),
(2, 2, 4),
(2, 3, 2),
(2, 4, 5),
(2, 5, 1),
(2, 6, 2),
(2, 7, 3),
(2, 8, 3),
(2, 9, 4),
(3, 1, 2),
(3, 2, 4),
(3, 3, 6),
(3, 4, 4),
(3, 5, 1),
(3, 6, 1),
(3, 7, 2),
(3, 8, 3),
(3, 9, 2),
(4, 1, 2),
(4, 2, 6),
(4, 3, 4),
(4, 4, 2),
(4, 5, 3),
(4, 6, 1),
(4, 7, 2),
(4, 8, 5),
(4, 9, 5),
(5, 1, 6),
(5, 2, 3),
(5, 3, 5),
(5, 4, 6),
(5, 5, 1),
(5, 6, 3),
(5, 7, 2),
(5, 8, 4),
(5, 9, 6),
(6, 1, 5),
(6, 2, 4),
(6, 3, 5),
(6, 4, 4),
(6, 5, 6),
(6, 6, 3),
(6, 7, 6),
(6, 8, 5),
(6, 9, 4),
(7, 1, 2),
(7, 2, 3),
(7, 3, 1),
(7, 4, 2),
(7, 5, 3),
(7, 6, 1),
(7, 7, 2),
(7, 8, 1),
(7, 9, 3),
(8, 1, 4),
(8, 2, 3),
(8, 3, 4),
(8, 4, 2),
(8, 5, 2),
(8, 6, 3),
(8, 7, 3),
(8, 8, 2),
(8, 9, 2),
(9, 1, 3),
(9, 2, 5),
(9, 3, 2),
(9, 4, 2),
(9, 5, 3),
(9, 6, 2),
(9, 7, 1),
(9, 8, 2),
(9, 9, 6),
(10, 1, 1),
(10, 2, 3),
(10, 3, 5),
(10, 4, 4),
(10, 5, 3),
(10, 6, 4),
(10, 7, 2),
(10, 8, 3),
(10, 9, 2),
(11, 1, 2),
(11, 2, 2),
(11, 3, 3),
(11, 4, 5),
(11, 5, 6),
(11, 6, 2),
(11, 7, 1),
(11, 8, 4),
(11, 9, 1),
(12, 1, 4),
(12, 2, 5),
(12, 3, 1),
(12, 4, 2),
(12, 5, 1),
(12, 6, 2),
(12, 7, 6),
(12, 8, 3),
(12, 9, 6),
(13, 1, 6),
(13, 2, 4),
(13, 3, 5),
(13, 4, 6),
(13, 5, 3),
(13, 6, 4),
(13, 7, 3),
(13, 8, 4),
(13, 9, 3),
(14, 1, 3),
(14, 9, 2),
(15, 2, 3),
(15, 3, 4),
(15, 4, 6),
(15, 5, 3),
(15, 6, 6),
(15, 7, 1),
(15, 8, 4),
(15, 9, 4),
(16, 1, 2),
(16, 2, 3),
(16, 3, 2),
(16, 4, 5),
(16, 5, 6),
(16, 6, 4),
(16, 7, 2),
(16, 8, 1),
(16, 9, 5),
(17, 1, 1),
(17, 2, 3),
(17, 3, 4),
(17, 4, 3),
(17, 5, 2),
(17, 6, 1),
(17, 7, 6),
(17, 8, 2),
(17, 9, 3),
(18, 1, 5),
(18, 2, 6),
(18, 3, 5),
(18, 4, 2),
(18, 5, 1),
(18, 6, 4),
(18, 7, 3),
(18, 8, 4),
(18, 9, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Amt`
--

CREATE TABLE IF NOT EXISTS `Amt` (
  `ID_Amt` bigint(20) NOT NULL,
  `Bezeichnung` varchar(50) NOT NULL,
  PRIMARY KEY  (`ID_Amt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fuer Tabelle `Amt`
--

INSERT INTO `Amt` (`ID_Amt`, `Bezeichnung`) VALUES
(1, 'Schulleiter'),
(7, 'Lehrerrat'),
(8, 'Vertrauenslehrer'),
(9, 'Systemadministration'),
(10, 'Hompagegestaltung'),
(11, 'Stundenplan'),
(12, 'Raumbetreuung');

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Ausuebung`
--

CREATE TABLE IF NOT EXISTS `Ausuebung` (
  `ID_Ausuebung` bigint(20) NOT NULL auto_increment,
  `Datum` date default NULL,
  `ID_Amt` bigint(20) NOT NULL,
  `ID_Lehrer` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_Ausuebung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- Daten fuer Tabelle `Ausuebung`
--

INSERT INTO `Ausuebung` (`ID_Ausuebung`, `Datum`, `ID_Amt`, `ID_Lehrer`) VALUES
(1, '1999-01-01', 8, 4),
(2, '2000-01-01', 8, 4),
(3, '2001-01-01', 8, 4),
(4, '2002-01-01', 8, 16),
(5, '2001-01-01', 8, 16),
(6, '0000-00-00', 1, 8),
(7, '2001-01-01', 9, 14),
(8, '2002-01-01', 9, 14),
(9, '2002-01-01', 9, 3),
(10, '2002-01-01', 9, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Fach`
--

CREATE TABLE IF NOT EXISTS `Fach` (
  `ID_Fach` bigint(20) NOT NULL auto_increment,
  `Bezeichnung` varchar(50) NOT NULL,
  `Kuerzel` varchar(5) NOT NULL,
  PRIMARY KEY  (`ID_Fach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- Daten fuer Tabelle `Fach`
--

INSERT INTO `Fach` (`ID_Fach`, `Bezeichnung`, `Kuerzel`) VALUES
(1, 'Mathematik', 'M'),
(2, 'Englisch', 'E'),
(3, 'Elektrotechnik', 'ET'),
(4, 'Programmieren Grundlagen', 'PRO'),
(5, 'Sport', 'SP'),
(6, 'Wirtschaftslehre', 'WL'),
(7, 'Betriebsysteme', 'BET'),
(8, 'Datenbanken', 'DAT'),
(9, 'Physik', 'PH'),
(10, 'Rechner und Systemtechnik', 'RSY'),
(11, 'Deutsch', 'D'),
(12, 'PC und Automatisierungstechnik', 'PCA'),
(13, 'Latein', 'L'),
(14, 'Griechisch', 'GR'),
(15, 'Java', 'JAVA');

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Klasse`
--

CREATE TABLE IF NOT EXISTS `Klasse` (
  `ID_Klasse` bigint(20) NOT NULL auto_increment,
  `Bezeichnung` varchar(10) default NULL,
  `ID_Schueler` bigint(20) default NULL,
  `ID_Lehrer` bigint(20) default NULL,
  `seit wann` date default NULL,
  PRIMARY KEY  (`ID_Klasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- Daten fuer Tabelle `Klasse`
--

INSERT INTO `Klasse` (`ID_Klasse`, `Bezeichnung`, `ID_Schueler`, `ID_Lehrer`, `seit wann`) VALUES
(2, 'IF2B', 2, 3, '2009-08-20'),
(3, 'IF2C', 7, 3, '2008-08-20'),
(4, 'IF2A', 13, 6, '2008-08-20');

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Lehrer`
--

CREATE TABLE IF NOT EXISTS `Lehrer` (
  `ID_Lehrer` bigint(20) NOT NULL auto_increment,
  `Nachname` varchar(50) default NULL,
  `Vorname` varchar(50) default NULL,
  `Kuerzel` varchar(5) default NULL,
  `Dienstbeginn` date default NULL,
  `Geburtsdatum` date default NULL,
  `Straße` varchar(50) default NULL,
  `PLZ` varchar(5) default NULL,
  `Ort` varchar(50) default NULL,
  PRIMARY KEY  (`ID_Lehrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- Daten fuer Tabelle `Lehrer`
--

INSERT INTO `Lehrer` (`ID_Lehrer`, `Nachname`, `Vorname`, `Kuerzel`, `Dienstbeginn`, `Geburtsdatum`, `Straße`, `PLZ`, `Ort`) VALUES
(1, 'Wilnsdorf', 'Rudolf', 'WILL', '1980-01-01', '1977-05-12', 'Muehlengraben 12', '59872', 'Meschede'),
(2, 'Schnettler', 'Susanne', 'SNE', '1990-07-20', '1959-12-17', 'Kleinsraße 11', '59955', 'Winterberg'),
(3, 'Jakob', 'Volker', 'JAK', '2001-08-20', '1961-09-28', 'Schuetzenweg 12', '59909', 'Bestwig'),
(4, 'Blotzek', 'Ulrich', 'BLO', '1987-09-01', '1954-03-04', 'Großkopf 4', '59823', 'Arnsberg'),
(5, 'Bartos', 'Juergen', 'BAR', '2005-02-20', '1973-02-14', 'Bauernpad 3', '59929', 'Brilon'),
(6, 'Kramer-Giese', 'Britta', 'KRA', '2001-10-01', '1956-08-05', 'Kibitzweg 5', '59872', 'Meschede'),
(7, 'Schnuermann', 'Jörgen', 'SCJ', '2001-09-01', '1955-05-09', 'Schäferweg 40', '34431', 'Marsberg'),
(8, 'Schneider', 'Klaus', 'SCK', '2008-08-01', '1957-07-06', 'Gerbergasse 7', '59759', 'Arnsberg'),
(9, 'Breder', 'Silke', 'BRE', '1996-08-01', '1955-11-05', 'Hirschsprung 2', '59909', 'Bestwig'),
(13, 'Kloske', 'Peter', 'KLO', '1995-02-01', '1975-05-12', 'Borsigplatz 22', '59955', 'Winterberg'),
(14, 'Nierbes', 'Kuno', 'NIE', '2003-10-01', '1958-03-05', 'Kleingarten 8', '59872', 'Meschede'),
(15, 'Meißner', 'Niels', 'MEI', '1993-02-01', '1963-09-28', 'Vogelsang 18', '59755', 'Arnsberg'),
(16, 'Schmidt', 'Andrea', 'SCA', '1986-08-01', '1968-08-21', 'Borberg 34', '34431', 'Marsberg'),
(17, 'Urban', 'Friedhelm', 'URB', '2008-08-01', '1958-03-30', 'Kaiserallee 12', '59909', 'Bestwig'),
(18, 'Paffler', 'Markus', 'PAF', '2001-10-01', '1956-12-31', 'Hauptstraße 74', '59872', 'Meschede'),
(19, 'Leiner', 'Gerd', 'LEI', '1980-01-01', '1964-09-28', 'Maisenweg 7', '59759', 'Arnsberg'),
(20, 'Vogel', 'Eva', 'VOG', '1995-02-01', '1972-05-12', 'Hauberg 29', '59929', 'Brilon'),
(22, 'Becker', 'Friedrich', 'BEC', '2008-08-01', '1959-11-18', 'Bolpplatz 16', '59955', 'Winterberg');

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `lehrt`
--

CREATE TABLE IF NOT EXISTS `lehrt` (
  `ID_Lehrer` bigint(20) NOT NULL,
  `ID_Fach` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_Lehrer`,`ID_Fach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fuer Tabelle `lehrt`
--

INSERT INTO `lehrt` (`ID_Lehrer`, `ID_Fach`) VALUES
(1, 3),
(1, 10),
(2, 3),
(2, 9),
(3, 7),
(3, 8),
(4, 11),
(5, 2),
(6, 1),
(6, 7),
(7, 4),
(9, 6),
(13, 1),
(14, 4),
(15, 5),
(16, 6),
(17, 9),
(18, 12),
(19, 3),
(19, 9),
(20, 6),
(22, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Pruefung`
--

CREATE TABLE IF NOT EXISTS `Pruefung` (
  `ID_Pruefung` bigint(20) NOT NULL auto_increment,
  `Datum` date default NULL,
  `Gewichtung` smallint(6) default NULL,
  `Art` varchar(50) default NULL,
  `ID_Lehrer` bigint(20) default NULL,
  `ID_Fach` bigint(20) default NULL,
  PRIMARY KEY  (`ID_Pruefung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- Daten fuer Tabelle `Pruefung`
--

INSERT INTO `Pruefung` (`ID_Pruefung`, `Datum`, `Gewichtung`, `Art`, `ID_Lehrer`, `ID_Fach`) VALUES
(1, '2001-10-15', 3, 'Klassenarbeit', 3, 8),
(2, '2001-11-20', 1, 'Test', 3, 8),
(3, '2001-11-27', 2, 'Test', 3, 8),
(4, '2001-12-10', 3, 'Klassenarbeit', 3, 8),
(5, '2001-10-02', 3, 'Klassenarbeit', 5, 2),
(6, '2001-11-03', 1, 'Test', 5, 2),
(7, '2001-12-20', 2, 'Klassenatbeit', 5, 2),
(8, '2001-09-27', 3, 'Klassenarbeit', 7, 4),
(9, '2002-01-10', 3, 'Klassenarbeit', 7, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `Schueler`
--

CREATE TABLE IF NOT EXISTS `Schueler` (
  `ID_Schueler` bigint(20) NOT NULL auto_increment,
  `Nachname` varchar(50) default NULL,
  `Vorname` varchar(50) default NULL,
  `Straße` varchar(50) default NULL,
  `PLZ` varchar(5) default NULL,
  `Ort` varchar(50) default NULL,
  `Geburtsdatum` date default NULL,
  `Abschluss` varchar(50) default NULL,
  `ID_Klasse` bigint(20) default NULL,
  `Laborgruppe` varchar(1) default NULL,
  PRIMARY KEY  (`ID_Schueler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;


--
-- Daten fuer Tabelle `Schueler`
--

INSERT INTO `Schueler` (`ID_Schueler`, `Nachname`, `Vorname`, `Straße`, `PLZ`, `Ort`, `Geburtsdatum`, `Abschluss`, `ID_Klasse`, `Laborgruppe`) VALUES
(1, 'Mueller', 'Simon', 'Am Meisterstein 37', '59955', 'Winterberg', '1995-06-07', 'Hauptschule', 2, 'A'),
(2, 'Schmidt', 'Sabine', 'Siepen 6', '59823', 'Arnsberg', '1993-12-14', 'Hauptschule', 2, 'A'),
(3, 'Specht', 'Christa', 'Immenhuetten 16', '59929', 'Brilon', '1995-02-23', 'Realschule', 2, 'A'),
(4, 'Klein', 'Marcel', 'Grafschaft 23', '57392', 'Schmallenberg', '1993-08-04', 'Realschule', 2, 'B'),
(5, 'Groß', 'Paul', 'Höhenstraße 10', '59955', 'Winterberg', '1994-04-30', 'Hauptschule', 2, 'B'),
(6, 'Vogel', 'Alex', 'Ludwig-Straße 5', '59929', 'Brilon', '1995-03-13', 'Gymnasium', 2, 'B'),
(7, 'Janssen', 'Marc', 'Wolfsheid 27', '59469', 'Ense', '1992-02-19', 'Gymnasium', 3, 'A'),
(8, 'Meier', 'Ilyas', 'Muehlenweg 5', '59889', 'Eslohe', '1992-03-13', 'Hauptschule', 3, 'A'),
(9, 'Schulte', 'Claudia', 'Stembergstraße 32a', '59755', 'Arnsberg', '1993-11-08', 'Realschule', 3, 'A'),
(10, 'Kramer', 'Dirk', 'Schurrenweg 10', '59964', 'Medebach', '1993-02-21', 'Realschule', 3, 'B'),
(11, 'Schmidt', 'Oktay', 'Am Rad 22', '59955', 'Winterberg', '1994-01-09', 'Realschule', 3, 'B'),
(12, 'Mueller', 'Steffen', 'Alter Weg 24', '59955', 'Winterberg', '1992-02-22', 'Hauptschule', 3, 'B'),
(13, 'Drees', 'Dominik', 'Oemberg 12', '59823', 'Arnsberg', '1994-11-16', 'Hauptschule', 4, 'A'),
(14, 'Hoff', 'Peter', 'Weidenstraße 46', '59872', 'Meschede', '1994-08-24', 'Realschule', 4, 'A'),
(15, 'Elsner', 'Dirk', 'An der Ziegelei 31', '34431', 'Marsberg', '1995-02-22', 'Realschule', 4, 'A'),
(16, 'Vogt', 'David', 'Vinckestraße 55', '59821', 'Arnsberg', '1994-08-02', 'Hauptschule', 4, 'B'),
(17, 'Martin', 'Patrick', 'Gartenstraße 8a', '59909', 'Bestwig', '1995-04-14', 'Realschule', 4, 'B'),
(18, 'Mueller', 'Eva', 'Rabenweg 3', '59823', 'Arnsberg', '1994-02-07', 'Gymnasium', 4, 'B'),
(19, 'Kurp', 'Udo', '', '', '', '0000-00-00', '', 4, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `unterrichten`
--

CREATE TABLE IF NOT EXISTS `unterrichten` (
  `ID_Fach` bigint(20) NOT NULL,
  `ID_Klasse` bigint(20) NOT NULL,
  `ID_Lehrer` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_Fach`,`ID_Klasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fuer Tabelle `unterrichten`
--

INSERT INTO `unterrichten` (`ID_Fach`, `ID_Klasse`, `ID_Lehrer`) VALUES
(2, 2, 5),
(2, 3, 5),
(2, 4, 5),
(4, 2, 7),
(4, 3, 7),
(4, 4, 7),
(8, 2, 3),
(8, 3, 3),
(8, 4, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur fuer Tabelle `vorraussetzen`
--

CREATE TABLE IF NOT EXISTS `vorraussetzen` (
  `ID_Fach_hat_Vorraussetzung` bigint(20) NOT NULL,
  `ID_Fach_ist_Vorraussetzung` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_Fach_hat_Vorraussetzung`,`ID_Fach_ist_Vorraussetzung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fuer Tabelle `vorraussetzen`
--

INSERT INTO `vorraussetzen` (`ID_Fach_hat_Vorraussetzung`, `ID_Fach_ist_Vorraussetzung`) VALUES
(9, 1),
(15, 4);


-- Constraints der exportierten Tabellen
--

--
--
ALTER TABLE `Schueler`
  ADD CONSTRAINT `fk_ID_SK` FOREIGN KEY (`ID_Klasse`) REFERENCES `Klasse` (`ID_Klasse`);


ALTER TABLE `Klasse`
  ADD CONSTRAINT `fk_KS` FOREIGN KEY (`ID_Schueler`) REFERENCES `Schueler` (`ID_Schueler`),
  ADD CONSTRAINT `fk_KL` FOREIGN KEY (`ID_Lehrer`) REFERENCES `Lehrer` (`ID_Lehrer`);

  
ALTER TABLE `Ausuebung`
  ADD CONSTRAINT `fk_AL` FOREIGN KEY (`ID_Lehrer`) REFERENCES `Lehrer` (`ID_Lehrer`),
  ADD CONSTRAINT `fk_AA` FOREIGN KEY (`ID_Amt`) REFERENCES `Amt` (`ID_Amt`);
  
ALTER TABLE `Pruefung`
  ADD CONSTRAINT `fk_PL` FOREIGN KEY (`ID_Lehrer`) REFERENCES `Lehrer` (`ID_Lehrer`),
  ADD CONSTRAINT `fk_PF` FOREIGN KEY (`ID_Fach`) REFERENCES `Fach` (`ID_Fach`);
  
  
  
--
-- zusammengesetzte Keys
--
ALTER TABLE `ablegen`
  ADD CONSTRAINT `fk_ID_aP` FOREIGN KEY (`ID_Pruefung`) REFERENCES `Pruefung` (`ID_Pruefung`),
  ADD CONSTRAINT `fk_ID_aS` FOREIGN KEY (`ID_Schueler`) REFERENCES `Schueler` (`ID_Schueler`);
  
ALTER TABLE `vorraussetzen`
  ADD CONSTRAINT `fk_ID_vFh` FOREIGN KEY (`ID_Fach_hat_Vorraussetzung`) REFERENCES `Fach` (`ID_Fach`),
  ADD CONSTRAINT `fk_ID_vFi` FOREIGN KEY (`ID_Fach_ist_Vorraussetzung`) REFERENCES `Fach` (`ID_Fach`);
  

ALTER TABLE `lehrt`
  ADD CONSTRAINT `fk_ID_lL` FOREIGN KEY (`ID_Lehrer`) REFERENCES `Lehrer` (`ID_Lehrer`),
  ADD CONSTRAINT `fk_ID_lF` FOREIGN KEY (`ID_Fach`) REFERENCES `Fach` (`ID_Fach`);
  

ALTER TABLE `unterrichten`
  ADD CONSTRAINT `fk_ID_uL` FOREIGN KEY (`ID_Lehrer`) REFERENCES `Lehrer` (`ID_Lehrer`),
  ADD CONSTRAINT `fk_ID_uK` FOREIGN KEY (`ID_Klasse`) REFERENCES `Klasse`(`ID_Klasse`),
  ADD CONSTRAINT `fk_ID_uF` FOREIGN KEY (`ID_Fach`) REFERENCES `Fach` (`ID_Fach`);
  


