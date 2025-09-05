=begin
Write a method that takes a positive integer or zero, and 
converts it to a string representation.

You may not use any of the standard conversion methods 
available in Ruby, such as Integer#to_s, String(), 
Kernel#format, etc. Your method should do this the 
old-fashioned way and construct the string by analyzing and 
manipulating the number.
=end

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  num.digits.reverse.map { |digit| DIGITS[digit] }.join
end

p integer_to_string(4321) == '4321'    # true
p integer_to_string(0) == '0'          # true
p integer_to_string(5000) == '5000'    # true



## Possible solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    p number
    p remainder

    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end

p integer_to_string(4321) == '4321'    # true
# p integer_to_string(0) == '0'          # true
# p integer_to_string(5000) == '5000'    # true

=begin
$ ruby convert_number_to_string.rb
432  (4321 / 10 = 4320 / 10 = 432 (1 is remainder))
1

43
2

4
3

0
4
true
=end


## Experiments:
p 5.divmod(2)   # [2, 1]

number, remainder = 5.divmod(2)
p number      # 2
p remainder   # 1



## Further exploration:
=begin

Strings:
Mutating methods (with `!`):
`#capitalize!`
`#chomp!`
`#chop!`
`#delete!`
`#delete_prefix!`
`#delete_suffix!`
`#downcase!`
`#encode!`
`#gsub!`
`#lstrip!`
`#next!`
`#reverse!`
`#rstrip!`
`#scrub!`
`#slice!`
`#squeeze!`
`#strip!`
`#sub!`
`#succ!`
`#swapcase!`
`#tr!`
`#tr_s!`
`#unicode_normalize!`
`#upcase!`

Mutating methods (without `!`):
`#<<`
`#[]=`
`#clear`
`#concat`
`#prepend`
`#replace`

Non-mutating methods (with `!`), which don't have non-mutating 
form:
No such methods



Arrays:
Mutating methods (with `!`):
`#collect!`
`#compact!`
`#filter!`
`#flatten!`
`#map!`
`#reject!`
`#reverse!`
`#rotate!`
`#select!`
`#shuffle!`
`#slice!`
`#sort!`
`#sort_by!`
`#uniq`

Mutating methods (without `!`):
`#[]=`
`#<<`
`#append`
`#clear`
`#delete`
`#delete_at`
`#delete_if`
`#fill`
`#initialize_copy`
`#keep_if`
`#pop`
`#prepend`
`#push`
`#replace`
`#shift`
`#unshift`

Non-mutating methods (with `!`), which don't have non-mutating 
form: 
`#sort_by!`
Another methods have non-mutating form.



Hashes:
Mutating methods (with `!`):
`#compact!`
`#filter!`
`#merge!`
`#reject!`
`#select!`
`#transform_keys!`
`#transform_values!`

Mutating methods (without `!`):
`#[]=`
`#clear`
`#delete`
`#delete_if`
`#initialize_copy`
`#keep_if`
`#replace`
`#shift`
`#update`

Non-mutating methods (with `!`), which don't have non-mutating 
form:
No such methods.
=end
