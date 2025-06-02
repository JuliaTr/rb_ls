=begin
Practice Problem 4
For each of these collection objects where the value `3` occurs, 
demonstrate how you would change this to `4`.
=end

## Example 2:
arr2 = [
  {a: 1},
  {b: 2, c: [7, 6, 5], d: 4}, 
  3
]

result = arr2.map do |element|

  if element.to_s.to_i == element
    if element == 3
      element = 4
    end
  else
    element
  end

end

p result  # [{:a=>1}, {:b=>2, :c=>[7, 6, 5], :d=>4}, 4]
p arr2    # [{:a=>1}, {:b=>2, :c=>[7, 6, 5], :d=>4}, 3]
