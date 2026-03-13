=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

p
e
r
- not letters are not capitalized

d
i: string
o: new string

h-l
- loop over str
- capital letters

a
- Create `new_str`
- Iterate over each char with index
  - char is letter AND index even 
    - Push Capitalize letter to `new_str`
  - Char is letter AND index is odd
    - Push downcased letter to `new_str`
  - If char is NOT letter
    - Push char to `new_str`
- Return `new_str`

staggered_case('ALL_CAPS') == 'AlL_CaPs'
=end

## More refactored
# Without checking is char is a letter:
def staggered_case(str)
  new_str = ''

  str.each_char.with_index do |char, idx|
    new_str << (idx.even? ? char.upcase : char.downcase)
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# All test cases return `true`.




## Refactored
def staggered_case(str)
  new_str = ''

  str.each_char.with_index do |char, idx|
    if char.match?(/[^a-zA-Z]/)
      new_str << char
    elsif idx.even?
      new_str << char.upcase
    else
      new_str << char.downcase
    end
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# All test cases return `true`.



## Solution
def staggered_case(str)
  new_str = ''

  str.each_char.with_index do |char, idx|
    if char.match?(/[a-zA-Z]/) && idx.even?
      new_str << char.upcase
    elsif char.match?(/[a-zA-Z]/) && idx.odd?
      new_str << char.downcase
    elsif char.match?(/[^a-zA-Z]/)
      new_str << char
    end
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# All test cases return `true`.



## Possible solution:
def staggered_case(string)
  result = ''
  need_upper = true

  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end

    need_upper = !need_upper
  end

  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# All test cases return `true`.
