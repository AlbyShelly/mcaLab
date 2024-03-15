startyear=input("Enter the first year:")
endyear=input("Enter the end year:")

print("The list of years are")

for i in range(startyear,endyear):

	if(i%400==0):
		print(i)
	elif(i%4==0) and (i%100!=0):

		print(i)


