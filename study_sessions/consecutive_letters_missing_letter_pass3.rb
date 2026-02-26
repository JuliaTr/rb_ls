# NO SWAPCASE HERE

=begin
Write a method that takes an array of consecutive letters 
as input and returns the missing letter.

P 
return misiing letter

e
'a','b','c','d',| 'f'
'o',| 'q','r','s'

r:
- return empty array
- in the middle

D
In: arr
Out: str
I: range, arr, iterate, generate subarray, slice

High level:
Idea:
- alpha ('a'..'z')

- downcase all input arr
- take first and last letter to define missing piece (complete_slice)
- subtract complete_slice from input arr (missing letter)

- if input arr with upcased letter, swap case.
- if not, return missing letter
=end

ALPHA = ('a'..'z').to_a

def find_complete_slice(arr)
  first_letter = arr.first
  start_idx = ALPHA.index(first_letter)

  last_letter = arr.last
  end_idx = ALPHA.index(last_letter)
  
  complete_slice = ALPHA[start_idx..end_idx]
end

def determine_missing_letter(arr)
  return [] if arr.empty?

  arr_downcased = arr.map(&:downcase)
  complete_slice = find_complete_slice(arr_downcased)
  missing_letter = (complete_slice - arr_downcased)[0]

  arr[0] == arr[0].upcase ? missing_letter.upcase : missing_letter
end

p determine_missing_letter(['a','b','c','d','f']) == 'e'
p determine_missing_letter(['o','q','r','s']) == 'p'
p determine_missing_letter(['H','J','K','L']) == 'I'
p determine_missing_letter([]) == []
# All test cases return `true`
