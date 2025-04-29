=begin
Exercise (intermediate)​: Implement a method that takes a 
string and returns a new string containing only the vowels 
(a, e, i, o, u) from the original string using the `loop` 
method.

Exemples:
select_vowels("hello world") # => "eoo"
select_vowels("programming") # => "oai"



Output: returned new string

Rules:
  Explicit:
    - new string should contain only vowels (a, e, i, o, u) 
=end

def select_vowels(str)
  new_str = ''
  counter = 0
  vowels_chars = 'aeiou'

  loop do
    if vowels_chars.include?(str[counter])
      new_str << str[counter]
    end

    counter += 1
    break if counter >= str.size
  end

  new_str
end

p select_vowels("hello world") == "eoo"    # true
p select_vowels("programming") == "oai"    # true
