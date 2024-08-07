# Change the code, so that the resulting method should not mutate either argument.
# Set `my_string` to `'pumpkinsrutabaga'`.
# Set `my_array` to `['pumpkins', 'rutabaga']`.

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# Output: My string looks like this now: pumpkins
puts "My array looks like this now: #{my_array}"
# Output: My array looks like this now: ["pumpkins", "rutabaga"]



## Solution:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# Output: My string looks like this now: pumpkinsrutabaga
puts "My array looks like this now: #{my_array}"
# Output: My array looks like this now: ["pumpkins", "rutabaga"]



## Experiments:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_string = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# Output: My string looks like this now: rutabaga
puts "My array looks like this now: #{my_array}"
# Output: My array looks like this now: ["pumpkins"]



def tricky_method(a_string_param, an_array_param)
  a_string_param = a_string_param.insert(1, "rutabaga")
  an_array_param = an_array_param.insert(1, "rutabaga")
end

my_string = "pumppkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# Output: My string looks like this now: prutabagaumppkins
puts "My string looks like this now: #{my_array}"
# Output: My string looks like this now: ["pumpkins", "rutabaga"]
