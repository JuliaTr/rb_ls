=begin
Practice Problem 1:
Turn this array into a hash where the names are the keys and 
the values are the positions in the array.
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# (my solution):
h = {}
flintstones.each_with_index do |element, index|
  h[element] = index
end

p h 
# {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}




=begin
Practice Problem 2:
Add up all of the ages from the Munster family hash
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_, age| total_ages = total_ages + age }
p total_ages              # 6174


## Alternatives:
# Option 1 (my solution):
p ages.values.sum         # 6174

# Option 2:
p ages.values.inject(:+)  # 6174




=begin
Practice Problem 3:
Remove people with age 100 and greater.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.keep_if { |_, value| value < 100 }
p result   # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}


## Alternatives:
# Option 1 (keep the same object unchanged)(my solution):
result = ages.select { |_, value| value < 100 }
p result # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages   # {"Herman"=>32, "Lily"=>30, "Grandpa"=>402, "Eddie"=>10}

# Option 2:
result = ages.reject { |_, value| value >= 100 }
p result     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages       # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}




=begin
Practice Problem 4:
Pick out the minimum age from our current Munster family hash
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# (my solution):        
p ages.values.min  # 10




=begin
Practice Problem 5:
Find the index of the first name that starts with "Be"
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] == "Be" }


## Alternattive:
# (my soluion):
index = nil

flintstones.each_with_index do |element, idx|
  if element[0, 2] == "Be"
    index = idx
  end
end

p index # 3




=begin
Practice Problem 6:
Write code that changes the array below so that all of the names 
are shortened to just the first three characters. Do not create 
a new array.
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0, 3] }
p flintstones  # ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

## Alternatives:
# (my soluion):
flintstones.each do |element|
  element.gsub!(element, element[0, 3])
end

p flintstones  # ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]




=begin
Practice Problem 7:
Create a hash that expresses the frequency with which each letter 
occurs in this string

Algorithm:
- Find how many times each character appear in the string
  - Iterate over the string
  - Create a hash with occurrences
- Order hash entries in alphabetical order by keys
=end

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result 
# {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, 
# "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}


## Alternative:
# (my solution):
alphabet = "ABCDEFGHIGKLMNOPQRSTUVWXWZabcdefghijklmnopqrstuvwxyz"
hash = Hash.new(0)

alphabet.each_char do |char|
  if statement.include?(char)
    hash[char] = hash[char] + 1
  end
end

p hash
# {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>1, "h"=>1, "i"=>1, 
# "k"=>1, "l"=>1, "n"=>1, "o"=>1, "s"=>1, "t"=>1}




# Practice Problem 8:
# Example 1:
numbers = [1, 2, 3, 4]

result =  numbers.each do |number|
            p number
            numbers.shift(1)
            p numbers
          end
p result

# Output:
# 1
# [2, 3, 4]

# 3
# [3, 4]

# [3, 4]


# Example 2:
numbers = [1, 2, 3, 4]

result =  numbers.each do |number|
            p number
            numbers.pop(1)
          end

p result

# Output:
# 1
# 2
# [1, 2]




=begin
Practice Problem 9:
Create a string that has each word capitalized.

Algorithm:
- Define a method `capitalize_word` with takes a string as an argument
- Convert string into array (Return: array)
- Iterate over each word of the array
  - Capitalize each word
- Return a new string with capitalized words (Return: string)
=end

words = "the flintstones rock"

def capitalize_word(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p capitalize_word(words)  # "The Flintstones Rock"


## Alternative:
# (my solution):
def capitalize_word(str)
  array_words = str.split(' ')
  mod_array = array_words.map { |word| word.capitalize }
  mod_array.join(' ')
end

p capitalize_word(words)  # "The Flintstones Rock"




=begin
Practice Problem 10:
Modify the hash such that each member of the Munster 
family has an additional "age_group" key that has one of 
three values describing the age group the family member 
is in (kid, adult, or senior).

Note: a kid is in the age range 0 - 17, an adult is in
the range 18 - 64 and a senior is aged 65+.
=end

munster = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandps" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munster
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandps"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}
