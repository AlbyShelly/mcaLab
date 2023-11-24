str1 = input("Enter your first string: ")

str2 = input("Enter your second string: ")

if len(str1) > 0 and len(str2) >0:

	str3= str2[0] + str1[1:] + " " + str1[0] + str2[1:] 

	#str3= str3[-1] + str3[1:len(str3)] +str3[0]

	print(str3)

else:

	print("Both strings should have at least one character length")
