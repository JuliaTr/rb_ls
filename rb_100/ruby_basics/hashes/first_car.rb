# Create a hash that contains the following data and assign 
# it to a variable named `car`.

car = { 
  'type'    => 'sedan', 
  'color'   => 'blue', 
  'mileage' => 80_000
}



## Possible solution:
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}



## Experiments:
hash1 = { number: 1 }
hash2 = { :number => 1 }   # older syntax

p hash1 == hash2   # true


p :color == 'color'  # false

