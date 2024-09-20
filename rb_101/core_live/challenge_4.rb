# There's a problem with this code. Can you identify precisely what is causing
# # the issue and propose a solution?
def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    hash['name'] = name
    hash['age'] = ages[index]
    people << hash
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)
# [{"name"=>"Juniper", "age"=>4}, {"name"=>"Juniper", "age"=>4}, 
# {"name"=>"Juniper", "age"=>4}, {"name"=>"Juniper", "age"=>4}]

## Bonus Questions ##
# 1. How does your proposed solution behave when we have a different length
#    for our `names` array and `age` array?
# 2. What if we wanted to mutate the `names` array to get the desired outcome?
# 3. Can you write a snippet that demonstrates a good use case for `each_with_object`,
#    to help whoever wrote this code understand how it can be used?



## Solution:
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]

people = []
index = 0
loop do 
  h = {}
  h['name'] = names[index]
  h['age'] = ages[index]
  index += 1
  people << h
  break if index >= names.length
end 

p people
# [{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
# {"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4}]


### Solution with the method definition:
def create_people(names, ages)
  people = []

  index = 0
  loop do 
    h = {}
    h['name'] = names[index]
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end 

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)
# [{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
# {"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4}]


## Bonus Questions ##
# 1. How does your proposed solution behave when we have a different length
#    for our `names` array and `age` array?

# Works if we assume that we need to build the Hash object 
# regardless whether we have input for the age or not.
def create_people(names, ages)
  people = []

  index = 0
  loop do
    h = {}
    h['name'] = names[index]
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end

  p people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper', 'Carissa']
ages = [44, 25, 88, 4]
p create_people(names, ages)
# [{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
# {"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4},
# {"name"=>"Carissa", "age"=>nil}]


def create_people(names, ages)
  people = []
  
  index = 0
  loop do
    h = {}
    h['name'] = names[index]
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4, 12]
p create_people(names, ages)
# [{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
# {"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4}]

def create_people(names, ages)
  people = []
  
  index = 0
  loop do
    h = {}
    h['name'] = names[index]
    p h
    h['age'] = ages[index]
    index += 1
    p h
    # people << h
    break if index >= names.length
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4, 12]
p create_people(names, ages)


# 2. What if we wanted to mutate the `names` array to get the desired outcome?
# def create_people(names, ages)
  people = []

  index = 0
  loop do 
    h = {}
    h['name'] = names[index].upcase!
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end 

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)
p names
# [{"name"=>"ALICE", "age"=>44}, {"name"=>"BOB", "age"=>25}, 
# {"name"=>"MARCEL", "age"=>88}, {"name"=>"JUNIPER", "age"=>4}]


# 3. Can you write a snippet that demonstrates a good use case for `each_with_object`,
#    to help whoever wrote this code understand how it can be used?
# Let’s say there’s a list of elementary school students.
result_addition = (6..10).each_with_object([]) do |element, array|
  array << element + 1
end
p result_addition
# [7, 8, 9, 10, 11]


## Explanation for the submitted soluttion:
=begin
I assumed that the desired outcome is the following, as if 
we needed to collect an input from the user and store this 
information in the memory, we’d like to have two separate 
key-value pairs in a hash with the same keys and the data 
for each individual in a data structure, which provides a 
listed collection:

