=begin
Write a method which takes a grocery list (array) of fruits 
with quantities and converts it into an array of the correct 
number of each fruit.
=end

def buy_fruit(arr)
  new_arr = []
  arr.each do |subarray|
    subarray[1].times { new_arr << subarray[0] }
  end
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
# true



## Possible solution:
# Option 1:
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
# true


# Option 2:
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
# true



## Experiments:
def buy_fruit(list)
  expanded_list = []

  list.each do |fruit, quantity|
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
# true


def buy_fruit(list)
  list.map { |fruit, quantity| fruit * quantity }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
# ["applesapplesapples", "orange", "bananasbananas"]


def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
# [["apples", "apples", "apples"], ["orange"], ["bananas", "bananas"]]
