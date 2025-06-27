require 'pry-byebug'

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

## Step 7:
J_Q_K_A_VALUES = 11
J_Q_K_A_VALUES_BUSTED = 10
PLAYER_TOTAL = 21
DEALER_TOTAL = 17

def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'J', 'Q', 'K', 'A']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def game_setup(deck, hand)
  2.times do 
    dealt_card = deal_card!(deck)
    hand << dealt_card 
  end
end

def give_additional_card(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def display_message_player(player_hand)
  prompt "You have: #{player_hand[0][1]} and #{player_hand[1][1]}"
end

def display_message_dealer(dealer_hand)
  prompt "Dealer has: #{dealer_hand[0][1]} and unknown card"
end

## Calculate sum including Aces:
def total(hand, total)
  # hand = [['H', '3'], ['5', 'Q'], ... ]

  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += J_Q_K_A_VALUES
    elsif value.to_i == 0 # J, Q, K
      sum += J_Q_K_A_VALUES_BUSTED
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= J_Q_K_A_VALUES_BUSTED if sum > total
  end

  sum
end

# should return `true` or `false` if score > 21
def busted?(hand, total)
  return true if total(hand, total) > total
  false
end

def player_turn(deck, player_hand)
  loop do
    p player_hand
    p total(player_hand, PLAYER_TOTAL)

    break if busted?(player_hand, PLAYER_TOTAL)

    prompt "Hit or stay?"
    answer = gets.chomp

    break if answer == 'stay' || busted?(player_hand, PLAYER_TOTAL)
    give_additional_card(deck, player_hand)
  end
end

def play_again?
  prompt "Do you want to play again? (Press Y or 'Enter' key to continue)"
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
end

def compare_results(player_hand, dealer_hand)
  player_toal = total(player_hand, PLAYER_TOTAL)
  dealer_total = total(dealer_hand, DEALER_TOTAL)

  if player_toal > dealer_total
    'Player'
  elsif dealer_total > player_toal
    'Dealer'
  end
end

def winner(player_hand, dealer_hand)
  game_results = compare_results(player_hand, dealer_hand)

  if game_results == 'Player'
    prompt "Player won. Congratulations!"
  elsif game_results == 'Dealer'
    prompt "Dealer won."
  else
    prompt "It's a tie"
  end
end


# Main loop
dealer_hand = []
player_hand = []

loop do
  deck = initialize_deck(card_values, suits)

  game_set = game_setup(deck, dealer_hand)
  display_message_dealer(dealer_hand)

  game_set = game_setup(deck, player_hand)
  display_message_player(player_hand)

  # 3. Player turn: hit or stay
  player_turn(deck, player_hand)

  # 4. If palyer bust, dealer wins.
  if busted?(player_hand, PLAYER_TOTAL)
    prompt "Player is busted. The game is over."
    prompt "Dealer won."
    break unless play_again?
  end

  # if player didn't bust, must have stayed to get here
  prompt "You chose to stay!"

  # 5. Dealer turn: hit or stay
  # - repeat until total >= 17
  display_message_dealer(dealer_hand)
  until total(dealer_hand, DEALER_TOTAL) >= DEALER_TOTAL
    give_additional_card(deck, dealer_hand)
  end

  p total(dealer_hand, DEALER_TOTAL)
  # 6. If dealer bust, player wins.
  if busted?(dealer_hand, DEALER_TOTAL)
    prompt "Dealer is busted. The game is over."
    prompt "Player won."
    break unless play_again?
  end

  # 7. Compare cards and declare winner.
  winner(player_hand, dealer_hand)
end




## Step 6:
J_Q_K_A_VALUES = 11
J_Q_K_A_VALUES_BUSTED = 10
PLAYER_TOTAL = 21
DEALER_TOTAL = 17

def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'J', 'Q', 'K', 'A']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def game_setup(deck, hand)
  2.times do 
    dealt_card = deal_card!(deck)
    hand << dealt_card 
  end
end

