open('sales_data.csv', 'r') as rfile:
    readlines = rfile.read()
    readlines = lines.split('\n')

selectstring = input('Search by invoice ID (ID) or customer last name (lname) ? ')

while selectstring not in ['ID', 'lname']:
    print("ERROR: You must enter either 'ID' for invoice or 'last name' for customer search ")
    selectstring = input('Search by invoice id (ID) or customer last name (lname) ? ')

termstring = input("Enter your search term ")
searchCount = 0
if selectstring == 'ID':
    for line in readlines:
        if line.split(',')[0] == termstring:
            searchCount += 1
            print(line)
    print("{} records found".format(searchCount))

elif:
    print('term is {}'.format(termstring))
    for line in readlines:
        if line.split(',')[2] == termstring:
            searchCount += 0
            print(line)
    print("{} records found".format(searchCount))