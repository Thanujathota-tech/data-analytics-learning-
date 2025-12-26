#Ask the user for a number, double it, and print the result.
num=int(input("Enter a num:"))
print("square :",num**2)

#Ask the user for two numbers, divide the first by the second, and print the integer part (floor division).
num1=int(input("Enter num1:"))
num2=int(input("Enter num2:"))
res=num1//num2
print("result :",res)

#Ask user for their name and age → print:
#"Hello <name>, next year you will be <age+1>"
name=input("Enter your name:")
age=int(input("Enter your age:"))
print(f"Hello {name},next year you will be {age+1}")

# Ask for a number → print True if it is greater than 100, else False 
num=int(input("Enter num:"))
print(num>100)

# Store two numbers → print sum, difference, product, quotient, remainder, and power
a=float(input("enter num1:"))
b=float(input("enter num2:"))
print(f"sum:{a+b},difference:{a-b},product:{a*b},quotient:{a/b},remainder:{a%b},power:{a**b}")

# Ask user for temperature in Celsius → convert to Fahrenheit using formula:
# F = C * 9/5 + 32
temp=int(input("Enter temp in celsius:"))
F=temp*9/5+32
print("Fahrenheit :",F)

# Ask user for a number → convert it to int, float, str → print all three types
user=input()
print(user,type(user))
print(int(user),type(int(user)))
print(float(user),type(float(user)))

# Ask user for a number → print whether it is even or odd (Hint: use % operator)
number=int(input())
if number%2==0:
    print(number,"EVEN")
else:
    print(number,"ODD")

# Ask user for two booleans → print the result of and, or, not operations
bool1 = input("Enter True or False for bool1: ")
bool2 = input("Enter True or False for bool2: ")
# Convert string to actual boolean
bool1 = True if bool1 == "True" else False
bool2 = True if bool2 == "True" else False

print("and operation:", bool1 and bool2)
print("or operation:", bool1 or bool2)
print("not operation for bool1:", not bool1)
print("not operation for bool2:", not bool2)


# Ask user for a number → increment it by 5 using += → print the result
x=int(input("Enter a num:"))
print("Before:",x)
x+=5
print("After(+=5):",x)