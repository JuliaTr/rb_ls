=begin
The vowel substrings in the word codewarriors are o,e,a,io. The 
longest of these has a length of 2. Given a lowercase string 
that has alphabetic characters only and no spaces, return the 
length of the longest vowel substring. Vowels are any of aeiou.

_______________________________________________________________

PEDAC

P
Return an integer which represents the longest substring of vowels 
in a string.

Rules/reqs:
- all characters in a string are downcased
- vowels are `aeiou`
- substring should have only vowels

D
Input: string
Output: integer
Intermediate:
- input string to iterate over it
- range - to find substrings
- array - to store substrings
- temporary string

High-level:
- Find all substrings with vowels: ["o", "e", "a", "io"], ["uoi", "ea"]
- Find the longest substring

Intermediate:
- Create array of substrings
- Create temporary empty substring
- Iterate over a range of characters
- Count maximum length of substrings
=end

## More improved solution:
# More simplified logic
VOWELS = 'aeiou'

def return_vowels_substrings(str)
  arr_substrings = []
  substring = ''

  str.each_char.with_index do |char, index|
    vowel = VOWELS.include?(char)

    # Append a vowel to running substring:
    substring << char if vowel

    # Push substring and reset it if substring char is consonant, 
    # or the last character of the string, only if substring 
    # isn't empty:
    if !vowel || index == str.length - 1
      if !substring.empty?
        arr_substrings << substring
        substring = ''
      end
    end
  end

  arr_substrings
end

def solve(str)
  # Find all substrings with vowels only:
  arr_substrings = return_vowels_substrings(str)

  # Find length of each substring:
  substrings_length = arr_substrings.map(&:length)

  # Find max length:
  substrings_length.max
end


p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
# All test cases return `true`.



## Improved solution:
# Simplified logic, constant
VOWELS = 'aeiou'

def return_vowels_substrings(str)
  arr_substrings = []
  substring = ''

  str.each_char.with_index do |char, index|
    if VOWELS.include?(char)
      # Append a vowel to running substring:
      substring << char

      # Push substring and reset it if substring char is the 
      # last character:
      if index == str.length - 1
        arr_substrings << substring
        substring = ''
      end

    # Push substring and reset it if substring isn't a vowel and 
    # isn't empty: 
    else
      if !substring.empty?
        arr_substrings << substring
        substring = ''
      end
    end
  end

  arr_substrings
end

def solve(str)
  # Find all substrings with vowels only:
  arr_substrings = return_vowels_substrings(str)

  # Find length of each substring:
  substrings_length = arr_substrings.map(&:length)

  # Find max length:
  substrings_length.max
end


p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
# All test cases return `true`.



## Solution:
def return_all_substrings_with_vowels_only(str)
  arr_substrings = []
  substring = ''

  str.each_char.with_index do |char, index|
    if 'aeiou'.include?(char)
      if substring.empty? && (str[index + 1].nil? || !str[index + 1].match?(/[aeiou]/))
        substring << char
        arr_substrings << substring
        substring = ''

      elsif substring.empty? && (str[index + 1].nil? || str[index + 1].match?(/[aeiou]/))
        substring << char

      elsif !substring.empty? && str[index + 1].nil?
        substring.concat(char)
        arr_substrings << substring

      elsif !substring.empty? && (str[index + 1].nil? || str[index + 1].match?(/[aeiou]/))
        substring.concat(char)

      elsif !substring.empty? && (str[index + 1].nil? || !str[index + 1].match?(/[aeiou]/))
        substring.concat(char)
        arr_substrings << substring
        substring = ''
      end
    end
  end

  arr_substrings
end

def solve(str)
  # Find all substrings with vowels only:
  arr_substrings = return_all_substrings_with_vowels_only(str)

  # Find length of each substring:
  substrings_length = arr_substrings.map(&:length)

  # Find max length:
  substrings_length.max
end


p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
# All test cases return `true`.



## Experiments:
a = 's'
a.concat('o')
p a  # "so"
