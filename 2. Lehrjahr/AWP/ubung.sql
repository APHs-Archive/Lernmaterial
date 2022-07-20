USE `buch_schule`;

-- Declare Variables
SET @SchuelerStraße = 'Am Siedeweg';
SET @SchuelerPlz = '59955';
SET @SchuelerOrt = 'Winterberg';

-- Peters Frank
INSERT INTO `Schueler` (`ID_Schueler`, `Nachname`, `Vorname`, `Straße`, `PLZ`, `Ort`, `Geburtsdatum`, `Abschluss`, `ID_Klasse`, `Laborgruppe`)
VALUES (NULL, 'Peters', 'Frank', @SchuelerStraße, @SchuelerPlz, @SchuelerOrt, '2009-11-11', 'Hauptschule', 2, 'A');

-- Söder Markus
INSERT INTO `Schueler` (`ID_Schueler`, `Nachname`, `Vorname`, `Straße`, `PLZ`, `Ort`, `Geburtsdatum`, `Abschluss`, `ID_Klasse`, `Laborgruppe`)
VALUES (NULL, 'Söder', 'Markus', @SchuelerStraße, @SchuelerPlz, @SchuelerOrt, '2008-12-9', 'Hauptschule', 2, 'A');

-- Schmidt Albrecht
INSERT INTO `Schueler` (`ID_Schueler`, `Nachname`, `Vorname`, `Straße`, `PLZ`, `Ort`, `Geburtsdatum`, `Abschluss`, `ID_Klasse`, `Laborgruppe`)
VALUES (NULL, 'Schmidt', 'Albrecht', @SchuelerStraße, @SchuelerPlz, @SchuelerOrt, '2009-2-1', 'Hauptschule', 2, 'A');

-- Meier Sven
INSERT INTO `Schueler` (`ID_Schueler`, `Nachname`, `Vorname`, `Straße`, `PLZ`, `Ort`, `Geburtsdatum`, `Abschluss`, `ID_Klasse`, `Laborgruppe`)
VALUES (NULL, 'Meier', 'Sven', @SchuelerStraße, @SchuelerPlz, @SchuelerOrt, '2008-11-1', 'Hauptschule', 2, 'B');

-- Using Tables lehrt, Lehrer and Fach. Change ID_Lehrer corresponding to the Fach with the name "Latein" to the ID of the Lehrer with the name "Jakob Volker".
USE `buch_schule`;


-- Declare Variables
SET @LehrtFach = 'Deutsch';
SET @LehrtLehrer = 'Volker';



-- Change ID_Lehrer corresponding to the Fach with the name "Latein" to the ID of the Lehrer with the name "Jakob Volker".
UPDATE `Lehrt` SET `ID_Lehrer` = (SELECT `ID_Lehrer` FROM `Lehrer` WHERE `Nachname` = @LehrtLehrer) WHERE `ID_Fach` = (SELECT `ID_Fach` FROM `Fach` WHERE `Bezeichnung` = @LehrtFach);
