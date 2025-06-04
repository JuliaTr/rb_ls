=begin
Practice Problem 15
Given this data structure write some code to return an 
array which contains only the hashes where all the 
integers are even.
=end

arr = [
  {a: [1, 2, 3]}, 
  {b: [2, 4, 6], c: [3, 6], d: [4]}, 
  {e: [8], f: [6, 10]}
]

result = arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |element| 
      element.even?
    end
  end
end

p result  # [{:e=>[8], :f=>[6, 10]}]
# Solution from the assignment
