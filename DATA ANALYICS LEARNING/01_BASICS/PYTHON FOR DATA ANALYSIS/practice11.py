"""Ask user for marks:
≥ 90 → Grade A
≥ 75 → Grade B
≥ 60 → Grade C
else → Fail"""

marks=int(input("Enter your marks:"))
if marks>=90:
    print("GRADE A")
elif marks>=75:
    print("GRADE B")
elif marks>=60:
    print("GRADE C")
else:
    print("Fail")
    
"""Age category
Ask user for age:
< 13 → Child
13–19 → Teen
20–59 → Adult
≥ 60 → Senior"""

age=int(input("Enter your age:"))
if age<13:
    print("Child")
elif age<=19:
    print("Teen")
elif age<=59:
    print("Adult")
else:
    print("Senior")

"""Even / Odd / Zero
Ask user for a number:
if 0 → Zero
else if even → Even
else → Odd"""

number=int(input("Enter a Number:"))
if number==0:
    print("Zero")
elif number%2==0 :
    print("EVEN")
else:
    print("ODD")


