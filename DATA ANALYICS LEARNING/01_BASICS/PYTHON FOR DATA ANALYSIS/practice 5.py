"""Given sales data [12000, 15000, 18000, 9000, 20000]
 → Print total sales using loop"""
sales_data =[12000, 15000, 18000, 9000, 20000]
total=0
print("sales_data",sales_data)
for i in sales_data:
    total+=i
print("Total sales:",total)

"""Given temperatures [30, 32, 28, 35, 33]
 → Print temperatures above average"""
temperatures = [30, 32, 28, 35, 33]
total = 0
print("temperatures",temperatures )
for i in temperatures:
    total += i
avg = total / len(temperatures)
print("Average:", avg)
print("Temperatures above average:")
for i in temperatures:
    if i > avg:
        print(i)

"""Given ages [12, 18, 25, 16, 30, 40]
 → Count adults (age ≥ 18)"""
ages= [12, 18, 25, 16, 30, 40]
count=0
print("ages:",ages)
for i in ages:
    if i>=18:
        count+=1
print("Count of adults (age ≥ 18):",count)

"""Given prices [100, 250, 400, 150]
 → Apply 18% GST and store updated prices in a new list"""
prices= [100, 250, 400, 150]
li=[]
print("prices:",prices)
for i in prices:
    GST=i*(18/100)
    res=i+GST
    li.append(res)
print("After 18% GST :",li)
    
"""Given salaries [20000, 30000, 25000, 40000]
 → Print salaries above average salary"""
salaries = [20000, 30000, 25000, 40000]
total = 0
print("salaries",salaries)
for i in salaries:
    total += i
avg = total / len(salaries)
print("Average salary:", avg)
print("Salaries above average:")
for i in salaries:
    if i > avg:
        print(i)