def give_additional_card(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def display_message_player(plyer_hand)
  prompt "Player has: #{plyer_hand}"
end

def display_message_dealer(dealer_hand)
  prompt "Dealer has: #{dealer_hand}"
end

## Calculate sum including Aces:
def total(hand, total)
  # hand = [['H', '3'], ['5', 'Q'], ... ]

  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += J_Q_K_A_VALUES
    elsif value.to_i == 0 # J, Q, K
      sum += J_Q_K_A_VALUES_BUSTED
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= J_Q_K_A_VALUES_BUSTED if sum > total
  end

  sum
end

# should return `true` or `false` if score > 21
def busted?(hand, total)
  return true if total(hand, total) > total
  false
end

def player_turn(deck, player_hand)
  loop do
    p player_hand
    p total(player_hand, PLAYER_TOTAL)

    prompt "Hit or stay?"
    answer = gets.chomp

    if (answer == 'stay') || busted?(player_hand, PLAYER_TOTAL)
      break
    else
      give_additional_card(deck, player_hand)
    end
  end
end

def play_again?
  prompt "Do you want to play again? (Press Y or 'Enter' key to continue)"
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
end


# Main loop
player_hand = []
dealer_hand = []

loop do
  deck = initialize_deck(card_values, suits)
  game_set = game_setup(deck, player_hand)
  display_message_player(player_hand)

  game_set = game_setup(deck, dealer_hand)
  display_message_dealer(dealer_hand)

  # 3. Player turn: hit or stay
  player_turn(deck, player_hand)

  # 4. If palyer bust, dealer wins.
  if busted?(player_hand, PLAYER_TOTAL)
    prompt "Player is busted. The game is over."
    prompt "Dealer won."
    break unless play_again?
  end
  # if player didn't bust, must have stayed to get here
  prompt "You chose to stay!"


  # 5. Dealer turn: hit or stay
  # - repeat until total >= 17
  display_message_dealer(dealer_hand)
  until total(dealer_hand, DEALER_TOTAL) >= DEALER_TOTAL
    # p dealer_hand
    give_additional_card(deck, dealer_hand)
    # display_message_player(player_hand)
    display_message_dealer(dealer_hand)
    # p total(dealer_hand, DEALER_TOTAL)
  end

  display_message_dealer(dealer_hand)
  p total(dealer_hand, DEALER_TOTAL)
  # 6. If dealer bust, player wins.
  if busted?(dealer_hand, DEALER_TOTAL)
    prompt "Dealer is busted. The game is over."
    prompt "Player won."
    break unless play_again?
  end

  break
end




## Step 5:
J_Q_K_A_VALUES = 11
J_Q_K_A_VALUES_BUSTED = 10
PLAYER_TOTAL = 21
DEALER_TOTAL = 17

def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'J', 'Q', 'K', 'A']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def game_setup(deck, hand)
  2.times do 
    dealt_card = deal_card!(deck)
    hand << dealt_card 
  end
end

def give_additional_card(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def display_message_player(plyer_hand)
  prompt "Player has: #{plyer_hand}"
end

def display_message_dealer(dealer_hand)
  prompt "Dealer has: #{dealer_hand}"
end

## Calculate sum including Aces:
def total(hand, total)
  # hand = [['H', '3'], ['5', 'Q'], ... ]

  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += J_Q_K_A_VALUES
    elsif value.to_i == 0 # J, Q, K
      sum += J_Q_K_A_VALUES_BUSTED
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= J_Q_K_A_VALUES_BUSTED if sum > total
  end

  p sum
end

# should return `true` or `false` if score > 21
def busted?(hand, total)
  return true if total(hand, total) > total
  false
end

def player_turn(deck, player_hand)
  # answer = nil
  loop do
    # p player_hand
    # total(player_hand, PLAYER_TOTAL)

    prompt "Hit or stay?"
    answer = gets.chomp

    if (answer == 'stay') || busted?(player_hand, PLAYER_TOTAL)
      break
    else
      give_additional_card(deck, player_hand)
    end
  end

  # answer
end

def play_again?
  prompt "Do you want to play again? (Press Y or 'Enter' key to continue)"
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
end


# Main loop
player_hand = []
dealer_hand = []

loop do
  deck = initialize_deck(card_values, suits)
  game_set = game_setup(deck, player_hand)
  display_message_player(player_hand)

  game_set = game_setup(deck, dealer_hand)
  display_message_dealer(dealer_hand)

  # 3. Player turn: hit or stay
  player_turn(deck, player_hand)

  # 4. If palyer bust, dealer wins.
  if busted?(player_hand, PLAYER_TOTAL)
    # probably end the game? or ask the user to play again?
    prompt "Player is busted. The game is over."
    prompt "Dealer won."
    break unless play_again?
  end
  # if player didn't bust, must have stayed to get here
  prompt "You chose to stay!"


  # 5. Dealer turn: hit or stay
  # - repeat until total >= 17
  display_message_dealer(dealer_hand)
  until total(dealer_hand, DEALER_TOTAL) >= DEALER_TOTAL
    # p dealer_hand
    give_additional_card(deck, dealer_hand)
    # display_message_player(player_hand)
    display_message_dealer(dealer_hand)
    # p total(dealer_hand, DEALER_TOTAL)
  end

  break
end

=begin
=> Player has: [["Hearts", "2"], ["Hearts", "3"]]
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"]]
[["Hearts", "2"], ["Hearts", "3"]]
5
=> Hit or stay?
hit
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"]]
11
=> Hit or stay?
hit
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"], ["Hearts", "7"]]
18
=> Hit or stay?
stay
=> You chose to stay!
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"]]
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"], ["Hearts", "8"]]
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"], ["Hearts", "8"]]
17
=end


## Step 4:
def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'J', 'Q', 'K', 'A']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def game_setup(deck, hand)
  2.times do 
    dealt_card = deal_card!(deck)
    hand << dealt_card 
  end
end

