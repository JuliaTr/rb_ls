### Add multiple items to the array (Dino and Hoppy):

## 'Array#concat'
flintstones = %w(Fres Barney Wilma Betty BamBam Pebbles)
flintstones.concat(['Dino', 'Hoppy'])
p flintstones
# ["Fres", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

## 'Array#push'
flintstones = %w(Fres Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino', 'Hoppy')
p flintstones
# ["Fres", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]

