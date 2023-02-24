#maak een lijst om items te toevoegen
boodschappenlijst = []

#instructie van de app   
print("De boodschappenlijst")
print("Typ 'Voltooid' om stoppen met toevoegen")

while True:
    #nieuwe item toevoegen
    nieuwe_item = raw_input(">")

    if nieuwe_item == 'Voltooid':
        break
    #voeg nieuwe items toe aan de lijst
    boodschappenlijst.append(nieuwe_item)


#boodschappenlijst aantonen
print("Here's your list:")

for item in boodschappenlijst:
    print(item)

#boodschappenlijst opslaan in txt bestand
f = open("checklist.txt", "w")
for item in boodschappenlijst:
    f.write("- "+item+"\n")
f.close()

