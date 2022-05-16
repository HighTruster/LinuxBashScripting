#!/bin/bash
# Beschreibung: Vergleich von Zahlen eingabe als Parameter
# Autor:        Martin Künzler
# Version:      1.0
# Datum:        2022-05-16
###################################################################################################################################################
eingabe=${1}
rest=$(($eingabe%2))
if [ $rest == 0 ]
then 
echo "gerade"
else
echo "ungerader"
fi
