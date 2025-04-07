hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'

p hsh
# {:apple=>"Fruit", :carrot=>"Produce", :pear=>"Produce", :broccoli=>"Produce"}



hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }

hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'

p hsh
# {:apple=>"Fruit", :carrot=>"Vegetable", :pear=>"Fruit", :broccoli=>"Vegetable"}
