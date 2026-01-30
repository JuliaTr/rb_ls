=begin
The method is intended to take a string and return an array 
containing all of the characters that appear only once in the 
string, case-insensitively.

Find a bug.
=end

def find_single_chars(string)
  singles = []

  string.downcase.chars.each do |char|
    if string.count(char) == 1  # issue is here
      singles << char
    end
  end

  singles
end

# Test Cases - all should be true
p find_single_chars("Hello World") == ["h", "e", " ", "w", "r", "d"]
p find_single_chars("abc") == ["a", "b", "c"]
p find_single_chars("Cool Cat") == ["l", " ", "a", "t"]
p find_single_chars("aabbc") == ["c"]



## Bug fix
def find_single_chars(string)
  singles = []

  string.downcase.chars.each do |char|
    if string.downcase.count(char) == 1
      singles << char
    end
  end

  singles
end

=begin
p find_single_chars("Hello World") == ["h", "e", " ", "w", "r", "d"]
  ..    . . .
("Hello World") == ["h", "e", " ", "w", "r", "d"]


find_single_chars("Cool Cat") == ["o", "l", " ", "a", "t"]
   . .  ..
("Cool Cat") == ["l", " ", "a", "t"]


find_single_chars("aabbc") == ["c"]
      .
("aabbc") == ["c"]
=end

# Test Cases - all should be true
p find_single_chars("Hello World") == ["h", "e", " ", "w", "r", "d"]
p find_single_chars("abc") == ["a", "b", "c"]
p find_single_chars("Cool Cat") == ["l", " ", "a", "t"]
p find_single_chars("aabbc") == ["c"]
# All test cases return `true`.
