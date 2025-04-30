number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys 
p pets
counter = 0

loop do
  break if counter == number_of_pets.size

  current_pet = pets[counter]
  p current_pet

  current_pet_number = number_of_pets[current_pet]
  p current_pet_number

  puts "I have #{current_pet_number} #{current_pet}"
  counter += 1
end

# Output:
# ["dogs", "cats", "fish"]  (to test)

# "dogs"                    (to test)
# 2                         (to test)

# I have 2 dogs

# "cats"                    (to test)
# 4                         (to test)

# I have 4 cats

# "fish"                    (to test)
# 1                         (to test)

# I have 1 fish


# Experiments:
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

p number_of_pets["dogs"]  # 2
p number_of_pets["cats"]  # 4
p number_of_pets["fish"]  # 1
