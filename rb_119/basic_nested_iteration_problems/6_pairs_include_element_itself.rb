=begin
Generate the cross product of an array with itself. This is 
similar to pairs, but we include the pair of the element with 
itself.

_____________________________________________________________

PEDAC

P
Return a nested array with all pairs, including a pair with itself.

Rules/reqs:
- pair with itself
- pair with each other

D
Input: array
Output: nested array
Intermediate:
- array: to store a pair
- integer: to iterate over indexes   X

High-level:
- Create new empty array
- Iterate over each element in input array (first element in pair)
- Inside outer iteration iterate over each elemet in input array (second element in pair)
- Add pair to new array
- Return new array

Algo:
- Create `pairs`
- Iterate over each element in input array (`first`)
  - Iterate over each elemet in input array (`second`)
    - Add pair to `pairs`
- Return `pairs`

eg
[1, 2, 3, 4, 5]
             ^
  [1, 2, 3, 4, 5]
               ^
=end

def cross_product(arr)
  pairs = []

  arr.each do |first|
    arr.each do |second|
      pairs << [first, second]
    end
  end

  pairs
end

sample = [1, 2, 3, 4, 5]
p cross_product(sample) == [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5],
                            [2, 1], [2, 2], [2, 3], [2, 4], [2, 5],
                            [3, 1], [3, 2], [3, 3], [3, 4], [3, 5],
                            [4, 1], [4, 2], [4, 3], [4, 4], [4, 5],
                            [5, 1], [5, 2], [5, 3], [5, 4], [5, 5]]
