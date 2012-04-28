##############README###################
Dieses Skript dient zum automatisierten 
einloggen und Ausführen des Skriptes 
2.sh in dem die zu kopierenden Dateien
augeführt sind.
Zum ausführen des Skriptes 1.sh wird
das Programm expect und die csh-Shell
benötigt.
Außerdem ist darauf zu achten das der
Benutzername und das dazugehörige Passwort
im folgendem Verhältnis steht:
user01 : <passwort>
Es muss dabei ein Leerzeichen zwischen 
Doppelpunkt und Passwort sein.
In diesem Fall wäre user der userpräfix.
Der Server kann mit hilfe der Variablen 
server im Skript geändert werden

Beispiel Aufruf:
./1.sh "./passwort.txt" user 9

Dieser Aufruf würde für die User 
user01, user02, ... user09 das Skript 2.sh 
ausführen.

PS: Das Skript autossh dient zur 
    SSH-Kontaktaufnahme
