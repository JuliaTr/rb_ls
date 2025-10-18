=begin
Write a method that returns an Array that contains every other 
element of an `Array` that is passed in as an argument. The 
values in the returned array should be those values that are 
in the 1st, 3rd, 5th, and so on elements of the argument Array.
=end

## Provided solution:
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# These examples should all print true
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases print `true`



## Code review for Kipsang's solution:
def oddities(the_array)

  array_with_nils = (0...the_array.size).map do |idx|
    idx % 2 == 0 ? the_array[idx] : nil
  end

  final_array = []
  array_with_nils.each do |item|
    if item != nil
      final_array << item
    end
  end

  final_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases print `true`

=begin
CODE REVIEW:

**Does the solution meet the problem requirements?**
The problem meets the problem requirements. All test cases
print `true`.


**Is the code readable and easy to understand?**
The code isn't easy to understand because its over complexity:
unnecessary intermediate array data structure (lines 3-5). It's
difficult to understand why `array_with_nils` array is created.


**Do variable and method names adhere to Ruby naming conventions?**
Variable and method names adhere to Ruby naming convention.


**Are the variable and method names meaningful and precise?**
The variable and method names are meaningful and precise. However,
usually the articles are omitted at the beginning of variable and
method names like `array` (lines 1, 3, 4) instead of `the_array`.


**Is the code formatted correctly and free of syntax errors?**
The code is formatted correctly and free of syntax errors. However,
there's a redundant empty line (line 2) - RuboCop cop 
Layout/EmptyLinesAroundMethodBody. Please see the suggested solution
below.


**Is the solution repetitive or overly complex?**
The solution isn't repetitive. It's overly complex. The intermediate
array is created (lines 3-5). Then the items, which aren't `nil` 
are pushed to a new array `final_array`. If the original array had
legitimate values `nil`, they wouldn't be included in the returned
array. Please see the suggested solution below.


**Would it make more sense to use different looping or conditional structures?**
It would make sense to use `while` loop to select items with the step
of 2, starting with the first item. Please see the suggested solution
below.


**Would the solution benefit from helper methods?**
There's no need in a helper method, because the problem is too 
small.


**Consider running the code through Rubocop and discussing any issues raised.**
There're 5 RuboCop offenses, which are: Layout/EmptyLinesAroundMethodBody,
Style/EvenOdd, Style/NumericPredicate, Style/IfUnlessModifier,
Style/NonNilCheck.

```ruby
odd_lists.rb:32:1: C: [Correctable] Layout/EmptyLinesAroundMethodBody: 
Extra empty line detected at method body beginning.

odd_lists.rb:34:5: C: [Correctable] Style/EvenOdd: Replace with 
Integer#even?.
    idx % 2 == 0 ? the_array[idx] : nil
    ^^^^^^^^^^^^
odd_lists.rb:34:5: C: [Correctable] Style/NumericPredicate: Use 
(idx % 2).zero? instead of idx % 2 == 0.
    idx % 2 == 0 ? the_array[idx] : nil
    ^^^^^^^^^^^^
odd_lists.rb:39:5: C: [Correctable] Style/IfUnlessModifier: 
Favor modifier if usage when having a single-line body. Another 
good alternative is the usage of control flow &&/||.
    if item != nil
    ^^
odd_lists.rb:39:8: C: [Correctable] Style/NonNilCheck: Prefer 
!item.nil? over item != nil.
    if item != nil
       ^^^^^^^^^^^
```

The solution below addresses RuboCop offenses and also contains
variable names without article at the beginning, omites producing 
intermediate array, `while` loop to iterate directly on the input 
array.
```ruby
def oddities(array)
  final_array = []
  counter = 0

  while counter < array.size
    final_array << array[counter]
    counter += 2
  end

  final_array
end
```

An alternative more idiomatic approaches:
- using `Range#step` eliminates the necessity to create an intermediate
array, avoiding extra memory and the `nil` placeholder issue:
```ruby
def oddities(array)
  final_array = []

  (0...array.size).step(2).each { |index| final_array << array[index] }

  final_array
end
```
- using `Array#select` chaining `Array#with_index` method to its 
return value. The return value of the block preserves `nil` 
values (if they are in test cases) at even indexes.
```ruby
def oddities(array)
  array.select.with_index { |item, index| index.even? }
end
```
=end



## Experiments:
# (no RuboCop offenses):
def oddities(array)
  final_array = []

  (0...array.size).step(2).each { |index| final_array << array[index] }

  final_array
end

puts oddities([nil, 3, 4, 5, 6]) == [nil, 4, 6]  # true

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases return `true`


# (no RuboCop offenses):
def oddities(array)
  final_array = []
  index = 0

  while index < array.size
    final_array << array[index]
    index += 2
  end

  final_array
end

puts oddities([nil, 3, 4, 5, 6]) == [nil, 4, 6]  # true

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases return `true`


# `#select` (idiomatic, no RuboCop offenses):
def oddities(array)
  array.select.with_index { |item, index| item if index.even? }
end

puts oddities([nil, 3, 4, 5, 6]) == [nil, 4, 6]  # false  ([4, 6] - `nil` is filtered out)

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases return `true`


# (no RuboCop offenses):
def oddities(array)
  array.select.with_index { |_, index| index.even? }
end

puts oddities([nil, 3, 4, 5, 6]) == [nil, 4, 6]  # true

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
# All test cases return `true`
