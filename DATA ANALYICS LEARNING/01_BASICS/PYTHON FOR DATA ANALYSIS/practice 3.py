#Print numbers from 1 to 10 using range()
for i in range(1,11):
    print(i)
#Print all elements of a list [10, 20, 30, 40]
li1=[10,20,30,40]
for i in li1:
    print(i)
#Print the square of each number in [2, 4, 6, 8]
li2=[2,4,6,8]
for i in li2:
    print(i*i)
#Print only even numbers from [1,2,3,4,5,6,7,8,9,10]
li3=[1,2,3,4,5,6,7,8,9,10]
for i in li3:
    if i%2==0:
        print(i)
#Count how many numbers are greater than 50 in [10, 60, 45, 80, 30, 90]
li4 = [10, 60, 45, 80, 30, 90]
count = 0
for i in li4:
    if i > 50:
        count += 1
print("Count:", count)
