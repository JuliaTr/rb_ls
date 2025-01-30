=begin
These challenges are medium level compleity to identify the 
output before running the program. The contain `loop` method, 
method definitions, and flow control without other loop constructs.
=end

# Snippet 1:
def mystery_math(num)
  result = 0
  loop do
    break if num <= 0
    result += num
    num -= 1
  end
  result
end

puts mystery_math(5)
# Output: 15

puts mystery_math(2)
# Output: 3



# Snippet 2:
def word_transformer(word)
  result = ""
  index = 0
  loop do
    break if index >= word.length
    char = word[index]
    result << (char.upcase == char ? char.downcase : char.upcase)
    index += 1
  end
  result
end

puts word_transformer("hELLO")
# Output: Hello

puts word_transformer("WORLD")
# Output: world



# Snippet 3:
def number_game(limit)
  current = 0
  loop do
    current += 1
    if current % 3 == 0 && current % 5 == 0
      puts "FizzBuzz"
    elsif current % 3 == 0
      puts "Fizz"
    elsif current % 5 == 0
      puts "Buzz"
    else
      puts current
    end
    break if current == limit
  end
end

number_game(15)
# Output: 
# 1
# 2
# "Fizz"
# 4
# "Buzz"
# "Fizz"
# 7
# 8
# "Fizz"
# "Buzz"
# 11
# "Fizz"
# 13
# 14
# "FizzBuzz"
