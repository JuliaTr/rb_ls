=begin
Josh wants to print an array of numeric strings in reverse 
numerical order. However, the output is wrong. Without removing 
any code, help Josh get the expected output.

Expected output: ["11", "10", "9", "8", "7"] 
Actual output: ["10", "11", "7", "8", "9"]
=end

arr = ["9", "8", "7", "10", "11"]
p arr.sort
p arr.sort_by 
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

p arr.sort { |x, y| y.to_i <=> x.to_i }

=begin
["10", "11", "7", "8", "9"]
#<Enumerator: ["9", "8", "7", "10", "11"]:sort_by>
["10", "11", "7", "8", "9"]
["11", "10", "9", "8", "7"]
=end