[{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
{"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4}]

`Enumerable#each_with_object` creates one object, but assuming
the desired output, there’s a need to create multiple Hash 
objects with the same keys. Adding more details to the 
explanation about the problem, I’d like to describe what 
happens on each line inside the block passed as an argument 
to the `#each_with_object` method invocation in the original 
problem.

On line 8, a Hash object is created. On lines 8 through 9, on 
each iteration the value of a Hash object is being rewritten 
as a single hash can have only one unique key. The created 
Hash object has its id. This id is the same if we check 
`hash.object_id` before `people << hash`. On line 10, as hash 
variable points to the same already created the only hash, 
which key-value pair is pushed to an empty Array object being 
referenced by the local to the method variable named people. 
Then, on line 5, the operations on lines 8 through 9 are 
repeated, adding the same hash object to `people`.
So, the problem starts when hash['name'] = name, on line 8.
=end
names.each_with_object({}) do |name, hash|
  p (hash['name'] = name).object_id # the first object_id is 60
  hash[`age`] = ages[index]
  people << hash
  index += 1
end

names.each_with_object({}) do |name, hash|
  hash['name'] = name
  hash[`age`] = ages[index]
  p hash.object_id                  # 60; 60; 60; 60
  people << hash
  index += 1
end

# From this point I came up to the following solution to 
# achieve the assumed desired outcome:
def create_people(names, ages)
  people = []

  index = 0
  loop do 
    h = {}
    h['name'] = names[index]
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end 

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)


# Please see the answers for the Bonus Questions #1, 2.
## Bonus Questions ##
# 1. How does your proposed solution behave when we have a different length for our `names` array and `age` array?
def create_people(names, ages)
  people = []
  
  index = 0
  loop do
    h = {}
    h['name'] = names[index]
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper', 'Carissa']
ages = [44, 25, 88, 4]
p create_people(names, ages)
# [{"name"=>"Alice", "age"=>44}, {"name"=>"Bob", "age"=>25}, 
# {"name"=>"Marcel", "age"=>88}, {"name"=>"Juniper", "age"=>4},
# {"name"=>"Carissa", "age"=>nil}]

# Assuming the user hasn’t inputed their age, the value for age key will be nil. If the ages is longer, than names the last object is not created.
# 2. What if we wanted to mutate the `names` array to get the desired outcome?
def create_people(names, ages)
  people = []

  index = 0
  loop do 
    h = {}
    h['name'] = names[index].upcase!
    h['age'] = ages[index]
    index += 1
    people << h
    break if index >= names.length
  end 

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)
p names
# [{"name"=>"ALICE", "age"=>44}, {"name"=>"BOB", "age"=>25}, 
# {"name"=>"MARCEL", "age"=>88}, {"name"=>"JUNIPER", "age"=>4}]
# ["ALICE", "BOB", "MARCEL", "JUNIPER"]

# 3. Can you write a snippet that demonstrates a good use case
#  for `each_with_object`, to help whoever wrote this code 
# understand how it can be used?
result_addition = 
  (6..10).each_with_object([]) do |element, array|
    array << element + 1
  end
p result_addition
# [7, 8, 9, 10, 11]



### Experiments:

#### To check `object_id`s:
def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    hash['name'] = name
    hash['age'] = ages[index] 
    p hash.object_id
    people << hash
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)
# 60
# 60
# 60
# 60
# [{"name"=>"Juniper", "age"=>4}, {"name"=>"Juniper", "age"=>4}, 
# {"name"=>"Juniper", "age"=>4}, {"name"=>"Juniper", "age"=>4}]


def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    p (hash['name'] = name).object_id
    p (hash['age'] = ages[index]).object_id 
    people << hash
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
create_people(names, ages)
# 60
# 89
# 80
# 51
# 100
# 177
# 120
# 9


def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    p (hash['name'] = name).object_id
    hash['age'] = ages[index]
    p hash.object_id
    people << hash
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
create_people(names, ages)
# 60
# 80
# 100
# 80
# 120
# 80
# 140
# 80


#### To check how the method definition access the parameters bound to the arguments:
def create_people(names, ages)
  p names   # ["Alice", "Bob", "Marcel", "Juniper"]
  p ages    # [44, 25, 88, 4]
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
p create_people(names, ages)   # [44, 25, 88, 4]


#### To check how many hashes `each_with_object` creates.
# It creates 1 Hash object.
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
p (names.each_with_object({}) do |name, hash|
  hash[name] = name
end)
# {"Alice"=>"Alice", "Bob"=>"Bob", "Marcel"=>"Marcel", 
# "Juniper"=>"Juniper"}


#### To iterate over a hash elements:
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
p (names.each_with_object({}) do |name, hash|
  hash['name'] = name     # {"name"=>"Juniper"}
end)
# {"name"=>"Juniper"}


#### Array and an experiment how a hash won't be buit 
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
hash = {}

hash['name'] = names[0]
# {"name"=>"Alice"}
hash['name'] = names[1]
# {"name"=>"Bob"}
hash['name'] = names[2]
# {"name"=>"Marcel"}
hash['name'] = names[3]
# {"name"=>"Juniper"}

p hash
# {"name"=>"Juniper"}



#### How to build a hash from the array. Store hash objects as
  #  a list objects in the array. 
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
people = []

names.each { |name| people << {'name' => name} }
p people
# [{"name"=>"Alice"}, {"name"=>"Bob"}, {"name"=>"Marcel"}, {"name"=>"Juniper"}]



names = ['Alice', 'Bob', 'Marcel']
people = {}
ages = [44, 25, 88]

p (people.each do |key, value|
  puts key
  puts value
end)
# {}


names = ['Alice', 'Bob', 'Marcel', 'Juniper']
people = []
h = {}

names.each do |name|
  h['name'] = name
  people.append(h)
end

