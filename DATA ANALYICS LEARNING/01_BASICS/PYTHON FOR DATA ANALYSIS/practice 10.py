str1="dataanalysis"
checked=[]
for i in str1:
    if i not in checked:
        checked.append(i)
        print(i,":",str1.count(i))
        
