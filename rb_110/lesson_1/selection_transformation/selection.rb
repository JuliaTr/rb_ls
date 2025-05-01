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
p produce

# Output:
# ["apple", "carrot", "pear", "broccoli"] (to test)
# "apple"                                 (to test)
# "Fruit"                                 (to test)
# "carrot"                                (to test)
# "Vegetable"                             (to test)
# "pear"                                  (to test)
# "Fruit"                                 (to test)
# "broccoli"                              (to test)
# "Vegetable"                             (to test)

# {"apple"=>"Fruit", "pear"=>"Fruit"}

# {"apple"=>"Fruit", "carrot"=>"Vegetable", "pear"=>"Fruit", "broccoli"=>"Vegetable"}



# Exercise: specify whether we're interested in selecting fruits or vegetables.
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

p general_select(produce, 'Fruit')
# => {"apple"=>"Fruit", "pear"=>"Fruit"}

p general_select(produce, 'Vegetable')
# => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}

p general_select(produce, 'Meat')
# => {}



# Exercise: Write a method called select_letter, that takes a 
# string and returns a new string containing only the letter 
# that we specified.
question = 'How many times does a particular character appear in this sentence?'

def select_leter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size

    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

p select_leter(question, 'a')  # "aaaaaaaa"
p select_leter(question, 't')  # "ttttt"
p select_leter(question, 'z')  # ""

p select_leter(question, 'a').size  # 8
p select_leter(question, 't').size  # 5
p select_leter(question, 'z').size  # 0
