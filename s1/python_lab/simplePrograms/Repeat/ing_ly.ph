def odd_ing_ey(input_string):

	if input_string.endswith('ing'):

		result_string= input_string + 'ly'

	else:
		result_string = input_string + 'ing'
	
	return result_string


input_string = input("Enter a string: ")
print("Modified string: ",odd_ing_ey(input_string)
