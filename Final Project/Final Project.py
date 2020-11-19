def main():
    import random
    import calendar
   # import graphics as g
    
    #Store the month selection with days included
    MonthWdays = {"1":31, "2":29, "3":31, "4":30, "5":31, "6":30, "7":31,
                  "8":31, "9":30, "10":31, "11":30,"12":31}


    #Statement declaring fruit types
    FruitTypes = {"cherry":1200 , "orange": 400, "peach": 300}

 
    FruitChoice = input("Which fruit do you prefer cherry, orange, or peach?: ")
    if FruitChoice not in FruitTypes:
        print("Oops,", FruitChoice  , "not a choice, try again")
        main()
    
    MonthChoice = input("Select a month from the following list; 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12: ")
    if MonthChoice not in MonthWdays:
        print("Oops,", MonthChoice , "not a choice, try again")
        main()
         

    FruitChoices=[]
    while(len(FruitChoices) < MonthWdays[MonthChoice]):
        Fruits = random.randrange(1,FruitTypes[FruitChoice])
        if Fruits not in FruitChoices :
            FruitChoices.append(Fruits)
            
   # def splitseq(seq, size):
  #      newseq = []
  #      splitsize = 1.0/30*len(seq)
  #      for i in range(i):
  #              newseq.append(seq[int(round(i*splitsize)):int(round((i+1)*splitsize))])
   #     return newseq

    print("The following is a list of", FruitChoice ,"for the whole month of", MonthChoice,"for you.")
    for mon in range(0,len(FruitChoices)):
        print(MonthChoice+"",mon+1,",","-",FruitChoices[mon])
        
    year = int(input("Type any year: " ))
   
    print (calendar.calendar(year))
    

main()