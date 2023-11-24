def generate_fibonacci(num):

	fibonnaci_series = []


	a= 0

	b= 1 

	for i in range(num):

		fibonnaci_series.append(a)

		a,b = b, a+b	

		

	return fibonnaci_series	
	





n = int(input("Enter your number"))

p = generate_fibonacci(n)

print(p)
