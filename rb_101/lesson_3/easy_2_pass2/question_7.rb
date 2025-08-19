# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.append('Dino', 'Hoppy')
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

## Possible solution:
# Option 1:
flintstones.push("Dino").push("Hoppy")
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

# Option 2:
flintstones.push("Dino", "Hoppy")
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

# Option 3:
flintstones.concat(%w(Dino Hoppy))
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]
