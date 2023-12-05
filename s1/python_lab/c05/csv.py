import csv

def write_to_csv(filename,data):

    with open(filename, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile)
        csv_writer.writerows(data)

    print("Data has been written to ",filenam
        for row in csv_reader:

            print(','.join(row))

data_to_write = [ 

        ['Name', 'Age', 'City'],
        ['John Doe', '25', 'New York'],
        ['Jane Smith', '30', 'San Fransico'],
        ['Bob Johnson', '22', 'Los Angeles']
]

write_to_csv('example.csv',data_to_write)

print("Reading from CSV and printing:")
read_csv_and_print('example.csv')
