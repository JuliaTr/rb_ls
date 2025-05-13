=begin
Exercise (intermediate)​: Create a method that takes a string 
and returns that string with the first and last letter of each 
word capitalized. 

For example:
phrase = "launch school is great"
# should return: "LauncH SchooL IS GreaT"
=end

def capitalize_first_letter(str)
  arr = str.split
  arr.each do |word|
    str.gsub!(word, word.capitalize)
  end

  str
end

phrase = "launch school is great"
cap_first_letter =  capitalize_first_letter(phrase) 

p cap_first_letter # "Launch School Is Great"
p phrase           # "Launch School Is Great"

def capitalize_last_letter(str)
  arr = str.split
  arr.each do |word|
    str.gsub!(word[-1], word[-1].capitalize)
  end

  str
end

p capitalize_last_letter(cap_first_letter)
p phrase          # "LauncH SchooL IS GreaT"
