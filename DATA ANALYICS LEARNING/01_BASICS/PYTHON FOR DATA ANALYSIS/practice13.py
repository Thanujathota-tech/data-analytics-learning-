"""Temperature category
Ask user for temperature:
< 10 → Cold
10–25 → Moderate
25 → Hot"""

temp=float(input("Enter Temperature:"))
if temp<10:
    print("COLD")
elif temp<25:
    print("MODERATE")
elif temp>=25:
    print("HOT")

"""Attendance eligibility
Ask user for attendance %:
≥ 75 → Eligible for exam
else → Not eligible"""

Attendance=float(input("Enter your attendance % :"))
if Attendance>=75:
    print("You are Eligible for exam ")
else:
    print("You are not eligible for exam")


"""Profit / Loss
Ask user for:
cost price
selling price
Print:
Profit
Loss
No profit no loss"""

selling_price = int(input("Enter Selling Price of an item:"))
cost_price = int(input("Enter Cost Price of an item:"))

if selling_price > cost_price:
    print(selling_price - cost_price, "PROFIT")
elif selling_price < cost_price:
    print(cost_price - selling_price, "LOSS")
else:
    print("NO PROFIT NO LOSS")


"""Traffic signal
Ask user for signal color:
red → Stop
yellow → Ready
green → Go
else → Invalid signal"""

Signal_Color=input("Enter Color of the Traffic Signal:").lower()
if Signal_Color=="red":
    print("STOP")
elif Signal_Color=="yellow":
    print("READY")
elif Signal_Color=="green":
    print("GO")
else:
    print("Invalid signal")
