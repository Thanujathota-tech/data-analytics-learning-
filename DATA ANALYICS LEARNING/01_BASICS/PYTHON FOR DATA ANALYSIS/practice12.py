"""Salary tax slab
Ask user for salary:
≤ 2.5L → No Tax
2.5L–5L → 5%
5L–10L → 20%
10L → 30%"""

salary=float(input("Enter your Salary:"))
if salary<=250000.0:
    print("NO TAX")
elif salary<=500000.0:
    print("plus 5% TAX :",salary+(salary*(5/100)))
elif salary<=1000000.0:
    print("plus 20% TAX :",salary+(salary*(20/100)))
else:
    print("plus 30% TAX :",salary+(salary*(30/100)))
    
"""Login validation
Ask user:
username
password
Conditions:
if username == "admin" AND password == "admin123" → Login success
else → Invalid login"""

username=input("Enter your Username:")
password=input("Enter your Password:")
if username=="admin" and password=="admin123":
    print("Login success")
else:
    print("Invalid login")

"""Discount system
Ask user for purchase amount:
≥ 5000 → 20% discount
≥ 3000 → 10% discount
≥ 1000 → 5% discount
else → No discount"""

purchase_amount=float(input("Enter your Purchase amount:"))
if purchase_amount>=5000.0:
    print("plus 20% Discount :",purchase_amount-(purchase_amount*(20/100)))
elif purchase_amount>=3000.0:
    print("plus 10% TAX :",purchase_amount-(purchase_amount*(10/100)))
elif purchase_amount>=1000.0:
    print("plus 5% TAX :",purchase_amount-(purchase_amount*(5/100)))
else:
    print("NO DISCOUNT")


