"""Clean city names
Given:
[" delhi ", "MUMBAI", " chennai ", "HyDerAbAd"]
👉 Remove spaces and convert all names to title case."""

li=[" delhi ", "MUMBAI", " chennai ", "HyDerAbAd"]
city=[]
print("Given =",li)
for i in li:
    clean1=i.strip()
    clean2=clean1.title()
    city.append(clean2)
print(city)    
print(",".join(city))

"""Count vowels
Given a string:
"Data Analyst"
👉 Count how many vowels are present."""

str1="Data Analyst"
li2=["a","e","i","o","u","A","E","I","O","U"]
vowels=[]
for i in str1:
    if i in li2:
        vowels.append(i)   
print("GIVEN STRING:",str1)
print("Total count of vowels in given string :",len(vowels))

"""Extract initials
Given a name:
"thanuja thota"
👉 Print initials like:
T.T"""

name="thanuja thota"
li3=name.split()
print(li3[0][0].upper(),".",li3[1][0].upper())


