listed = [20,30,40,10,15]

print("Devops Learning")
def min_num():
    a = listed[0]
    for num in listed:
        if (a>=num):
            a = num
    print("the minimum number is:",a)

min_num()