def give_additional_card(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def display_message_player(plyer_hand)
  prompt "Player has: #{plyer_hand}"
end

def display_message_dealer(dealer_hand)
  prompt "Dealer has: #{dealer_hand}"
end

## Calculate sum including Aces:
def total(hand)
  # hand = [['H', '3'], ['5', 'Q'], ... ]

  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  p sum
end

def busted?(hand)
  # should return `true` or `false` if score > 21
  return true if total(hand) > 21
  false
end

deck = initialize_deck(card_values, suits)
player_hand = []
dealer_hand = []

game_set = game_setup(deck, player_hand)
display_message_player(player_hand)

game_set = game_setup(deck, dealer_hand)
display_message_dealer(dealer_hand)


## 3. Player turn: hit or stay
#   - repeat until bust or "stay"
=begin
1. ask "hit" or "stay"
2. if "stay", stop asking
3. otherwise, go to #1
=end

answer = nil
loop do
  prompt "Hit or stay?"
  answer = gets.chomp

  p busted?(player_hand)
  break if answer == 'stay' || busted?(player_hand)
  give_additional_card(deck, player_hand)
  p player_hand
end

if busted?(player_hand)
  # probably end the game? or ask the user to play again?
  prompt "Player is busted. The game is over."
else
  # if player didn't bust, must have stayed to get here
  prompt "You chose to stay!"
end

# ... continue on to Dealer turn

=begin
$ ruby twenty_one_building_process.rb
=> Player has: [["Hearts", "2"], ["Hearts", "3"]]
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"]]
=> Hit or stay?
hit
5
false
5
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"]]
=> Hit or stay?
hit
11
false
11
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"], ["Hearts", "7"]]
=> Hit or stay?
hit
18
false
18
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"], ["Hearts", "7"], ["Hearts", "8"]]
=> Hit or stay?
hit
26
true
26
26
=> Player is busted. The game is over.
=end



## Step 4:
def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'Jack', 'Queen', 'King', 'Ace']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def game_setup(deck, hand)
  2.times do 
    dealt_card = deal_card!(deck)
    hand << dealt_card 
  end
end

def give_additional_card(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def display_message_player(plyer_hand)
  prompt "Player has: #{plyer_hand}"
end

def display_message_dealer(dealer_hand)
  prompt "Dealer has: #{dealer_hand}"
end

deck = initialize_deck(card_values, suits)
player_hand = []
dealer_hand = []

game_set = game_setup(deck, player_hand)
display_message_player(player_hand)

game_set = game_setup(deck, dealer_hand)
display_message_dealer(dealer_hand)

## 3. Player turn: hit or stay
#   - repeat until bust or "stay"
=begin
1. ask "hit" or "stay"
2. if "stay", stop asking
3. otherwise, go to #1
=end

answer = nil
loop do
  prompt "Hit or stay?"
  answer = gets.chomp
  break if answer == 'stay' || busted?
  give_additional_card(deck, player_hand)
  p player_hand
end

=begin
$ ruby twenty_one_building_process.rb
=> Player has: [["Hearts", "2"], ["Hearts", "3"]]
=> Dealer has: [["Hearts", "4"], ["Hearts", "5"]]
=> Hit or stay?
hit
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"]]
=> Hit or stay?
hit
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "6"], ["Hearts", "7"]]
=> Hit or stay?
stay
=end




## Step 3:
def prompt(message)
  puts "=> #{message}"
end

card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'Jack', 'Queen', 'King', 'Ace']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

# Deletes the first inner array
def deal_card!(deck)
  deck.shift
end

def display_message_player(dealt_card)
  prompt "Player: #{dealt_card}"
end

def display_message_dealer(dealt_card)
  prompt "Dealer: #{dealt_card}"
end

deck = initialize_deck(card_values, suits)

p deck
dealt_card = deal_card!(deck)
display_message_player(dealt_card)
p deck
dealt_card = deal_card!(deck)
display_message_dealer(dealt_card)
p deck

=begin
[["Hearts", "2"], ["Hearts", "3"], ["Hearts", "4"], ["Hearts", "5"], ... 
=> Player: ["Hearts", "2"]
[["Hearts", "3"], ["Hearts", "4"], ["Hearts", "5"], ... 
=> Dealer: ["Hearts", "3"]
[["Hearts", "4"], ["Hearts", "5"], ["Hearts", "6"], ...
=end




## Step 2:
card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
               'Jack', 'Queen', 'King', 'Ace']

suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

# Ex. [['H', '2'], ['S', 'J'], ['D', 'A']]
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

initialize_deck(card_values, suits)

# 2. Deal card to player and dealer
# Ex. Player: [['Hearts', '2'], ['Diamonds', 'Ace']]
#     Computer: [['Clubs', '2'], ['Spades', 'Jack']]
def deal_card(crd_values, suits)
  puts "Player: #{initialize_deck(crd_values, suits).sample}"
  puts "Computer: #{initialize_deck(crd_values, suits).sample}"
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
def initialize_deck(crd_values, suits)
  # [[suit, value], [suit, value] ... ]
  suit_value_pairs = []

  suits.each do |suit|
    crd_values.each do |card|
      suit_value_pairs << [suit, card]
    end
  end

  suit_value_pairs
end

initialize_deck(card_values, suits)

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
