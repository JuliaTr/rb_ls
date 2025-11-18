# took 25 mins

=begin
Create a method that takes an array of integers as an argument 
and returns an array of two numbers that are closest together 
in value. If there are multiple pairs that are equally close, 
return the pair that occurs first in the array.

P 
Return a pair, which difference in value is minimum.

Rules:
- numbers maybe not consecutive
- if many pairs with the same minimum difference, return the first
pair

D
Input: array
Output: array with pair
Intermediate:
- array: for pair
- array: all pairs
- hash: for array and its value
- integer: generate pairs
- range: generate pairs
- string: ---
- boolean: ---

High-level:
- Generate all pairs 
  eg [[5, 25], [5, 15], [5, 11]...
      [25, 15], [25, 11]...
      [15, 11], [15, 20]]
- Calculate difference in value
- Find pair with minimal difference

Generate all pairs:
[19, 25, 32, 4, 27, 16]
     ^
  [19, 25, 32, 4, 27, 16]
                  ^
[[19, 25], [19, 32]...
[25, 32], [25, 4], [25, 27]...]

- Create `result`
- Iterate from 0 upto array size - 1 (`first` index)
  - Iterate from `first` upto array size - 1 (`second`)
    - Add [arr[first], arr[second]] to `result`
- Return `result`


Calculate difference in value:
- arr.first - arr.last 

=end

def all_pairs(arr)
  result = []

  0.upto(arr.size - 1) do |first|
    (first + 1).upto(arr.size - 1) do |second|
      result << [arr[first], arr[second]]
    end
  end

  result
end

def create_hash(arr)
  arr.each_with_object(Hash.new(0)) do |pair, hash|
    hash[pair] = (pair.first - pair.last).abs
  end
end

def closest_numbers(arr)
  pairs = all_pairs(arr)
  hash = create_hash(pairs)
  minimum_value = hash.values.min
  hash.select { |_, val| val == minimum_value }.keys[0]
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]
# All test cases return `true`.
