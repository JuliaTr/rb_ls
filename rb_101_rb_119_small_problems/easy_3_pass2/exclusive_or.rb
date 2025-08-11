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



### Further exploration:

=begin
*Does the xor method perform short-circuit evaluation of its 
operands? Why or why not?*

If expression contains `&&` operator, the first falsey value 
is a result and the expression is short-circuiting.

If expression contains `||` operator, the first truthy value 
is a result and the expression is short-circuiting.

When short-circuiting happens, there's no need to evaluate
the second operand.

The variations of `xor?` method above contain short-circuiting 
evaluation. For example in the following break down:
=end
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?) == true
=begin
!!((false && !true) || (true && !false))
!!((false && false) || true && true)      
# `(false && false)` short-circuits, because of the first operand is
`false`, which is a falsey value.

!!(false || true)
!!(true)
!false
true
=end

p xor?(5.odd?, 4.odd?) == true
=begin
!!((true && !false) || (false && !true))
!!((true && true) || (false && false))    
# `(false && false)` isn't evaluated, because `(true && true)`
evaluated to true.

!!(true || false)                         
# `(true || false)` short-circuits, because of the first operand is
`true`, which is a truthy velue. 

!!true
!false
true
=end

p xor?(5.even?, 4.odd?) == false
=begin
!!((false && !false) || (false && !false))
!!(false && true) || (false && true)   
# `(false && true)`, `(false && true)` short-circuit, because 
of the first operands are `true`, which are truthy value.

!!(false || false)
!!false
!true
false
=end

p xor?('abc', nil) == true
=begin
!!(('abc' && !nil) || (nil && !'abc'))
!!(('abc' && true) || (nil && false))   
# `(nil && false)` isn't evaluated, because `('abc' && true)`
evaluated to true.


!!(true || nil)                         
# `(true || nil)` short-circuits, because of the first operand is
`true`, which is a truthy velue.

!!true
!false
true
=end

p xor?(nil, 'abc') == true
=begin
!!((nil && !'abc') || ('abc' && !nil))
!!((nil && false) || ('abc' && true))  
# `(nil && false)` short-circuits, because of the first operand is
`nil`, which is a falsey value.

!!(nil || true)
!!true
!false
true
=end

p xor?(nil, nil) == false
=begin
!!((nil && !nil) || (nil && !nil))
!!((nil && true) || (nil && true))  
# `(nil && true)`, `(nil && true)` short-circuit, because of 
the first operand is `nil`, which is a falsey velue.

!!(nil || nil)
!!nil            
!true
false
=end

=begin
*Does short-circuit evaluation in `xor` operations even make 
sense?*

In general short-circuit evaluation makes sense. 
Logically the `&&` would work if 2 operands are truthy. If 
one operand is falsey, it makes sense to return falsey value right away.
The same is for `||` operator. We will be satisfied if one 
of the conditiion is truthy. Then there's no sense to check
another condition if the first one is already truthy.

In `xor?` method isn't enough to know if the first operand is 
truthy, or it it's falsey. We must know the truthiness of
**both** operands. 

The example below shows that `xor?(5.odd?, 4.even?)`, and 
`xor?('abc', 'abc')` failed because the `if` condition, 
inside the method definition` checks truthines only for one
of the operands.

If `5.odd?` is true, which returns `true`, then it short-circuits
and `true` is returned from `xor?`. The same is for the second 
failed test case.

This `if` structure always finds the first truthy value ans short-
circuits.

So, we must always check truthiness for both operands to make sure
that they are not both truthy (both of them) and not falsey 
(both of them) to cover all test cases. (Example 2 below).
=end

def xor?(bool1, bool2)
  if bool1
    true
  elsif bool2
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true     # true  (`elsif bool2`)
p xor?(5.odd?, 4.odd?) == true       # true  (`if bool1`)
# p xor?(5.odd?, 4.even?) == false     # failed test case
p xor?(5.even?, 4.odd?) == false     # true  (`else` brunch)
p xor?('abc', nil) == true           # true  (`if bool1`)
p xor?(nil, 'abc') == true           # true  (`elsif bool2`)
# p xor?('abc', 'abc') == false        # failed test case
p xor?(nil, nil) == false            # true  (`else` brunch)

# Example 2:
def xor?(bool1, bool2)
  if bool1 && bool2
    false
  elsif bool1
    true
  elsif bool2
    true
  else
    false
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
