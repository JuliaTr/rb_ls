=begin
In this exercise, you will write a method named xor that takes 
two arguments, and returns `true` if exactly one of its arguments 
is truthy, `false` otherwise. Note that we are looking for a 
boolean result instead of a truthy/falsy value as returned 
by `||` and `&&`.
=end

def xor?(bool1, bool2)
  if (bool1 && bool2) || (!bool1 && !bool2)
    false
  elsif bool1
    true
  elsif bool2
    true
  end
end

p xor?(5.even?, 4.even?) == true     # true
p xor?(5.odd?, 4.odd?) == true       # true
p xor?(5.odd?, 4.even?) == false     # true
p xor?(5.even?, 4.odd?) == false     # true
p xor?('abc', nil) == true           # true
p xor?(nil, 'abc') == true           # true
p xor?('abc', 'abc') == false        # true
p xor?(nil, nil) == false            # true



## Possible solution:
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true     # true
p xor?(5.odd?, 4.odd?) == true       # true
p xor?(5.odd?, 4.even?) == false     # true
p xor?(5.even?, 4.odd?) == false     # true
p xor?('abc', nil) == true           # true
p xor?(nil, 'abc') == true           # true
p xor?('abc', 'abc') == false        # true
p xor?(nil, nil) == false            # true



### Shorter version:
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?) == true     # true
=begin
!!((false && !true) || (true && !false))
!!((false && false) || true && true)
!!(false || true)
!!(true)
!false
true
=end

p xor?(5.odd?, 4.odd?) == true       # true
=begin
!!((true && !false) || (false && !true))
!!((true && true) || (false && false))
!!(true || false)
!!true
!false
true
=end

p xor?(5.odd?, 4.even?) == false     # true
=begin
!!((true && !true) || (true && !true))
!!((true && false) || (true && false))
!!(false || false)
!!false
!true
false
=end

p xor?(5.even?, 4.odd?) == false     # true
=begin
!!((false && !false) || (false && !false))
!!(false && true) || (false && true)
!!(false || false)
!!false
!true
false
=end

p xor?('abc', nil) == true           # true
=begin
!!(('abc' && !nil) || (nil && !'abc'))
!!(('abc' && true) || (nil && false))
!!(true || nil)
!!true
!false
true
=end

p xor?(nil, 'abc') == true           # true
=begin
!!((nil && !'abc') || ('abc' && !nil))
!!((nil && false) || ('abc' && true))
!!(nil || true)
!!true
!false
true
=end

p xor?('abc', 'abc') == false        # true
=begin
!!(('abc' && !'abc') || ('abc' && !'abc'))
!!(('abc' && false) || ('abc' && false))
!!(false || false)
!!false
!true
false
=end

p xor?(nil, nil) == false            # true
=begin
!!((nil && !nil) || (nil && !nil))
!!((nil && true) || (nil && true))
!!(nil || nil)
!!nil            # `!!` is needed for this test case
!true
false
=end



## Experiments:
p 'a' ^ false

# Output:
# undefined method `^' for "a":String (NoMethodError)

p false ^ 'a'
# Output: true

p false ^ false
# Output: false

p 1 ^ 2
# Output: 3
