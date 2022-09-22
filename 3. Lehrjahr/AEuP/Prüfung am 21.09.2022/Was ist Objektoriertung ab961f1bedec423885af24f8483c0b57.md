# Was ist Objektoriertung

# Was ist Objektoriertung

Objektorientierung ist etwas das uns normal in der Welt begegnet. Wir betrachten Dinge als Objekte, die in Beziehungen stehen, bestimmte Dinge tun können oder eigenschaften haben. Objektorientierte Programmierung ist eine Art der Programmierung die 3 Große Konzepte umschließt (und zusätzlich Polymorphie und Persistenz umfasst aber das nicht ganz so wichtig).

## Abstraktion

Unter Abstraktion versteht man die Beschränkung auf die im Sinne einer Anwendung wesentlichen Eigenschaften von Objekten. Bei der Abstraktion reduziert der Entwickler Merkmale einer Klasse auf die Wesentlichen Eigesnchaften. Bei der Abstraktion stellt der Programmierer sicher, dass das Objekt einen sinnvollen Namen erhält, alle relevanten Aspekte berücksichtigt sind und unwichtiges außen vor bleibt.

## Datenkapselung

Methoden und Variablen können in einer Klasse verschiedene Zustände haben Private, Public sind dabei die am meist verwendesten. Mit der Datenkapselung beschränkst du auf welche Informationen eines Objektes von außen zugegriffen werden können.

## Vererbung

Ein Programm besteht in der Regel aus mehreren Klassen. Diese Klassen können voneinander abgeleitet werden und bauen dadurch aufeinander auf.

### Beispiel

Basisklasse: Entity (Implementiert HP, Mana, AD, AP, Armor) Klasse: Spieler (Implementiert Laufen, Abilities, Inventar)

## Persistenz

Objektvariablen existieren, solange die Objekte vorhanden sind und „verfallen“ nicht nach Abarbeitung einer Methode.

## Polymorphie

Bei der Polymorphie handelt es sich um die Möglichkeit über den selben Funtkionsaufruf aus einer Menge von gleichnamigen Funktionen automatisch die für das jeweilig Objekt richtige aufzurufen.

# Wichtige Begriffe

## Klasse

Unter einer Klasse (auch Objekttyp genannt) versteht man in der objektorientierten Programmierung ein abstraktes Modell bzw. einen Bauplan für eine Reihe von ähnlichen Objekten.

## Objekt (Im Kontext der OOP)

Ein Objekt ein konkretes Exemplar („Instanz“), das gemäß einem bestimmten „Bauplan” (der Klasse) „gefertigt“ wurde.

## Funktion

Eine Funktion ist eine Zusammenfassung von Anweisungen. Durch die Verwendung von Funktionen wird Quellcode strukturiert und reduziert, da eine einmal geschriebene Funktion beliebig oft aufrufbar ist.

## Methode

- Im grundlegenden der Name einer Funktion innerhalb einer Klasse.

## Konstruktoren / Desktruktoren

- Spezielle Methoden, die beim Erzeugen bzw Zerstören von Objekten aufgerufen werden.
- Meistens daran zu erkennen das der Name der Methode der selbe Name der Klasse ist.
- Werden verwendet um beim erstellen eines Objektes Variablen auf Private Variablen zu mappen

# Quellen

- https://www.mnu.de/images/PDF/fachbereiche/informatik/ObjektorientierteModellierung.pdf
- https://de.wikipedia.org/wiki/Objektorientierte_Programmierung#Konzepte
- https://www.itwissen.info/Abstraktion-abstraction-OOP.html