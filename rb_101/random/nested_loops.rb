# What is the output?

fruits = ["apples", "banana"]
colors = ["red", "yellow", "green"]

fruits.each do |fruit|
  colors.each do |color|
    puts "#{color} #{fruit}"
  end
end

# Output:
# red apples
# yellow apples
# green apples
# red banana
# yellow banana
# green banana


numbers = [1, 2, 3]
letters = ['a', 'b']

numbers.each do |num|
  letters.each do |letter|
    puts "#{num} - #{letter}"
  end
end

# Output:
# 1 - a
# 1 - b
# 2 - a
# 2 - b
# 3 - a
# 3 - b
