# took 15 mins

=begin
Create a method that takes an array of numbers as an argument. 
For each number, determine how many numbers in the array are 
smaller than it, and place the answer in an array. Return the 
resulting array.

When counting numbers, only count unique values. That is, if a 
number occurs multiple times in the array, it should only be 
counted once.

_________________________________

[8, 1, 2, 2, 3] == [3, 0, 1, 1, 2]

[7, 7, 7, 7] == [0, 0, 0, 0]

Idea:
- Create `result`

- Iterate over each element from input array (`element1`) (`#map`)
  - count = 0
  - Iterate over each element from unique input array (`element2`)
    - If `element2` LESS than `element1`
      - Increment `count` by 1
  - Return `count`

- Return `result`

[8, 1, 2, 2, 3] == [3, 0, 1, 1, 2]
             ^
  [8, 1, 2, 3]
            ^
[3, 0, 1, 1, 2]
=end

def smaller_numbers_than_current(arr)
  arr.map do |element1|
    count = 0
    arr.uniq.each do |element2|
      count += 1 if element2 < element1
    end
    count
  end
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
# All test cases return `true`.
