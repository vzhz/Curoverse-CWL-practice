# fcn that takes in file & number (then write in CWL)
import io

### in python

# zero step
number = 3
file_name = "my-file.txt"
def take_in_file_and_number(n, file):
	string_n = str(n)
	f = open(file, "a+")
	f.write(string_n) # nothing saved until you close
	f = f.close
	f = open(file, "a+")
	# print("I got here 1")
	contents = f.read()
	# print("I got here 2")
	print(contents)
take_in_file_and_number(number, file_name)