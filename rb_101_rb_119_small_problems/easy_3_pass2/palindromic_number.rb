=begin
Write a method that returns true if its integer argument is 
palindromic, false otherwise. A palindromic number reads 
the same forwards and backwards.
=end

## Solution:
def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(num)
  param = num.to_s
  palindrome?(param)
end

p palindromic_number?(34543) == true     # true
p palindromic_number?(123210) == false   # true
p palindromic_number?(22) == true        # true
p palindromic_number?(5) == true         # true



## Possible solution:
def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true     # true
p palindromic_number?(123210) == false   # true
p palindromic_number?(22) == true        # true
p palindromic_number?(5) == true         # true



### Further exploration:
=begin
Suppose your number begins with one or more 0s. Will your 
method still work? Why or why not? Is there any way to address 
this?
=end

def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(num)
  param = num.to_s
  palindrome?(param)
end

p palindromic_number?(000034543) == false     # true
p palindromic_number?(0345430) == true        # false

=begin
The first test case true because if there's a leading zero, 
the `to_s` method converts it to string with absolutely different 
integers.

p 000034543.to_s   # "14691"


In Ruby numbers don't exist with leading zeros.

irb(main):001:0> 000034543
=> 14691
irb(main):002:0> '000034543'
=> "000034543"

Numbers shoutd be input as strings, so that we could work with
leading zeros
=end



## Bug fix:
def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(str)
  # to eliminate leading zeros
  int_with_no_leading_zeros = str.to_i
  str_with_no_leading_zeros = int_with_no_leading_zeros.to_s

  reversed_str = str_with_no_leading_zeros.reverse

  # to eliminated leading zeros from the reversed string
  new_int_with_no_leading_zeros = reversed_str.to_i
  new_str_with_no_leading_zeros = new_int_with_no_leading_zeros.to_s

  palindrome?(new_str_with_no_leading_zeros)
end

p palindromic_number?('000034543') == true  # true
p palindromic_number?('0345430') == true    # true
p palindromic_number?('0000') == true       # true



### Experiments:
p '000343'.reverse   # "343000"
p '000343'.reverse == '000343'  # false

p 000034543.to_s   # "14691"

p 000034543.digits   # [1, 9, 6, 4, 1]
p 000034543.numerator  # 14691
p 000034543.ord        # 14691
p 000034543.zero?      # false
p 000034543 / 100      # 146
