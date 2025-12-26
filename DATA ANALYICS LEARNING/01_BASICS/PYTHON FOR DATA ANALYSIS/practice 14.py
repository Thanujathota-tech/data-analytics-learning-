"""Challenge 1: Employee Performance Rating
Input:
Employee score (0–100)
Conditions:
≥ 90 → Excellent
≥ 75 → Very Good
≥ 60 → Good
≥ 40 → Needs Improvement
< 40 → Poor
📌 Task:
 Ask user for score and print performance rating."""

user=int(input("Enter your score (0-100):"))
if user>=90:
    print("EXCELLENT")
elif user>=75:
    print("VERY GOOD")
elif user>=60:
    print("GOOD")
elif user>=40:
    print("Needs Improvement")
else:
    print("POOR")


"""Challenge 2: E-commerce Order Status
Input:
Order amount
Payment status (paid / unpaid)
Conditions:
If amount ≥ 1000 AND payment is paid → Order Confirmed
If amount < 1000 AND payment is paid → Minimum order not met
If payment is unpaid → Payment Pending
📌 Task:
 Validate and print order status."""

order_amount=int(input("Enter your Order amount:"))
payment_status=input("Enter your payment status (paid/unpaid):").lower()
if order_amount>=1000 and payment_status=="paid":
    print("Your order is confirmed")
elif order_amount<1000 and payment_status=="paid":
    print("Minimum order not met")
else:
    print("Payment pending")


"""Challenge 3: Bank Withdrawal System
Input:
Account balance
Withdrawal amount
Conditions:
If withdrawal > balance → Insufficient Balance
If withdrawal ≤ balance → Transaction Successful
If withdrawal ≤ 0 → Invalid Amount
📌 Task:
 Print the correct message."""

Account_balance=int(input("Enter your Account balance:"))
Withdrawl_amount=int(input("Enter your Withdrawl Amount:"))
if Withdrawl_amount>Account_balance:
    print("INSUFFICIENT BALANCE")
elif Withdrawl_amount<=0:
    print("INVALID AMOUNT")
else:
    print("TRANSACTION SUCCESSFUL")

"""Challenge 4: Student Exam Eligibility (Advanced)
Input:
Attendance %
Internal marks
Conditions:
Attendance ≥ 75 AND marks ≥ 40 → Eligible
Attendance ≥ 75 AND marks < 40 → Not Eligible (Marks)
Attendance < 75 → Not Eligible (Attendance)
📌 Task:
 Print eligibility status."""

Attendance=int(input("Enter your Attendance %:"))
Internal_marks=int(input("Enter your Internal marks:"))
if Attendance>=75 and Internal_marks>=40:
    print("ELIGIBLE")
elif Attendance>=75 and Internal_marks<40:
    print("NOT ELIGIBLE (MARKS)")
else:
    print("NOT ELIGIBLE (ATTENDANCE)") 

"""Challenge 5: Data Quality Check (Analyst Logic)
Input:
Number
Conditions:
If number is negative → Invalid Data
If number is 0 → No Data
If number > 0 → Valid Data
📌 Task:
 Classify the data."""

num=int(input("Enter a number:"))
if num>0:
    print("VALID DATA")
elif num<0:
    print("INVALID DATA")
else:
    print("NO DATA")