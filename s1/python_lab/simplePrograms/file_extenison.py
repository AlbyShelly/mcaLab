filename = input("Give a file name: ")

if "." in filename:
	
	name, extension =filename.split(".")
	print("The extension of the file is {0}".format(extension))
else:
	print("Enter a valid file name (eg:file.txt)")
