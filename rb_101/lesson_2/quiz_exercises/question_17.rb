def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name   

# Output: George



### Experiments:
def name
  "George"
end

name = "Lisa"

def display_name(name)
  puts name   # Ruby references method's local variable `name`
end

display_name(name)  

# Output: Lisa



def name
  "George"
end

name = "Lisa"

def display_name(name)
  puts name()  # Ruby references `name` method invocation 
end

display_name(name)  

# Output: George
