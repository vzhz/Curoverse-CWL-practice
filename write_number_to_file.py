# fcn that takes in file & number (then write in CWL)
import io

# allows you to parse command line inputs
import sys

n = sys.argv[1]
file = sys.argv[2]

# variables will change each time in the future so include these in a yaml file (record) and not here
# remember, store your state seperately from business logic
#number = 3
#file_name = "my-file.txt"

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
take_in_file_and_number(n, file)