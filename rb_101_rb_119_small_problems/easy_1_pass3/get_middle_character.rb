=begin
Write a method that takes a non-empty string argument, and 
returns the middle character or characters of the argument. If 
the argument has an odd length, you should return exactly one 
character. If the argument has an even length, you should return 
exactly two characters.



If the argument has an odd length, you should return exactly 
one character. If the argument has an even length, you should 
return exactly two characters.

('I love Ruby') == 'e' 11 (index 5)
('Launch School') == ' '  13 (index 6)

'Launch' 6

High-level:
Idea1:
- If str size odd, divide by 2.
- return chrac retrieved by this index.
- Else divide by 2.
- return chars from index -1 to index.

integer: index


Algo:
- Create index = str size divide by 2

- If str size odd,
  - return chrac retrieved by this index.
- Else
  - return chars from index-1 to index.

=end

# Option 1:
# using a range of indexes (`str[start..finish]`)
def center_of(str)
  center_index = str.size / 2
  str.size.odd? ? str[center_index] : str[center_index - 1..center_index]
end

p center_of('I love Ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
# All test cases return `true`.



# Option 2:
# using a start index and a length (`str[start, length]`)
def center_of(str)
  center_index = str.size / 2
  str.size.odd? ? str[center_index] : str[center_index - 1, 2]
end

p center_of('I love Ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
# All test cases return `true`.
