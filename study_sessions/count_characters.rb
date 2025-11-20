=begin
In this exercise, you need to count lowercase letters in a 
given string and return the letter count in a hash with 'letter' 
as key and count as 'value'. The key must be 'symbol' instead of 
string in Ruby.


P
Return a hash with keys (leters - symbols), values (the count of letter in string)

Rules:
- keys should be symbols
- all letter are downcased in input
- have only letters, nothing else
- 1-element string (input)

D
Input: string
Output: hash
Intermediate:
- symbol: convert string to symbol
- array: convert string to iterate ---
- hash: ---
- integer: count
- integer: iterate ---
- range: iterate over indexes ---

High-level:
Idea1:
- Convert string to array
- Return hash (`#tally`)
- Mutate keys (convert strings into symbols)

Idea2:
- Create an empty hash
- Iterate over each character
- Build hash with keys converted to symbols and values counted
- Return hash

Idea2:
Algo:
- Create an empty hash
- Iterate over each character (`char`)
  - Build hash with keys converted to symbols and values counted (`#count`)
- Return hash
=end

def letter_count(str)
  hash = {}

  str.each_char do |char|
    hash[char.to_sym] = str.count(char)
  end
  
  hash
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
