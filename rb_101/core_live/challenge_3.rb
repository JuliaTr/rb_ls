# What will this code output and why?
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name)
  name = name.capitalize
  greeting = greetings.sample
  p greeting + ' ' + name
end

name = names.sample
random_greeting(name)
# Output:
# undefined local variable or method `greetings' for main:Object (NameError)

## Bonus Questions ##
# 1. How many `name` variables exist in this code? How are they related?
# 2. Fix this code.
# 3. After fixing the code, update it so that we don't ever repeat names or greetings.
#    How should we handle running out of names/greetings?

=begin
What will this code output and why?
The output is `undefined local variable or method greetings' 
for main:Object (NameError)` message. A local variable `names`
is initialised on line 2 referencing an Array object with two 
string objects `['hello', 'howdy']`. On line 3, `greetings` is initialised 
referencing an Array object with two string objects `['homer', 'marge']`. 
Then, on line 11, an `Array#sample` method is invoked on `names`, 
returning random elements from self. The return value of `names.sample` 
is assigned to a new local variable `name`. When, on line 12, 
an object referenced by `name` is passed as an argument in a 
`random_greeting` method invocation, the `random_greeting` method 
definition on lines 5 through 9 can access only the object, being 
passed to it. This is because the method definition’s parameter 
`name` is bound with the argument `name`. So, on line 8, `random_greeting` 
cannot access `greetings`, as it’s object wasn’t passed as an argument.
=end


## Bonus Questions ##

=begin
1. How many `name` variables exist in this code? How are they related?

There are 2 variables `name` in the presented code snippet. 
On line 11, a local variable `name` is initialised and references 
a return value from `Array#sample` method invocation on 
`['homer', 'marge']` referenced by`names`. Then, on line 12, 
an object referenced by `name` is passed as an argument in 
`random_greeting` invocation, being bound with the parameter 
`name`, which is the second `name` variable, of the `random_greeting` 
method definition on lines 5 through 9. The parameter `name` 
is an initialised local to the method definition variable. 
Inside the method’s body a non-distructive `String#capitalize` 
method is invoked on `['homer', 'marge']` referenced by `name`. 
Its return value is reassigned to the same `name`. On line 8, `name` 
references `['Homer', 'Marge']`.

Optional explanation of the local to the method variable:
There is 1 `name` variable within `random_greeting` method 
definition. As a parameter `name` points to the return 
value of `names.sample`. Then, on line 6, the same `name` 
points to the return value of `name.capitalize`. 
This demonstrates reassignment.
=end

# 2. Fix this code.
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name, greetings)
  name = name.capitalize
  greeting = greetings.sample
  p greeting + ' ' + name
end

name = names.sample
random_greeting(name, greetings)
=begin
$ ruby challenge_3.rb
"hello Homer"
$ ruby challenge_3.rb
"howdy Homer"
$ ruby challenge_3.rb
"hello Homer"
$ ruby challenge_3.rb
"howdy Marge"
$ ruby challenge_3.rb
"howdy Marge"
$ ruby challenge_3.rb
"hello Marge"
=end

# 3. After fixing the code, update it so that we don't ever repeat names or greetings.
#    How should we handle running out of names/greetings?
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

counter = 0
names.each do |str|
  name = str.capitalize
  p "#{greetings[counter]} #{name}"
  counter += 1
end
# Output:
# "hello Homer"
# "howdy Marge"



## Experiments:
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(names, greetings)
  names.each do |str|
    name = str.capitalize 
    greetings.each do |greet|
      p greet + ' ' + name
    end
  end
end

random_greeting(names, greetings)
# Output:
# "hello Homer"
# "howdy Homer"
# "hello Marge"
# "howdy Marge"



### Aditional task
# Geretate random greetings, but in such way we 
# never repeat a name or greeting.

=begin
Description the task from my understanding:
Use `#sample` with iteration, but the name or greeting 
should not be repeated. So, if `#sample` method takes 
`homer` for the first iteration, then for the next 
and the last one it should take only `marge`.
=end

greetings = ['hello', 'howdy']
names = ['homer', 'marge']

loop do
  name = names.sample.capitalize!
  greeting = greetings.sample.capitalize!
  p "#{greeting} #{name}"

  names.delete(name)
  greetings.delete(greeting)

  if names.empty? || greetings.empty?
    multiline_message = <<~MSG
      I have used all names or greetings.
      Thanks for using the program! Hope, it was fun!
    MSG
    puts multiline_message
    break
  end
end
=begin
$ ruby challenge_3.rb
"Howdy Marge"
"Hello Homer"
I have used all names or greetings.
Thanks for using the program! Hope, it was fun!
$ ruby challenge_3.rb
"Hello Marge"
"Howdy Homer"
I have used all names or greetings.
Thanks for using the program! Hope, it was fun!
$ ruby challenge_3.rb
"Howdy Homer"
"Hello Marge"
I have used all names or greetings.
Thanks for using the program! Hope, it was fun!
=end



# Using a setter method `Array#[]=` and `Array#index`:
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

loop do
  name = names.sample.capitalize!
  greeting = greetings.sample.capitalize!
  p "#{greeting} #{name}"

  name_index = names.index(name)
  greeting_index = greetings.index(greeting)

  names[name_index] = nil
  greetings[greeting_index] = nil
 
  names.compact!
  greetings.compact!

  if names.empty? || greetings.empty?
    multiline_message = <<~MSG
      I have used all names or greetings.
      Thanks for using the program! Hope, it was fun!
    MSG
    puts multiline_message
    break
  end
end



## More experiments:
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

loop do
  name = names.sample.capitalize
  greeting = greetings.sample.capitalize
  p "#{greeting} #{name}"
  
  break
end
=begin
$ ruby challenge_3.rb
"Hello Marge"
$ ruby challenge_3.rb
"Hello Marge"
$ ruby challenge_3.rb
"Howdy Homer"
$ ruby challenge_3.rb
"Hello Marge"
$ ruby challenge_3.rb
"Howdy Homer"
=end
