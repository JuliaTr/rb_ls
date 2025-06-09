require 'pry-byebug'

=begin
Write a method that takes an array of integers and returns a 
new array with the integers transformed. If the integer is divisible
by 3, it should be replaced with 'Fizz'. If it's divisible by 5
it should be replaced with 'Buzz'. If it's divisible by both 3 and
5, it should be replaced by 'FizzBuzz'. If it's divisible by neither 
3 or 5, the number should remain as it is.
=end

def fizzbuzz(arr)
  arr.map do |num|
    binding.pry
    if num % 5 == 0 && num % 3 == 0
      'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0  # issue was `num == 3` - test case failed on `num = 6`
      'Fizz'
    else
      num
    end
  end
end

p fizzbuzz([1, 3, 5, 6, 7, 8, 10, 3, 15, 9]) == [1, "Fizz", "Buzz",
                                                 "Fizz", 7, 8, "Buzz",
                                                 "Fizz", "FizzBuzz", "Fizz"]
# `false` before fixing line 19 -- now `true`


=begin
1. `pry` session [practiced with `require 'pry'`]

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/pry_byebug_example1.rb:14 Object#
fizzbuzz:

    12: def fizzbuzz(arr)
    13:   arr.map do |num|
 => 14:     binding.pry
    15:     if num % 5 == 0 && num % 3 == 0
    16:       'FizzBuzz'
    17:     elsif num % 5 == 0
    18:       'Buzz'
    19:     elsif num == 3
    20:       'Fizz'
    21:     else
    22:       num
    23:     end
    24:   end
    25: end

[1] pry(main)> num
=> 1
[2] pry(main)> exit!



2. `pry-byebug` session [practiced with `require 'pry-byebug'`]
`next` command -- checked all `if/elsif/else` branches for `num` 
                  until we found a logical error.  
Line 19 has an issue: instead of `num == 3` should be `num % 3 == 0`

`continue` command -- skipped the rest of the iteration
=end