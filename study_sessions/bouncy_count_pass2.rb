=begin
BOUNCY COUNT
Some numbers have only ascending digits, like 123, 3445, 2489, etc.
Some numbers have only descending digits, like 321, 5443, 9842, etc.

A number is "bouncy" if it has both ascending and descending 
digits, like 313, 92543, etc.
Write a method that takes a list of numbers and counts how many 
of them are bouncy.



High-level:
- Check if the whole number is ascending
- Check if the whole number is descending
- Check if all are digits are equal in number
- Count how many of all of them (sum)
- Subtract sum from total of all numbers 
=end
def descending?(num)
  sorted = num.digits.sort do |a, b|
    b <=> a
  end

  sorted.map(&:to_s).join == num.to_s
end

def acsending?(num)
  num.digits.sort.map(&:to_s).join == num.to_s
end

def bouncy_count(arr)
  count = 0
  arr.each do |num|
    count += 1 if num.to_s.size < 3

    if num.to_s.size > 2 && (acsending?(num) || descending?(num))
      count += 1
    end
  end

  arr.size - count
end

p bouncy_count([]) == 0
p bouncy_count([11, 0, 345, 21]) == 0
p bouncy_count([121, 4114]) == 2
p bouncy_count([176, 442, 80701644]) == 2
# All test cases return `true`.
