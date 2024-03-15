numbers = input("Enter a list of numbers seperated by comma: ")

number_list = list(map(int, numbers.split(",")))

total_sum = sum(number_list)

print("Sum of all items in the lists ",total_sum)
