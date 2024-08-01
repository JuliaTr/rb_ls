### Add multiple items to the array (Dino and Hoppy):

## 'Array#concat'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(['Dino', 'Hoppy'])
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]


## 'Array#push'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino', 'Hoppy')
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino').push('Hoppy')
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]
