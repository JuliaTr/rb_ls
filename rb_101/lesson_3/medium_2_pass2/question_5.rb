=begin
Debug the code so that the resulting method should not mutate 
either argument, but `my_string` should be set to 
`'pumpkinsrutabaga'` and `my_array` should be set to 
`['pumpkins', 'rutabaga']`.
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# My string looks like this now: pumpkins

puts "My array looks like this now: #{my_array}"
# My array looks like this now: ["pumpkins", "rutabaga"]



## Bug fix:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

p tricky_method(my_string, my_array)  
# ["pumpkinsrutabaga", ["pumpkins", "rutabaga"]]

my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# My string looks like this now: pumpkinsrutabaga

puts "My array looks like this now: #{my_array}"
# My array looks like this now: ["pumpkins", "rutabaga"]



# Mutates arguments:
def tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# My string looks like this now: pumpkinsrutabaga

puts "My array looks like this now: #{my_array}"
# My array looks like this now: ["pumpkins", "rutabaga"]



### Experiments
a = ['hello']
a = a + 'hi'
p a  # no implicit conversion of String into Array (TypeError)


a = ['hello']
a = a + ['hi']
p a    # ["hello", "hi"]


a = ['hello']
a << 'hi'
p a      # ["hello", "hi"]
