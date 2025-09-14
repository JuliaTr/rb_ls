=begin
Write a method that takes a single String argument and 
returns a new string that contains the original value of the 
argument with the first character of every word capitalized 
and all other letters lowercase.

You may assume that words are any sequence of non-blank 
characters.
=end

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
# All test cases return `true`



## Possible solution:
# Option 2:
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
# All test cases return `true`



## Further exploration:
# Without `String#capitalize`, how would you solve this problem? 
# Try to come up with at least two solutions.

# Option 1:
ALPHABET = {
  'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 
  'f' => 'F', 'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 
  'k' => 'K', 'l' => 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O', 
  'p' => 'P', 'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T', 
  'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 
  'z' => 'Z'
 }

def word_cap(str)
  arr = str.split

  arr_capitalized_words = arr.map do |word|
    if ALPHABET[word[0]]
      word[0] = ALPHABET[word[0]]

      if word[1..-1] != word[1..-1].downcase
        word[1..-1] = word[1..-1].downcase!
      end
        
      word
    else
      word
    end
  end

  arr_capitalized_words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
# All test cases return `true`


# Option 2:
ALPHABET = {
  'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 
  'f' => 'F', 'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 
  'k' => 'K', 'l' => 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O', 
  'p' => 'P', 'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T', 
  'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 
  'z' => 'Z'
 }

def word_cap(str)
  arr_capitalized_words = str.split.map do |word|
    if ALPHABET[word[0]]
      word.sub!(word[0], ALPHABET[word[0]])

      if word[1..-1] != word[1..-1].downcase
        word[1..-1] = word[1..-1].downcase!
      end

      word
    else
      word
    end
  end

  arr_capitalized_words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
# All test cases return `true`



## Experiments:
str = 'hELLO'
str[1..-1].downcase!
p str   # "hELLO"
