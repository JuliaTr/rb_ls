## The `==` method
str1 = "something"
str2 = "something"
p str1 == str2      # true



int1 = 1
int2 = 1
p int1 == int2      # true



sym1 = :something
sym2 = :something
p sym1 == sym2        # true



str1 = "something"
str2 = "something"

p str1.class         # String
p str2.class         # String



str1 = "something"
str2 = "something"

str1 = str1 + " else"
p str1                  # "something else"

p str1 == str2          # false



str1 = "something"
str2 = "something"
str1_copy = str1

# compare values
p str1 == str2             # true
p str1 == str1_copy        # true
p str2 == str1_copy        # true

# compare objects
p str1.equal? str2         # false
p str1.equal? str1_copy    # true
p str2.equal? str1_copy    # false




class Person
  attr_accessor :name
end

bob = Person.new
bob.name = "bob"

bob2 = Person.new
bob2.name = "bob"

p bob == bob2          # false

bob_copy = bob
p bob == bob_copy      # true




class Person
  attr_accessor :name

  def ==(other)
    name == other.name    # rely on `String#==`
  end
end

bob = Person.new
bob.name = 'bob'

bob2 = Person.new
bob2.name = 'bob'

p bob == bob2         # true




p 45 == 45.00           # true
p 45.00 == 45           # true




## `object_id`
str1 = "something"
str2 = "something"

p str1.object_id        # 60
p str2.object_id        # 80



arr1 = [1, 2, 3]
arr2 = [1, 2, 3]

# compared actual objects
p arr1.object_id == arr2.object_id   # false



sym1 = :something
sym2 = :something

# compared actual objects
p sym1.object_id == sym2.object_id     # true



int1 = 5
int2 = 5

# compared actual objects
p int1.object_id == int2.object_id     # true





## `===`

num = 25

case num
when 1..50
  puts "small number"
when 51..100
  puts "large number"
else
  puts "not in range"
end

# Output: small number



num = 25

if (1..50) === num
  puts "small number"
elsif (51..100) === num
  puts "large number"
else
  puts "not in range"
end

# Output: small number



p String === 'hello'    # true
p String === 15         # false
