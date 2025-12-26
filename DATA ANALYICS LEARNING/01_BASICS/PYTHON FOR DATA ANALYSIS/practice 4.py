#Create a new list containing double of each number in [5, 10, 15]
li=[5, 10, 15]
li1=[]
print(li)
for i in li:
    li1.append(i+i)
print(li1)
#Convert a list of Celsius values [25, 30, 35] into Fahrenheit list
celsius=[25, 30, 35]
fahrenheit=[]
for i in celsius:
    f=i*9/5+32
    fahrenheit.append(f)
print("Celsius:",celsius)
print("After convering into fahrenheit:",fahrenheit)
#From [100, 200, 300, 400], create a list with 10% increased values
li2=[100, 200, 300, 400]
li3=[]
print(li2)
for i in li2:
    ten=(10/100)*i
    increase=i+ten
    li3.append(increase)
print("After 10% ncrease:",li3)
#Given a list of marks [45, 67, 89, 33, 90], count pass (>=40)
marks=[45, 67, 89, 33, 90]
count=0
print(marks)
for i in marks:
    if i>=40:
        count+=1
print("count of pass (>=40) :",count)
#From [1,2,3,4,5,6,7,8], create a list of odd numbers only
li4=[1,2,3,4,5,6,7,8]
li5=[]
print(li4)
for i in li4:
    if i%2!=0:
        li5.append(i)
print("odd numbers list:",li5)
