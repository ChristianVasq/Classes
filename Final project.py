import random

months_days={"January":31,"February":28,"March":31 ,"April":30,"May":31, "June":30 ,"July":31,"August":31,"September":30,
       "October":31,"November":30,"December":31}

fruittypes={"banana":500,"mango":1000,"kiwi":50, "pineapple":37, "grapes":9000}

fruitselection=input("Select a fruit among banana, mango, pineapple, kiwi, and grapes: ")
monthselection=input("select a month: ")

varieties=[]
while(len(varieties)<months_days[monthselection]):
    fruit = random.randint(1,fruittypes[fruitselection])

    if(fruit not in varieties):
        varieties.append(fruit)

print("Choosen list of varieties of",fruitselection,"for you.")
for i in range(0,len(varieties)):
    print(monthselection+"".ljust(5),i+1,":",varieties[i])