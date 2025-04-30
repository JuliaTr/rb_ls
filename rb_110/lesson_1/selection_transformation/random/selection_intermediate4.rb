=begin
Exersice (intermediate): Write a method that takes a hash and 
returns a new hash containing only the key-value pairs where 
the key starts with a specific letter. Implement this using 
the `loop` method.

produce = {
  apple: 'Fruit',
  carrot: 'Vegetable',
  avocado: 'Fruit',
  potato: 'Vegetable',
  almond: 'Nut'
}

select_by_key(produce, 'a') 
#=> {:apple=>"Fruit", :avocado=>"Fruit", :almond=> "Nut"}
=end

produce = {
  apple: 'Fruit',
  carrot: 'Vegetable',
  avocado: 'Fruit',
  potato: 'Vegetable',
  almond: 'Nut'
}

def select_by_key(hsh, selection_criteria)
  new_hsh = {}
  counter = 0
  items_keys = hsh.keys
  items_values = hsh.values

  # p items_keys  # [:apple, :carrot, :avocado, :potato, :almond]
  # p items_values # ["Fruit", "Vegetable", "Fruit", "Vegetable", "Nut"]

  loop do
    current_key = items_keys[counter]
    current_value = items_values[counter]
    
    if current_key[0] == 'a'
      new_hsh[current_key] = current_value
    end

    counter += 1
    break if counter >= items_keys.size
  end

  new_hsh
end

p select_by_key(produce, 'a') 
# {:apple=>"Fruit", :avocado=>"Fruit", :almond=>"Nut"}
