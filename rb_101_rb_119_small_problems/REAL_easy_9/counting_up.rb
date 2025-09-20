=begin
Write a method that takes an integer argument, and returns 
an Array of all integers, in sequence, between 1 and the 
argument.

You may assume that the argument will always be a valid 
integer that is greater than 0.
=end

def sequence(number)
  arr = []

  while number > 0
    whole, remainder = number.divmod(1)
    arr.prepend(whole)
    number -= 1
  end

  arr
end

p sequence(5) == [1, 2, 3, 4, 5]  # true
p sequence(3) == [1, 2, 3]        # true
p sequence(1) == [1]              # true



## Possible solution:
def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]  # true
p sequence(3) == [1, 2, 3]        # true
p sequence(1) == [1]              # true



## Further exploration:
def sequence(number)
  (number..1).to_a
end

p sequence(-1)   # [-1, 0, 1]
