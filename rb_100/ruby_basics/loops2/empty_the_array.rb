=begin
Given the array below, use `loop` to remove and print each 
name from first to last. Stop the loop once names doesn't 
contain any more elements.
=end
names = ['Sally', 'Joe', 'Lisa', 'Henry']


## Solution:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.length == 0
end

p names

# Output:
# Sally
# Joe
# Lisa
# Henry
# []



### Possible solution:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

# Output:
# Sally
# Joe
# Lisa
# Henry



### Further exploration:
# Can you change this to print the names from last to first?
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end

p names

# Output:
# Henry
# Lisa
# Joe
# Sally
# []
