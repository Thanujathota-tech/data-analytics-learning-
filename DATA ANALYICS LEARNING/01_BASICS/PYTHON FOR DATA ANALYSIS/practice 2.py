#Create a list and use append(), insert(), extend() on it.
li=list(map(int,input().split(',')))
print(li)
li.append(56)
print("After appending the list:",li)
li.extend([1,4,7])
print("After Extending the list:",li)
li.insert(4,99)
print("After insert an element into the list:",li)
#Remove the item "banana" using remove().
li2=input().split(',')
print(li2)
if "banana" in li2:
    li2.remove("banana")
print(li2)
#Remove the last two items using pop() two times.
li3=[1,8.9,"hello",78,"hi"]
print(li3)
li3.pop()
li3.pop()
print(li3)
#Sort a list of numbers in ascending and descending order.
li4=list(map(int,input().split(',')))
print(li4)
li4.sort()
print("after sorting in ascending order:",li4)
li4.sort(reverse=True)
print("after sorting in descending order:",li4)        
#Reverse a list without sorting.
li5=[1,5,7,9,'apple',7.8,False]
print(li5)
print(li5[::-1])
#Find the index of "Hyderabad" in a city list.
li6=["Guntur",56,8.9,"Hyderabad",78,"Vijayawada"]
print(li6)
if "Hyderabad" in li6:
    print(li6.index("Hyderabad"))
#Count how many "blue" colors are in a list.
li7=["red","gold","blue","orange","blue","pink","black","blue","red","yellow","blue"]
print(li7)
print(li7.count("blue"))
#Clear a list using clear() and print it.
li8=[1,4.5,"hello",True,54]
print(li8)
li8.clear()
print("After using clear()",li8)
#Copy a list using copy() and modify the copy.
li9=[2,4,8,3,6,9,4,8,12]
li10=li9.copy()
print("list 9:",li9)
print("list 10",li10)
li10.insert(4,"hello world")
print(li10)
#Merge two lists into one list using extend().
li11=[12,13,14]
li12=[15,16,17]
print(li11)
print(li12)
li11.extend(li12)
print(li11)
