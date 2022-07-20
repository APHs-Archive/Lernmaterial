# SQL Variablen

Die Struktur für eine Variable sieht folgendermaßen aus:
```sql
DECLARE @VariableName DataType
```

Du kannst Daten in Variablen schreiben, indem du **SET**, **SELECT** verwendest oder sie **=** auf etwas setzt..

## Übung 1
Erstelle 3 Variablen mit sinnvollen Daten Typen, die Informationen über dich beinhalten. Benutze dafür die oben angesprochenen möglichkeiten Variablen zu belgen. Gebe die Variablen mit `PRINT` aus.

**Lösung**
```sql
SET @Name = 'Tom Scott'
SET @DateOfBirth = '2000-09-11'
SET @NumberOfFriends = 0
```

## Übung 2 
6 neue Schüler kommen in die Klasse die alle "Am Siedeweg 12, 59955 Winterberg" wohnen. Die Schüler Frank Peters, Markus Söder, Peter Müller, Albrecht Schmidt, Sven Meier und Alois Meier wohnen in der Klasse "A" haben alle am 22.12.2008 geburtstag, kommen in die Klasse "B" am 1.1.2009 und in die ID_KLASSE "3" am 1.1.2009 und Laborgruppe B. Use Variables

Trage die 6 neuen Schüler in die Tabelle **Schueler** ein.

| ID_Schueler | Nachname | Vorname | Straße | PLZ | Ort | Geburtsdatum | Abschluss | ID_Klasse | Laborgruppe 
| - |  - |  - |  - |  - |  - |  - |  - |  - |  - 
| A/I | Peters | Frank | Am Siedeweg | 59955 | Winterberg | 2009-11-11 | Hauptschule | 2 | A 
| A/I | Söder | Markus | Am Siedeweg | 59955 | Winterberg | 2008-12-9 | Hauptschule | 2 | A 
| A/I | Schmidt | Albrecht | Am Siedeweg | 59955 | Winterberg | 2009-2-1 | Hauptschule | 2 | A 
| A/I | Meier | Sven | Am Siedeweg | 59955 | Winterberg | 2008-11-1 | Hauptschule | 2 | B 

Nutze Variablen für oft wiederverwendete Informationen

```sql
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
```

## Übung 3
Die Fächer **'Deutsch' und 'PC und Automatisierung'** werden von **Jakob Volker** übernommen. Nutzt für die Fächer Variablen.

```sql
-- Change Deutsch
SET @LehrtFach = 'Deutsch';
SET @LehrtNachname = 'Jakob';
SET @LehrtVorname = 'Volker';

UPDATE `Lehrt` SET `ID_Lehrer` = (SELECT `ID_Lehrer` FROM `Lehrer` WHERE `Nachname` = @LehrtNachname AND `Vorname` = @LehrtVorname) WHERE `ID_Fach` = (SELECT `ID_Fach` FROM `Fach` WHERE `Bezeichnung` = @LehrtFach);

-- Change PC und Automatisierung
SET @LehrtFach = 'PC und Automatisierungstechnik';
SET @LehrtNachname = 'Jakob';
SET @LehrtVorname = 'Volker';


UPDATE `Lehrt` SET `ID_Lehrer` = (SELECT `ID_Lehrer` FROM `Lehrer` WHERE `Nachname` = @LehrtNachname AND `Vorname` = @LehrtVorname) WHERE `ID_Fach` = (SELECT `ID_Fach` FROM `Fach` WHERE `Bezeichnung` = @LehrtFach);
```

## Übung 4
Nach einer Lehrer Konferenz kann Herr Volker das Fach **PC und Automatisierungstechnik** doch nicht übernehmen und wird wieder von **Paffler Markus** übernommen.

```sql
SET @LehrtFach = 'PC und Automatisierungstechnik';
SET @LehrtNachname = 'Paffler';
SET @LehrtVorname = 'Markus';


UPDATE `Lehrt` SET `ID_Lehrer` = (SELECT `ID_Lehrer` FROM `Lehrer` WHERE `Nachname` = @LehrtNachname AND `Vorname` = @LehrtVorname) WHERE `ID_Fach` = (SELECT `ID_Fach` FROM `Fach` WHERE `Bezeichnung` = @LehrtFach);
```

## Übung 5
Wegen einem Kommunikationsfehler wurde der Schule die Falsche Postleitzahl für die neuen Schüler mitgeteilt. Ändere die Postleitzahl der neuen Schüler auf 55599.

```sql
-- Overwrite @SchuelerPlz to '55599'
SET @SchuelerPlz = '55599';

-- Update entrys
UPDATE `Schueler` SET `PLZ` = @SchuelerPlz WHERE `Schueler`.`Nachname` = 'Peters' AND `Schueler`.`Vorname` = 'Frank';
UPDATE `Schueler` SET `PLZ` = @SchuelerPlz WHERE `Schueler`.`Nachname` = 'Söder' AND `Schueler`.`Vorname` = 'Markus';
UPDATE `Schueler` SET `PLZ` = @SchuelerPlz WHERE `Schueler`.`Nachname` = 'Schmidt' AND `Schueler`.`Vorname` = 'Albrecht';
UPDATE `Schueler` SET `PLZ` = @SchuelerPlz WHERE `Schueler`.`Nachname` = 'Meier' AND `Schueler`.`Vorname` = 'Sven';
```