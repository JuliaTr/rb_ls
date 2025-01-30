# `loop` method, method definitions, and flow control without 
# other loop constructs.

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
