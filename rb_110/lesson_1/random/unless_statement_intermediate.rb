# ​Exercise (intermediate​): What will the following code output?
numbers = [1, 2, 3, 4, 5]
count = 0

numbers.each do |num|
  unless num.even?     # should evaluates as false
    count += 1
  end
end

puts "There are #{count} odd numbers."  
# There are 3 odd numbers.
