"""Clean product names
Given: ["  laptop ", "MOBILE", " Tablet", "smArt Watch "]
👉 Output: Laptop,Mobile,Tablet,Smart Watch"""

li1=["  laptop ", "MOBILE", " Tablet", "smArt Watch "]
li2=[]
for i in li1:
    clean1=i.strip()
    clean2=clean1.title()
    li2.append(clean2)
print(li1)
print(",".join(li2))

"""Find long names
Given: ["Hyderabad", "Goa", "Bangalore", "Pune", "Chennai"]
👉 Print names with length > 6."""

li3=["Hyderabad", "Goa", "Bangalore", "Pune", "Chennai"]
li4=[]
for i in li3:
    if len(i)>6:
        li4.append(i)
print(li3)
print("names with length > 6:",li4)

"""Password strength check
Given: ["abc123", "password", "Admin@123", "12345"]
👉 Print strong passwords (must contain letters and numbers)."""

li5 = ["abc123", "password", "Admin@123", "12345"]
strong = []
for pwd in li5:
    has_letter = False
    has_digit = False
    for ch in pwd:
        if ch.isalpha():
            has_letter = True
        if ch.isdigit():
            has_digit = True

    if has_letter and has_digit:
        strong.append(pwd)

print("Strong passwords:", strong)


str1 = "dataanalysis"
checked = []

for ch in str1:
    if ch not in checked:
        print(ch, ":", str1.count(ch))
        checked.append(ch)


