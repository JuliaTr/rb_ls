# review

=begin
Difference of Two
The objective is to return all pairs of numbers from a given array of numbers that have a difference of 2.
The result array should be sorted in ascending order of values.
Assume there are no duplicate numbers in the array.
The order of the numbers in the input array should not matter.

__________________________

Rules:
- If no difference of two, return []
- don't pair oneself

Idea1:
- Create `result`
- Iterate over each element with index of array (`index1`)
  - Iterate over `index1` + 1 upto arr.size - 1 of array
    - Check each number if it has difference of two
      - Create a pair (sorted) and push to `result`

[4, 1, 2, 3]
       ^
  [4, 1, 2, 3]
            ^
[4, 2], [1, 3]


- Sort outer array
- Return `result`
=end

def difference_of_two(arr)
  result = []

  arr.each_with_index do |element, index1|
    (index1 + 1).upto(arr.size - 1) do |index2|
      if (element - arr[index2]).abs == 2
        result << [element, arr[index2]].sort
      end
    end
  end

  result.sort
end

p difference_of_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
p difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
p difference_of_two([2, 4]) == [[2, 4]]
p difference_of_two([1, 4, 7, 10, 13]) == []
# All test cases return `true`.
