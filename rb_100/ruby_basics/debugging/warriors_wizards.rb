# Find the problem and fix it.

# Each player starts with the same basic stats.
player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.
character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player

=begin
$ ruby warriors_wizards.rb
Please type your class (warrior, thief, scout, mage):
warrior
warriors_wizards.rb:17:in `merge': no implicit conversion of nil into Hash (TypeError)

player.merge(character_classes[input])
=end



## Bug fix:
player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

character_classes = {
  warrior: { strength: 20 },
  thief:   { dexterity: 20 },
  scout:   { stamina: 20 },
  mage:    { charisma: 20}
}

puts 'Please type your (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym       # issue was here

# `Hash#merge!` (mutates the caller):
player.merge!(character_classes[input])  # Issue was here

puts 'Your character stats:'
puts player

=begin
$ ruby warriors_wizards.rb
Please type your (warrior, thief, scout, mage):
warrior
Your character stats:
{:strength=>20, :dexterity=>10, :charisma=>10, :stamina=>10}
=end



## Possible solution:
player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

# Re-assignment doesn't mutate the caller:
player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player

=begin
$ ruby warriors_wizards.rb
Please type your class (warrior, thief, scout, mage):
warrior
Your character stats:
{:strength=>20, :dexterity=>10, :charisma=>10, :stamina=>10}
=end
