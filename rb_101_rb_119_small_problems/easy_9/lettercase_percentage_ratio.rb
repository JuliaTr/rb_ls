=begin
Write a method that takes a string, and then returns a hash 
that contains 3 entries: one represents the percentage of 
characters in the string that are lowercase letters, one 
the percentage of characters that are uppercase letters, 
and one the percentage of characters that are neither.

You may assume that the string will always contain at least 
one character.
=end

PERCENTAGE = 100

def letter_case_count(str)
  counts = {}
  arr = str.chars
  string_length = str.length

  counts[:lowercase] = arr.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = arr.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = arr.count { |char| char =~ /[^a-zA-Z]/ }
  counts
end

def letter_percentages(str)
  hash = letter_case_count(str)

  hash.transform_values do |value|  # returns new hash
    (value * PERCENTAGE) / str.length.to_f
  end
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
# All test cases return `true`.



## Possible solution:
def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
# All test cases return `true`.



## Further exploration:
# Round float numbers.
def calculate(percentages, counts, length)
  percentages[:lowercase] = ((counts[:lowercase] / length.to_f) * 100).round(1)
  percentages[:uppercase] = ((counts[:uppercase] / length.to_f) * 100).round(1)
  percentages[:neither] = ((counts[:neither] / length.to_f) * 100).round(1)
end

def letter_percentages(str)
  counts = {}
  percentages = {}
  characters = str.chars
  length = str.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}
# All test cases return `true`.
