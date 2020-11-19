print('This program tests if the sequence of positive numbers you input are unique')
print('Enter -1 to quit')
number = int(input('Enter the first number: '))
v = []
a = set()
while number!= -1:
    v.append(number)
    a.add(number)
    number = int(input('Next: '))   
if len(a)!=len(v):
    print('The sequence',v,'is NOT unique!')
else:
    print('The sequence',v,'is unique!')
    