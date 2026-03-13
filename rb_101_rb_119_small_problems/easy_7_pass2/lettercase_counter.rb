=begin
Write a method that takes a string, and then returns a hash that 
contains 3 entries: one represents the number of characters in 
the string that are lowercase letters, one represents the number 
of characters that are uppercase letters, and one represents the 
number of characters that are neither.
=end

def letter_case_count(str)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if char.match?(/[a-z]/)
      hash[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
# All test cases return `true`.




## Possible solution:
# `Array#count`
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
# All test cases return `true`.




## Experiments:
# `String#count`
def letter_case_count(str)
  counts = {}
  counts[:lowercase] = str.count('a-z')
  counts[:uppercase] = str.count('A-Z')
  counts[:neither] = str.count('^A-Za-z')
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
# All test cases return `true`.
