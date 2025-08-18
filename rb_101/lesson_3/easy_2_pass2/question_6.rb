# How can we add the family pet "Dino" to our usual array?
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Option 1:
flintstones << 'Dino'
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]


# Option 2:
flintstones.concat(['Dino'])
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]


# Option 3:
flintstones.push('Dino')
p flintstones
# ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]
