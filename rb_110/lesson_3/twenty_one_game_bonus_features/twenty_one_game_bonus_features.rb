require 'pry-byebug'
require 'yaml'

MESSAGES = YAML.load_file('twenty_one_messages.yml')
J_Q_K_A_VALUES = 11
J_Q_K_A_VALUES_BUSTED = 10
BUSTED = 21
DEALER_SAFE = 17
MAX_SCORE = 5
ACES = 'A'
HIT = 'h'
STAY = 's'

def messages(message)
  MESSAGES[message]
end

def prompt(key, *args)
  message = messages(key) % args
  puts "=> #{message}"
end

def get_name
  name = ''

  loop do
    prompt 'get_name'
    name = gets.chomp

    break unless name.empty?
    prompt 'invalid_name'
  end

  name.upcase
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

def display_score_board(plrs, player_name)
  puts "#{player_name}: #{plrs[:player]}, dealer: #{plrs[:dealer]}"
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
    if value == ACES
      sum += J_Q_K_A_VALUES
    elsif value.to_i == 0 # J, Q, K
      sum += J_Q_K_A_VALUES_BUSTED
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == ACES }.count.times do
    sum -= J_Q_K_A_VALUES_BUSTED if sum > total
  end

  sum
end

def display_dealer_hand(dealer_hand)
  first_card = dealer_hand[0][1]
  prompt 'dealer_hand', first_card
end

def display_player_hand(player_hand, player_total)
  first_card = player_hand[0][1]
  second_card = player_hand[1][1]
  prompt 'player_hand', first_card, second_card, player_total
end

def get_player_turn(player_turn)
  loop do
    prompt 'hit_stay'
    player_turn = gets.chomp.downcase

    break if player_turn.start_with?(HIT) ||
             player_turn.start_with?(STAY)
    prompt 'invalid_input'
  end

  player_turn[0]
end

def update_player_hand(player_turn, deck, player_hand, player_total)
  if player_turn == HIT
    give_additional_card(deck, player_hand)
    prompt 'player_hits'
    prompt 'update_player_hand', player_hand
    player_total = total(player_hand, BUSTED)
    prompt 'player_total', player_total
  end
end

# should return `true` or `false` if score > 21
def busted?(total)
  total > BUSTED
end

def compare_results(player_hand, dealer_hand, player_total, dealer_total)
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

def display_results(player_hand, dealer_hand, player_total, dealer_total)
  game_results = compare_results(player_hand, dealer_hand, player_total, dealer_total)

  case game_results
  when :player_busted then prompt 'player_busted'
  when :dealer_busted then prompt 'dealer_busted'
  when :player        then prompt 'player_won'
  when :dealer        then prompt 'dealer_won'
  when :tie           then prompt 'tie'
  end
end

def dealer_turn(dealer_hand, deck, dealer_total)
  until dealer_total >= DEALER_SAFE
    prompt 'dealer_hits'
    give_additional_card(deck, dealer_hand)
    dealer_total = total(dealer_hand, DEALER_SAFE)
    prompt 'dealer_hand', dealer_hand
  end
end

def rest_scores
  { player: 0, dealer: 0 }
end

def display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
  puts "============="
  prompt 'dealer_final_cards_scores', dealer_hand, dealer_total
  prompt 'player_final_cards_scores', player_hand, player_total
  puts "============="
end

def get_enter_key_continue
  prompt 'continue'
  gets
end

def play_again?
  puts "---------------"
  prompt 'play_again'
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
end

#@ Main program
system 'clear'
prompt 'welcome'
name = get_name
system 'clear'
prompt 'rules', name
get_enter_key_continue
system 'clear'

dealer_hand = []
player_hand = []
players = {player: 0, dealer: 0}

# Main loop
loop do
  deck = initialize_deck(card_values, suits)
  dealer_total = total(dealer_hand, DEALER_SAFE)
  player_total = total(player_hand, BUSTED)

  display_score_board(players, player_name)

  game_set = game_setup(deck, dealer_hand)
  dealer_total = total(dealer_hand, DEALER_SAFE)
  display_dealer_hand(dealer_hand)
  dealer_total = total(dealer_hand, DEALER_SAFE)

  game_set = game_setup(deck, player_hand)
  player_total = total(player_hand, BUSTED)
  display_player_hand(player_hand, player_total)
  player_total = total(player_hand, BUSTED)

  p dealer_total
  p player_total

  # 3. Player turn: hit or stay
  loop do
    player_turn = nil
    player_turn = get_player_turn(player_turn)
    player_total = total(player_hand, BUSTED)
    update_player_hand(player_turn, deck, player_hand, player_total)
    break if player_turn == STAY || busted?(player_total)
  end

  # If palyer bust, display results
  if busted?(player_total)
    display_results(player_hand, dealer_hand, player_total, dealer_total)
    display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
    players[:dealer] += 1
    play_again? ? next : break
  else
    prompt 'player_stays', player_total
  end

  # 5. Dealer turn: hit or stay
  prompt 'dealer_turn'
  dealer_total = total(dealer_hand, DEALER_SAFE)
  dealer_turn(dealer_hand, deck, dealer_total)

  # If dealer bust
  if busted?(dealer_total)
    prompt 'dealer_total', dealer_total
    display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
    display_results(player_hand, dealer_hand)
    players[:player] += 1
    play_again? ? next : break
  else
    prompt 'dealer_stays', dealer_total
  end

  # 7. Both player and dealer stays. Compare cards and declare winner.
  display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
  display_results(player_hand, dealer_hand, player_total, dealer_total)

  if players[:player] == MAX_SCORE
    prompt 'player_won_5_scores', name
    players = reset_scores
    break unless another_game?
  elsif players[:computer] == MAX_SCORE
    prompt 'computer_won_5_scores'
    players = reset_scores
    break unless another_game?
  else 
    prompt 'round'
    get_enter_key_continue
  end

  # break unless play_again?
end

prompt 'thank_you'
