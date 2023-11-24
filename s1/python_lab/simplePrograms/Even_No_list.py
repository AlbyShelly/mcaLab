#Original list of integers

original_list = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }

odd_num_list = {num for num in original_list if num% 2 != 0}
	
print(original_list)
print(odd_num_list)
