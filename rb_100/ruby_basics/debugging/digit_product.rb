=begin
Given a String of digits, our `digit_product` method should 
return the product of all digits in the String argument. 
You've been asked to implement this method without using 
`reduce` or `inject` (the two methods are aliases).

Now the return value is 0. What's wrong with this code and 
how can you fix it?
=end

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')   # 0
# expected return value: 120



# To test original code:
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  p digits   # [1, 2, 3, 4, 5]

  product = 0   # the issue is here

  digits.each do |digit|
    p digit
    product *= digit
    p product
  end

  product
end

p digit_product('12345')

=begin
[1, 2, 3, 4, 5]
1
0
2
0
3
0
4
0
5
0
0
=end




## Bug fix:
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  p digits   # [1, 2, 3, 4, 5]

  product = 1

  digits.each do |digit|
    p digit
    product *= digit
    p product
  end

  product
end

p digit_product('12345')

=begin
[1, 2, 3, 4, 5]
1
1
2
2
3
6
4
24
5
120
120  # as expected
=end
