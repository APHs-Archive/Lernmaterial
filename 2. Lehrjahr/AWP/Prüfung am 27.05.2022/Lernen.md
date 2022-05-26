# AWP Prüfung am 27.05.2022
## Stoff
* ACID Kriterien
* Transaktionen
* SELECT
* JOIN
* GROUP BY


# ACID Kriterien
**ACID** (deutsch auch **AKID**) beschreibt häufig erwünschte Eigenschaften von Transaktionen in Datenbankmanagementsystemen (DBMS) und verteilten Systemen.

**ACID:**
* **A**tomicity (Atomarität)
* **c**consistency (Konsistenz)
* **I**solation (Isolation )
* **D**urability (Dauerhaftigkeit)

## Bedeutung
**Atomarität**

Eine Transaktion ist eine Folge von Datenbank-Operationen, die entweder ganz oder gar nicht ausgeführt wird (Alles-oder-nichts-Eigenschaft).[2] Praktisch werden die einzelnen Datenbankanweisungen, aus denen sich die Transaktion zusammensetzt, natürlich nacheinander ausgeführt, aber global erst dann „für gültig erklärt und in Kraft gesetzt“, wenn sie erfolgreich vollständig abgeschlossen sind. Sollte sich jedoch während der Transaktion herausstellen, dass diese nicht vollständig abgeschlossen werden kann, wird der ursprüngliche Bereich als gültig erklärt und ein Rollback durchgeführt, d. h., alle bis dahin ausgeführten Anweisungen wieder rückgängig gemacht, sofern notwendig – oder einfach der zwischenzeitlich für die Änderungen genutzte Speicherbereich wieder freigegeben und die Gültigkeit beim Bisherigen belassen.

**Konsistenzerhaltung**

Konsistenz heißt, dass eine Transaktion nach Beendigung einen konsistenten Datenbankzustand hinterlässt, falls die Datenbank davor auch konsistent war. Dies beinhaltet, dass alle im Datenbankschema definierten Integritätsbedingungen vor dem Abschluss der Transaktion überprüft werden. Ist das nicht möglich, oder tritt ein Fehler auf, wird die gesamte Transaktion rückgängig gemacht.

**Isolation**

Durch das Prinzip der Isolation wird verhindert/eingeschränkt, dass sich nebenläufig in Ausführung befindliche Transaktionen gegenseitig beeinflussen.

**Dauerhaftigkeit**

Der Begriff Dauerhaftigkeit sagt aus, dass Daten nach dem erfolgreichen Abschluss einer Transaktion garantiert dauerhaft in der Datenbank gespeichert sind.

# Transactions
Als Transaktion bezeichnet man eine feste Folge von Anweisungen, die alls eine gescjlossene einheit betrachtet wird.

## Beispiel
Die Aussleihe eines resevierten E-Scooters aus einem Scooter-Fuhrpark:
```
begin of transaction
    Hole KundenID und Scooter-Kennung aus "Reservierung"
    Schreibe KundenID in das dazugehörige Feld "ausgeliehen von"
    schreibe "19. Januar 2022" in das dazugehörige Feld "Rückgabe am"
end of transaction
```

## Probleme
Bei der Durchführung von Transaktionen kann es zu Problemen kommen. Insbesonder wenn
* eine Transaktion aufgrund iner anderen Transaktionen nicht ausgeführt werden kann (**Blockeriung**)
* eine erste Transaktion durch eine zweite durch die erste blockiert wird (**Deadlock = Verklemmung**)
* eine Transaktion, die in mehrere Teiltransaktionen auf verschiedenen Datenbanken ausgeführt wird, zurückgesetzt werden muss und dieses das Zurücksetzen einer anderen Transaktionen notwendig macht (**Ketten von Zurücksetzungen**)

# SELECT
The SELECT statement is used to select data from a database.

## SELECT Syntax
```sql
SELECT column1, column2, ...
FROM table_name;
```

## SQL Aliases
```sql
SELECT column_name AS alias_name
FROM table_name;
```
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

## WHERE Syntax
```sql
SELECT * FROM Customers
WHERE CustomerID=1;
```
The `WHERE` clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.


## Aggregatfunktionen
```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```
The `COUNT()` function returns the number of rows that matches a specified criterion.

<br>

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```
The `AVG()` function returns the average value of a numeric column.

<br>

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```
The `SUM()` function returns the total sum of a numeric column. 

<br>

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```
The `MIN()` function returns the smallest value of the selected column.

<br>

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```
The `MAX()` function returns the largest value of the selected column.

# JOIN
## JOIN
```sql
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID;
```
A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them.

## INNER JOIN
```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```
The `INNER JOIN` keyword selects records that have matching values in both tables.

<img src="./assets/img_innerjoin.gif">


## LEFT JOIN
```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```
The `LEFT JOIN` keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

<img src="./assets/img_leftjoin.gif">

## RIGHT JOIN
```sql
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```
The `RIGHT JOIN` keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

<img src="./assets/img_rightjoin.gif">