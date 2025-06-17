=begin
Problem (from TTT bonus features): Create a method 
`joinor` that will produce the following result:

joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
_____________________________________________________________

PEDAC:

P: return a string with joint array integers

Rules:
  Input: 
    - array of integers
    - array of integers, `';'`
    - array of integers, `', '`, `'and'`
  
  Output:
    - string
    - the last integer of the array should be separated with `'or'`
      or `'and'` (if specified)
    - if no separator are passed in, integers should be separated 
      by `', '`
    - if array contains only 2 integers, they are separated with `'or'`
    - if `';'` is passed in, integers are separate with `';'`
      "1; 2; or 3"

Data Structure:
array -> string

High level str/Algorithm:
- Define a metho `joinor` which takes array `arr` and default parameters.
  Defaul parameters: `', '`, `' or '`
- If `arr` contain only 2 elements
  - separate the last element witth `' or '` by default
- If `arr` contain more than 2 elements
  - separate with `'','` by default
  - separate the last element with `or` by default
- Return a string with joined array elements (use `Array#join` method)
=end

## Refactored and improved:
def joinor(arr, sep1=', ', sep2='or')
  if arr.length == 2
    arr.join(' ' + sep2 + ' ')
  else
    arr[-1] = "#{sep2} #{arr.last}"
    arr.join(sep1)
  end
end

p joinor([1, 2]) == "1 or 2"                       # true
p joinor([1, 2, 3]) == "1, 2, or 3"                # true
p joinor([1, 2, 3], '; ') == "1; 2; or 3"          # true
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"  # true

p joinor([1, 2, 3, 256], ', ', 'and') == "1, 2, 3, and 256" # true


def joinor(arr, sep1=', ', sep2='or')
  if arr.length == 2
    str_int = arr.join(sep2)
    str_int[str_int.length - 3..str_int.length - 2] = ' ' + sep2 + ' '
    str_int
  else
    str_int = arr.join(sep1)
    str_int[str_int.length - 2] = ' ' + sep2 + ' ' # issue is here
    str_int
  end
end

p joinor([1, 2]) == "1 or 2"                       # true
p joinor([1, 2, 3]) == "1, 2, or 3"                # true
p joinor([1, 2, 3], '; ') == "1; 2; or 3"          # true
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"  # true

p joinor([1, 2, 3, 256], ', ', 'and') == "1, 2, 3, and 256" # false
p joinor([1, 2, 3, 256], ', ', 'and')  # "1, 2, 3, 2 and 6"



## Solution from the assignment
def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

p joinor([1, 2]) == "1 or 2"                       # true
p joinor([1, 2, 3]) == "1, 2, or 3"                # true
p joinor([1, 2, 3], '; ') == "1; 2; or 3"          # true
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"  # true
