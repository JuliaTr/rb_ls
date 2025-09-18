=begin
Write a method that takes a string as an argument, and 
returns true if all parentheses in the string are properly 
balanced, false otherwise. To be properly balanced, 
parentheses must occur in matching `'('` and `')'` pairs.

Note that balanced pairs must each start with a `(`, not a `)`.

______________________________________________________________

PEDAC:

Reqs / rules:
Matching parentheses when:
- Number of `(` and `)` should be the same in a substring.
- Number of `(` and `)` should be the same in a word.
- A substring should start and end with the same number of 
  `(` and `)`.
- 

=end

## Redo: iterate from the beginning of the word to see when
# the number of open parentheses is less than the number of closing
# parentheses


def leading_substrings(str)
  arr = []

  0.upto(str.size - 1) do |index|
    arr << str[0..index]
  end

  arr
end

def balanced?(str)
  return true if !str.include?('(') && !str.include?(')')
  return false if str.count('(') != str.count(')')

  substrings = leading_substrings(str)
  more_closing_parentheses = substrings.any? do |substring|
    substring.count(')') > substring.count('(')
  end
  
  more_closing_parentheses ? false : true
end

# No parentheses:
p balanced?('Hey!') == true                    # true

p balanced?('What (is) this?') == true         # true
p balanced?('((What) (is this))?') == true     # true

p balanced?('What is) this?') == false         # true
p balanced?('What (is this?') == false         # true
p balanced?('((What)) (is this))?') == false   # true

p balanced?(')Hey!(') == false                 # true
p balanced?('What ((is))) up(') == false       # true

p balanced?('What ())(is() up') == false       # true



## Possible solution:
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('Hey!') == true                    # true

p balanced?('What (is) this?') == true         # true
p balanced?('((What) (is this))?') == true     # true

p balanced?('What is) this?') == false         # true
p balanced?('What (is this?') == false         # true
p balanced?('((What)) (is this))?') == false   # true

p balanced?(')Hey!(') == false                 # true
p balanced?('What ((is))) up(') == false       # true

p balanced?('What ())(is() up') == false       # true



## Experiments:
p ')(' == ') ('  # false


def leading_substrings(str)
  arr = []

  0.upto(str.size - 1) do |index|
    arr << str[0..index]
  end

  arr
end

def substrings(str)
  results = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end

def balanced?(str)
  return true if !str.include?('(') && !str.include?(')')

  # In the whole string:
  same_number_of_parentheses_in_string = str.count('(') == str.count(')')
  # p same_number_of_parentheses_in_string

  # In any word:
  arr_of_words = str.split
  same_number_of_parentheses_in_word = arr_of_words.any? do |word|
    word.count('(') == word.count(')')
  end
  # p same_number_of_parentheses_in_word

  start_end_parentheses_in_word = arr_of_words.any? do |word|
    word.start_with?('(') && word.end_with?(')')
  end
  # p start_end_parentheses_in_word

  # In substrings: `)(`:
  substrings = substrings(str)
  reversed_parentheses = substrings.include?(')(')
  # p reversed_parentheses

  (same_number_of_parentheses_in_string &&
  (same_number_of_parentheses_in_word || start_end_parentheses_in_word) &&
  !reversed_parentheses)
end

# No parentheses:
p balanced?('Hey!') == true                  # true

# Same number of parenthese in string.
# The word starts '(' and ends with ')' parentheses.
# The word doesn't have `)(`
p balanced?('What (is) this?') == true       # true
p balanced?('((What) (is this))?') == true   # true

# Not same number  of `'('` and `')'` in the string.
p balanced?('What is) this?') == false         # true
p balanced?('What (is this?') == false         # true
p balanced?('((What)) (is this))?') == false   # true

# Same number of parenthese in string.
# The word doesn't have `)(`
p balanced?(')Hey!(') == false                 # false
p balanced?('What ((is))) up(') == false       # false

# Has `)(`:
p balanced?('What ())(is() up') == false       # true



## Further exploration:
# Expand the method to take into account square brackets, curly 
# brackets, quotation marks(single and double).

def balanced?(string)
  parens = 0
  square_brackets = 0
  curly_brackets = 0
  single_quotation_marks = 0
  double_quotation_marks = 0

  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'

    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'

    curly_brackets += 1 if char == '{'
    curly_brackets -= 1 if char == '}'

    single_quotation_marks += 1 if char == "'"
    single_quotation_marks -= 1 if char == "'"

    double_quotation_marks += 1 if char == "\""
    double_quotation_marks -= 1 if char == "\""

    break if parens < 0 || square_brackets < 0 ||
             curly_brackets < 0 || single_quotation_marks < 0 ||
             double_quotation_marks < 0
  end

  parens.zero? && square_brackets.zero? &&
  curly_brackets.zero? && single_quotation_marks.zero? &&
  double_quotation_marks.zero?
end

p balanced?("What "'[(is)]'" this?") == true     # true
p balanced?('])Hey!("}') == false                # true
p balanced?("What' ())(is() [up") == false       # true
