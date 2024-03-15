
positive_words = ['good','great','nice','yes','congrats','happy','high']

negative_words = ['bad','low','no','worse', 'ugly','lie','sad']

#Accept input from user

sentence = input("Enter your sentence: ")

#convert sentence into a list 

sentence = sentence.split(" ")

print(sentence)

#Counting the positive word

positive_count = 0

negative_count = 0

for i in sentence:

	for p in positive_words:

		if i == p: 

			positive_count += 1
	

	for k in negative_words:

		if i == k:

			negative_count += 1

print("Positive words:",positive_count)
print("Negative words:",negative_count)
