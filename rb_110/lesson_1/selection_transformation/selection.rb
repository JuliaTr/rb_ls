# Exercise: select all 'g' characters out of a string.

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]
  
  if current_char == 'g'
    selected_chars << current_char
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_chars  # "g"



# Experiments:
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  if alphabet[counter] == 'g'
    selected_chars << alphabet[counter]
  end

  counter += 1
  break if counter >= alphabet.size
end

p selected_chars   # "g"



# Exercise: select all of the vowels in a given string.

def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]
    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end

p select_vowels('the quick brown fox') == "euioo"  # true

sentence = 'I wandered lonely as a cloud'
p select_vowels(sentence) == "Iaeeoeaaou"  # true

p sentence  # "I wandered lonely as a cloud"

number_of_vowels = select_vowels('hello world').size
p number_of_vowels  # 3



# Exercise: select the key-value pairs where the value is `'Fruit'`.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  new_hsh = {}
  counter = 0
  fruits = hsh.keys

  p fruits # ["apple", "carrot", "pear", "broccoli"]

  loop do
    break if counter >= hsh.size

    p current_fruit = fruits[counter]
    p current_item = hsh[current_fruit]

    if current_item == 'Fruit'
      new_hsh[current_fruit] = current_item
    end

    counter += 1
  end

  new_hsh
end

p select_fruit(produce) # {"apple" => "Fruit", "pear" => "Fruit"}

# Output:
# ["apple", "carrot", "pear", "broccoli"]
# "apple"
# "Fruit"
# "carrot"
# "Vegetable"
# "pear"
# "Fruit"
# "broccoli"
# "Vegetable"

# {"apple"=>"Fruit", "pear"=>"Fruit"}
