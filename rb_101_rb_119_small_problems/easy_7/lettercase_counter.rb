=begin
Write a method that takes a string, and then returns a hash 
that contains 3 entries: one represents the number of 
characters in the string that are lowercase letters, one 
represents the number of characters that are uppercase 
letters, and one represents the number of characters that 
are neither.
=end

def letter_case_count(str)
  arr = str.chars
  h = { lowercase: 0, uppercase: 0, neither: 0 }

  arr.each do |char|
    if char =~ /[a-z]/
      h[:lowercase] = h[:lowercase] + arr.count(char)
    elsif char =~ /[A-Z]/
      h[:uppercase] = h[:uppercase] + arr.count(char)
    else
      h[:neither] = h[:neither] + arr.count(char)
    end
  end

  h
end

p letter_case_count('aBc') == { lowercase: 2, uppercase: 1, neither: 0 }

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
# All test cases return `true`.


## Experiments:
p '123'.downcase



## Possible solution:
# Option 1:
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
# All test cases return `true`.



# Option 2:
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
