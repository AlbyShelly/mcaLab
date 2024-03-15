age = {'alby': 20, 'antony': 21, 'akash':22, 'albert' : []}

print(age)

lis = list(age)

print(lis)
age['albert']= 100

lis = sorted(age)

print(lis)


print ('albert' in age)

for i,j in age.items():

	print(j)


sorted_age =( sorted(  age.items()))

d={}
for i,y in sorted_age:

	d= d.update(i,y)

print(dict)


print(sorted_age)
