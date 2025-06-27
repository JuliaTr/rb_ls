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

## Step 8 (refactor):
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

  suit_value_pairs.shuffle
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

def compare_results(player_hand, dealer_hand)
  player_total = total(player_hand, PLAYER_TOTAL)
  dealer_total = total(dealer_hand, DEALER_TOTAL)

  if player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  end
end

def display_results(player_hand, dealer_hand)
  game_results = compare_results(player_hand, dealer_hand)

  case game_results
  when :player then prompt "Player won. Congratulations!"
  when :dealer then prompt "Dealer won."
  else              prompt "It's a tie"
  end
end

def play_again?
  puts "---------------"
  prompt "Do you want to play again? (Press Y or 'Enter' key to continue)"
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
end

# Main loop
dealer_hand = []
player_hand = []

loop do
  prompt "Welcome to Twenty-One!"

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

  if !busted?(player_hand, PLAYER_TOTAL)
    # if player didn't bust, must have stayed to get here
    prompt "You chose to stay!"

    # 5. Dealer turn: hit or stay
    # - repeat until total >= 17
    display_message_dealer(dealer_hand)
    until total(dealer_hand, DEALER_TOTAL) >= DEALER_TOTAL
      give_additional_card(deck, dealer_hand)
    end

    p total(dealer_hand, DEALER_TOTAL)
  end

  # 6. If dealer bust, player wins.
  if busted?(dealer_hand, DEALER_TOTAL)
    prompt "Dealer is busted. The game is over."
    prompt "Player won."
    break unless play_again?
  end

  # 7. Compare cards and declare winner.
  if !busted?(dealer_hand, DEALER_TOTAL)
    display_results(player_hand, dealer_hand)
  end
end
