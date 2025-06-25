=begin
1. Initialize deck
2. Deal card to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If palyer bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end
def deal_card(crd_values, suits)
  initilize_deck(crd_values, suits).pop
end

deal_card(card_values, suits) 

def display_message:

puts "Player: #{initilize_deck(crd_values, suits).sample}"
puts "Computer: #{initilize_deck(crd_values, suits).sample}"



## Step 2:
card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'Jack', 'Queen', 'King', 'Ace']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initilize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

initilize_deck(card_values, suits)

# 2. Deal card to player and dealer
# Ex. Player: [['Hearts', '2'], ['Diamonds', 'Ace']]
#     Computer: [['Clubs', '2'], ['Spades', 'Jack']]
def deal_card(crd_values, suits)
  puts "Player: #{initilize_deck(crd_values, suits).sample}"
  puts "Computer: #{initilize_deck(crd_values, suits).sample}"
end

deal_card(card_values, suits)
=begin
$ ruby twenty_one.rb
Player: ["Hearts", "4"]
Computer: ["Hearts", "8"]

$ ruby twenty_one.rb
Player: ["Diamonds", "10"]
Computer: ["Spades", "Jack"]

$ ruby twenty_one.rb
Player: ["Clubs", "Jack"]
Computer: ["Diamonds", "7"]
=end



## Step 1:
# 1. Initialize deck
card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'Jack', 'Queen', 'King', 'Ace']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initilize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

initilize_deck(card_values, suits)

=begin
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "4"], 
["Hearts", "5"], ["Hearts", "6"], ["Hearts", "7"], 
["Hearts", "8"], ["Hearts", "9"], ["Hearts", "10"], 
["Hearts", "Jack"], ["Hearts", "Queen"], ["Hearts", "King"], 
["Hearts", "Ace"], 

["Diamonds", "2"], ["Diamonds", "3"], ["Diamonds", "4"], 
["Diamonds", "5"], ["Diamonds", "6"], ["Diamonds", "7"], 
["Diamonds", "8"], ["Diamonds", "9"], ["Diamonds", "10"], 
["Diamonds", "Jack"], ["Diamonds", "Queen"], 
["Diamonds", "King"], ["Diamonds", "Ace"], 

["Clubs", "2"], ["Clubs", "3"], ["Clubs", "4"], ["Clubs", "5"], 
["Clubs", "6"], ["Clubs", "7"], ["Clubs", "8"], ["Clubs", "9"], 
["Clubs", "10"], ["Clubs", "Jack"], ["Clubs", "Queen"], 
["Clubs", "King"], ["Clubs", "Ace"], 

["Spades", "2"], ["Spades", "3"], ["Spades", "4"], 
["Spades", "5"], ["Spades", "6"], ["Spades", "7"], 
["Spades", "8"], ["Spades", "9"], ["Spades", "10"], 
["Spades", "Jack"], ["Spades", "Queen"], ["Spades", "King"], 
["Spades", "Ace"]]
=end






# ## Calculate_Aces:
# def total(cards)
#   # cards = [['H', '3'], ['5', 'Q'], ... ]
#   values = cards.map { |card| card[1] }

#   sum = 0
#   values.each do |value|
#     if value == "A"
#       sum += 11
#     elsif value.to_i == 0 # J, Q, K
#       sum += 10
#     end
#   end

#   # correct for Aces
#   values.select { |value| value == "A" }.count.times do
#     sum -= 10 if sum > 21
#   end

#   sum
# end


# ## Player turn
# =begin
# 1. ask "hit" or "stay"
# 2. if "stay", stop asking
# 3. otherwise, go to #1
# =end
# answer = nil
# loop do
#   puts "hit or stay?"
#   answer = gets.chomp
#   break if answer == 'stay' || busted?
# end

# if busted?
#   # probably end the game? or ask the user to play again?
# else
#   puts "You chose to stay!" # if player didn't bust, must have stayed to get here
# end

# # ... continue on to Dealer turn

