
num1 = int(input("Enter your number"))
num2 = int(input("Enter your second number"))


def gcd(a,b):
	
	while b !=  0:

		a,b =b,a%b


	return a

print(gcd(num1,num2))
		
		
