#!bin/bash

#Telefoon nummerlijst
menu=0
nummerlijst="nummerlijst.txt"
landcode="(+31)"

#keuzemenu optie loop
while [ $menu -ne 1 ]
do
echo Keuzemenu
printf "1.Nummer toevoegen\n2.Lijst bekijken\n3.Voltooid\n"
printf "=================\n"
printf "Keuzemenu: "
read keuze
printf "=================\n"

#keuze 1: nummertoevoegen
if [ "$keuze" -eq 1 ]
then
printf "Voornaam: "
read voornaam
printf "Achternaam: "
read achternaam
printf "Telefoonnummer: "
read telefoonnummer
printf "=================\n"
echo "$voornaam $achternaam: $landcode$telefoonnummer" >> $nummerlijst

#keuze 2: sub keuzemenu
elif [ "$keuze" -eq 2 ]
then
printf "Keuzemenu\n 1.Bekijk alles\n 2.Zoek een nummer\n"
printf "=================\n"
printf "Keuze: "
read optie
printf "=================\n"

#sub keuzemenu:1 alle nummer bekijken
if [ "$optie" -eq 1 ]
then
echo Telefoonnummers:
cat $nummerlijst
printf "=================\n"
#sub keuzemenu:2 nummer opzoeken
else
printf "Typ de naam in: "
read optie
printf "=================\n"
echo Telefoonnummers:
grep $optie $nummerlijst
printf "=================\n"
fi

#keuze 3: app sluiten
elif [ "$keuze" -eq 3 ]
then
menu=1
printf "Tot zien!\n"
printf "================="
else
printf "Geen dergelijke opties. Selecteer opnieuw\n"
printf "=================\n"
fi
done