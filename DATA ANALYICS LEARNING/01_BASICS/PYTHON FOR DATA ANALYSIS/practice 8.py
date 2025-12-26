"""Filter valid names
Given: ["Ravi", "Anu123", "Meena", "Raj@", "Kiran"]
👉 Print only valid names (alphabets only)."""

li1=["Ravi", "Anu123", "Meena", "Raj@", "Kiran"]
valid_names=[]
print("Given :",li1)
for i in li1:
    if i.isalpha():
        valid_names.append(i)
print("valid names:",valid_names)

"""Email validation
Given:
["abc@gmail.com", "xyzgmail.com", "test@company", "user@company.com"]
👉 Print valid emails (must contain @ and end with .com)."""

li2=["abc@gmail.com", "xyzgmail.com", "test@company", "user@company.com"]
valid_emails=[] 
print("Given :",li2)
for i in li2:
    if  ".com" in i:
        if "@" in i:
            valid_emails.append(i)
print("valid email:",valid_emails)        
        
"""Count words
Given a sentence:
"Python is very powerful for data analysis"
👉 Count number of words."""

str1="Python is very powerful for data analysis"
print("Given :",str1)
li3=str1.split()
print("number of words Count:",len(li3))
