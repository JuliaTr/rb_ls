=begin
Given 2 strings, find out if there is a substring that appears
in both strings. You will return `true` if you find a substring
that appears in both strings, or false if you do not. We only
care about substrings that are longer than one letter long.

_____________________________________________________________

Rules:
- Substring must be:
  at least two characters long,
  at the same order
- Case doesn't matter

- Split strings into characters
- Iterate through str_1 chars with index
  - Iterate through str2_chars
    - If character matches character in string2 on iteration
      - Add one to index and check
      - If str1_char[idx1 + 1] matches str2_char[idx2 + 1],
        - Return `true`
      - idx1 cannot equal the size of the string - 1
- Otherwise, return `false`
=end

# Step 2 (solution from the video):
def substring_test(str1, str2)
  str1_chars = str1.downcase.chars
  str2_chars = str2.downcase.chars

  str1_chars.each_with_index do |char1, idx1|
    str2_chars.each_with_index do |char2, idx2|
      if char1 == char2 && 
          str1_chars[idx1 + 1] == str2_chars[idx2 + 1] &&
          idx1 != (str1_chars.size - 1)
        return true
      end
    end
  end

  false
end

p substring_test('Something', 'fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something','') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false      
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
# All test cases print `true`.


# Step 2 (debugging - Yuliia's variant):
# Need to create an intermediate Range object.
def substring_test(str1, str2)
  str1_chars = str1.downcase.chars
  str2_chars = str2.downcase.chars

  (0...str1_chars.size - 1).each do |idx1|
    (0...str2_chars.size - 1).each do |idx2|
      # p str1_chars[idx1]
      # p str2_chars[idx2]

      # p str1_chars[idx1 + 1]
      # p str2_chars[idx2 + 1]

      if str1_chars[idx1] == str2_chars[idx2] &&
          str1_chars[idx1 + 1] == str2_chars[idx2 + 1]
        # p "Returning"
        return true
      end
    end
  end

  false
end

p substring_test('Something', 'fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something','') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false      
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
# All test cases print `true`.


# Step 1:
def substring_test(str1, str2)
  str1_chars = str1.downcase.chars
  str2_chars = str2.downcase.chars

  str1_chars.each_with_index do |char1, idx1|
    str2_chars.each_with_index do |char2, idx2|
      if char1 == char2 && 
          str1_chars[idx1 + 1] == str2_chars[idx2 + 1]
        # p char1
        # p char2
        # p str1_chars[idx1 + 1]
        # p str2_chars[idx2 + 1]
        # p "Returning"
        return true
      end
    end
  end
  false
end

# p substring_test('Something', 'fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something','') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') #== false      
# false, because on the last iteration 't' == 't' && nil == nil

# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