p people
# [{"name"=>"Juniper"}, {"name"=>"Juniper"}, {"name"=>"Juniper"}, 
# {"name"=>"Juniper"}]


people = {}
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]

names.each_with_index do |name, index|
  people['name'] = name
  people << hash
end
p people
# [{"name"=>"Juniper"}, {"name"=>"Juniper"}, 
# {"name"=>"Juniper"}, {"name"=>"Juniper"}]



array = ['alpha', 'beta', 'omega']
hash = {}

array.each do |element|
  hash[name] = element.upcase
end
p hash
# {"alpha"=>"ALPHA", "beta"=>"BETA", "omega"=>"OMEGA"}


array = ['alpha', 'beta', 'omega']
hash = {}

array.each do |element|
  hash['name'] = element.upcase
end
p hash
# {"name"=>"OMEGA"}


wine = ['pinot noir', 'chianti', 'malbec']
cheese = ['gouda', 'asiago', 'manchego']
combined_hash = {}
i = 0
wine.each do |wine_type|
  combined_hash[wine_type] = cheese[i]
end
p combined_hash
# {"pinot noir"=>"gouda", "chianti"=>"gouda", "malbec"=>"gouda"}



#### How `Array#each_with_index` works:
people = {}
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]

names.each_with_index do |name, index|
  people['name'] = name
  people << hash
end
p people
# [{"name"=>"Juniper"}, {"name"=>"Juniper"}, 
# {"name"=>"Juniper"}, {"name"=>"Juniper"}]



#### How `Enumerable#each_with_object` works:
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
index = 0
p (names.each_with_object({}) do |name, hash|
  hash['name'] = name
  hash['age'] = ages[index]
end)
# {"name"=>"Juniper", "age"=>44}


names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
index = 0
p (names.each_with_object({}) do |name, hash|
  hash['name'] = name[index]
  hash['age'] = ages[index]
end)
# {"name"=>"J", "age"=>44}


people = []
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
index = 0
p (names.each_with_object({}) do |name, hash|
  hash['name'] = names[index]
  hash['age'] = ages[index]
  people << hash
end)
p people
# {"name"=>"Alice", "age"=>44}
# [{"name"=>"Alice", "age"=>44}, {"name"
# =>"Alice", "age"=>44}, {"name"=>"Alice", "age"=>44}, {"name"=>"Alice", "age"=>44}]


people = []
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4]
index = 0
p (names.each_with_object({}) do |name, hash|
  hash['name'] = names[index]
  hash['age'] = ages[index]
  people << hash
  index = index + 1           # the problem is here
end)
p people
# {"name"=>"Juniper", "age"=>4}
# [{"name"=>"Juniper", "age"=>4}, 
# {"name"=>"Juniper", "age"=>4}, {"name"=>"Juniper", "age"=>4}, 
# {"name"=>"Juniper", "age"=>4}]


people = []
names = ['Alice', 'Bob', 'Marcel', 'Juniper']
names.each_with_object({}) do |name, hash|
  people.push(name)
end
p people
# ["Alice", "Bob", "Marcel", "Juniper"]


names = ['Alice', 'Bob']
ages = [44, 25]
p (names.each_with_object({}) do |name, hash|
  hash['name'] = names[0]
end)
# {"name"=>"Alice"}


names = ['Alice', 'Bob', 'Marcel']
ages = [44, 25, 88]
p (names.each_with_object({}) do |name, hash|
  hash['name'] = names[0]   # doesn't output
  hash['name'] = names[1]   # doesn't output
  hash['name'] = names[2]   # "name"=>"Marcel"
  hash['age'] = ages[0]     # doesn't output
  hash['age'] = ages[1]     # doesn't output
  hash['age'] = ages[2]     # "age"=>88
end)
=begin
$ ruby challenge_4.rb
{"name"=>"Bob"}
$ ruby challenge_4.rb
{"name"=>"Bob", "age"=>25}
$ ruby challenge_4.rb
{"name"=>"Marcel", "age"=>88}
=end


names = ['Alice', 'Bob', 'Marcel']
ages = [44, 25, 88]
p (names.each_with_object({}) do |name, hash|
  p hash['name'] = names[0]
  p hash['name'] = names[1]
  p hash['name'] = names[2]
  p hash['age'] = ages[0]
  p hash['age'] = ages[1]
  p hash['age'] = ages[2]
end)
=begin
$ ruby challenge_4.rb
"Alice"
"Bob"
"Marcel"
44
25
88
"Alice"
"Bob"
"Marcel"
44
25
88
"Alice"
"Bob"
"Marcel"
44
25
88
{"name"=>"Marcel", "age"=>88}
=end
