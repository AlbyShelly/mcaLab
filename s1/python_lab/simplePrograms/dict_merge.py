#Merge two dictionaries

dict1 = {'a':1, 'b': 2}
dict2 = {'b':3, 'c': 4}

merged_dict = dict1.copy() 

merged_dict.update(dict2)

print("merged dictionary using update() :" ,merged_dict) 


#mergin dict using dict unpacking

merged_dict = { **dict1, **dict2}

print("The merged dict using dict unpacking ",merged_dict)
