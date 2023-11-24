color_list1 = ['Red', 'Green', 'Blue', 'White']

color_list2 = ['Green', 'Orange', 'Black', 'White']

result=[]

for i in color_list1:
	
	for j in color_list2:


		if i!=j:

			flagj=True
		else:
			flagj=False
			break

	if flagj==True:

		result = result + [i] 

print(result)
