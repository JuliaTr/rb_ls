require 'pry-byebug'

J_Q_K_A_VALUES = 11
J_Q_K_A_VALUES_BUSTED = 10
BUSTED = 21
DEALER_SAFE = 17

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

def get_player_turn(player_turn)
  loop do
    prompt "Would you like 'hit' or 'stay'?"
    player_turn = gets.chomp.downcase

    break if player_turn.start_with?('h') ||
             player_turn.start_with?('s')
    prompt "Sorry, please enter 'h' or 's'."
  end

  player_turn[0]
end

def update_player_hand(player_turn, deck, player_hand)
  if player_turn == 'h'
    give_additional_card(deck, player_hand)
    prompt "You choose to hit!"
    prompt "Your cards are now: #{player_cards}"
    prompt "Your total is now #{total(player_hand, BUSTED)}"
  end
end

def display_dealer_hand(dealer_hand)
  prompt "Dealer has: #{dealer_hand[0][1]} and unknown card"
end

def display_player_hand(player_hand)
  prompt "You have: #{player_hand[0][1]} and #{player_hand[1][1]} " +
         "for a total of #{total(player_hand, BUSTED)}"
end

# should return `true` or `false` if score > 21
def busted?(hand, total)
  total(hand, total) > total
end

def compare_results(player_hand, dealer_hand)
  player_total = total(player_hand, BUSTED)
  dealer_total = total(dealer_hand, DEALER_SAFE)

  if player_total > BUSTED
    :player_busted
  elsif dealer_total > BUSTED
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_results(player_hand, dealer_hand)
  game_results = compare_results(player_hand, dealer_hand)

  case game_results
  when :player_busted then prompt "You busted! Dealer won!"
  when :dealer_busted then prompt "Dealer busted! You won!"
  when :player        then prompt "You won. Congratulations!"
  when :dealer        then prompt "Dealer won."
  when :tie           then prompt "It's a tie"
  end
end

def dealer_turn(dealer_hand, deck)
  until total(dealer_hand, DEALER_TOTAL) >= DEALER_SAFE
    prompt "Dealer his!"
    give_additional_card(deck, dealer_hand)
    prompt "Dealer's cards are now: #{dealer_cards}"
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
  display_dealer_hand(dealer_hand)

  game_set = game_setup(deck, player_hand)
  display_player_hand(player_hand)

  # 3. Player turn: hit or stay
  loop do
    player_turn = nil
    player_turn = get_player_turn(player_turn)
    update_player_hand(player_turn, deck, player_hand)
    break if player_turn == 's' || busted?(player_hand, BUSTED)
  end

  # If palyer bust, display results
  if busted?(player_hand, BUSTED)
    display_results(player_hand, dealer_hand)
    play_again? ? next : break
  else
    ptompt "You stayed at #{total(player_hand, BUSTED)}"
  end

  # 5. Dealer turn: hit or stay
  prompt "Dealer turn..."
  dealer_turn(dealer_hand, deck)

  # If dealer bust
  if busted?(dealer_hand, BUSTED)
    prompt "Dealer total is now: #{total(dealer_hand, DEALER_SAFE)}"
    display_results(player_hand, dealer_hand)
    play_again? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards, DEALER_SAFE)}"
  end

  # 7. Both player and dealer stays. Compare cards and declare winner.
  puts "============="
  prompt "Dealer has #{dealer_hand}, for a total of: #{total(dealer_cards, DEALER_SAFE)}"
  prompts "Player has #{player_hand}, for a total of #{total(player_hand, BUSTED)}"
  
  display_results(player_hand, dealer_hand)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
