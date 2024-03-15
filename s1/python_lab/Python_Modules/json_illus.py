import json

#Dictionary to JSON

data = {"name" : "John","age" : 30,"city" : "New York"}


#Convert dictionary to JSON with indentation

json_data = json.dumps(data, indent=10)

print("Dict converted to json is :")

print(json_data)

#JSON to Dictionary

json_string = '{"index1" : "key1" , "index2" : "key2", "index3" : "key3"}'

json_file = json.loads(json_string)

print(json_file)
