# Exercise: select vowels (debug)
def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == str.size
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars = current_char
    end

    counter += 1
  end

  selected_chars
end

phrase = 'the quick brown fox'
p select_vowels(phrase) # should return 'euioo'
# "o"


## Bug fix
def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == str.size
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

phrase = 'the quick brown fox'
p select_vowels(phrase) # "euioo"
# Works as expected.