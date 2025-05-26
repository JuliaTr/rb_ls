# # Exercise:  select fruits
# def select_fruit(produce_list)
#   selected_fruits = {}
#   produce_keys = produce_list.keys
#   counter = 0

#   loop do
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value = 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) 
# # Expected: {"apple"=>"Fruit", "pear"=>"Fruit"}

# # Output:
# # warning: found `= literal` in conditional, should be ==
# # {"apple"=>"Fruit", "carrot"=>"Vegetable", "pear"=>"Fruit", "broccoli"=>Vegetable"}

# # Doesn't work as expected



## Bug fix
def select_fruit(produce_list)
  selected_fruits = {}
  produce_keys = produce_list.keys
  counter = 0

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)  # {"apple"=>"Fruit", "pear"=>"Fruit"}
# Works as expected
