**Jumping Game**
Stell dir ein einfaches Spiel vor, bei dem der Spieler zwischen einer
Reihe von hölzernen Pfosten auf einem See hin und her hüpft. Auf jedem 
Pfosten steht eine Zahl, die beschreibt wohin der Spieler hüpfen soll:
Die Zahl selbst bestimmt dabei die Anzahl der Pfosten die weiter 
gesprungen werden soll, das Vorzeichen die Richtung. Bei einer negativen
Zahl wird nach links gesprungen, bei einer positiven nach rechts.

Da die Anzahl der Pfosten begrenzt ist, kann es passieren, dass der 
Spieler ins Wasser fällt. Das passiert immer dann, wenn es keine Pfosten
mehr in der Richtung gibt, in die er hüpfen soll.


**Die Aufgabe**
Du findest anbei die Datei *"games.txt"*. Jede Zeile darin entspricht 
den Pfosten in jeweils einem Spiel. Die Zahlen auf den Pfosten sind hier
Kommasepariert dargestellt.

Schreibe ein objektorientiertes Ruby Programm, welches für jede Zeile
angibt, ob der Spieler ins Wasser fällt oder nicht. Es reicht eine
Konsolenausgabe des jeweiligen Ergebnisses.

Eine Ausgabe könnte etwa so aussehen:

```
The player stays dry.
The player gets wet!
The player gets wet!
The player stays dry.
The player stays dry.
``` 

Gebe zu deinem Programm eine kurze Erklärung ab, wie du das Problem
angehst und gehe dabei auch auf die Speicher- und Laufzeitkomplexität
deines Lösungsansatzes ein. 