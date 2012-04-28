#!/bin/csh

# Setzt den ssh-Server
set server = "example-url.de"
if ($1) then
  @ n = 1
  while ($n <= $3)
    # Benutzename zusammensetzen
    set user = `printf "$2%.2d" $n`
    # Passwort raus suchen
    set pass = `awk -F": " '/^'$user'/ { print $2 }' $1`
    # SSH-Verbindung herstellen
    expect $cwd/autossh "$server" "$user" "$pass"
    @ n = $n + 1
  end

else 
 echo "----------------------------------------------------------------------------"
 echo "Required: expect"
 echo "Usage: <passwort-datei> <user-präfix> <user-anzahl>"
 echo "In der Passwort-Datei müssen User und Passwort in Folgender relation stehen:"
 echo "user01 : <passwort>"
 echo "Dabei muss zwischen Doppelpunkt und Passwort ein Leerzeichen sein"
 echo "----------------------------------------------------------------------------"
endif
