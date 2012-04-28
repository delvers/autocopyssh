#!/bin/csh
# setzt das verzeichnis aus dem die Dateien kopiert werden
set fromdir = "/home/tocopy"
# erschafft das Verzeichnis in das kopiert werden soll
mkdir -p -v $home/examples/test
# Kopiert test Datei
cp $fromdir/?/test.txt $home/examples/test

