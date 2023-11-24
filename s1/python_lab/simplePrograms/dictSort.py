

myDict = { 'one' :1, 'three' : 3, 'five' : 5, 'two' :2, 'four' : 4}

print(myDict)

#key_list = list(myDict)
key_list_sorted = sorted(myDict)

new_dict = {}
#print(key_list)
print(key_list_sorted)

for i in key_list_sorted:

	value = myDict[i]

	new_dict[value] = i



print(new_dict)	


new_dict_rev = {}

key_list_dec = sorted(myDict, reverse=True)

print(key_list_dec)

for i in key_list_dec:

	value = myDict[i]
	
	new_dict_rev[value] = i

print(new_dict_rev)
