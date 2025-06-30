require 'yaml'

MESSAGES = YAML.load_file('twenty_one_messages.yml')
ACE_VALUE = 11
J_Q_K_VALUES = 10
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

def give_additional_card!(deck, hand)
  dealt_card = deal_card!(deck)
  hand << dealt_card
end

def total(hand)
  # hand = [['H', '3'], ['5', 'Q'], ... ]
  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += ACE_VALUE if value == ACES
    sum += J_Q_K_VALUES if value.to_i == 0 # J, Q, K
    sum += value.to_i
  end

  # correct for Aces
  values.select { |value| value == ACES }.count.times do
    sum -= J_Q_K_VALUES if sum > BUSTED
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

def update_player_hand(player_turn, deck, player_hand)
  if player_turn == HIT
    give_additional_card!(deck, player_hand)
    prompt 'player_hits'
    prompt 'update_player_hand', player_hand
  end
end

def busted?(total)
  total > BUSTED
end

def compare_results(player_total, dealer_total)
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

def display_results(game_results)
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
    give_additional_card!(deck, dealer_hand)
    dealer_total = total(dealer_hand)
    prompt 'dealer_hand', dealer_hand
  end
end

def reset_scores
  { player: 0, dealer: 0 }
end

def display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
  puts
  puts "============="
  prompt 'dealer_final_cards_scores', dealer_hand, dealer_total
  prompt 'player_final_cards_scores', player_hand, player_total
  puts "============="
  puts
end

def get_enter_key_continue
  prompt 'continue'
  gets
  system 'clear'
end

def another_game?
  puts
  puts "---------------"
  prompt 'play_again'
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ''
  system 'clear'
end

## Main program
system 'clear'
prompt 'welcome'
name = get_name
system 'clear'
prompt 'rules', name
get_enter_key_continue
system 'clear'

players = { player: 0, dealer: 0 }

# Main loop
loop do
  dealer_hand = []
  player_hand = []
  deck = initialize_deck(card_values, suits)

  display_score_board(players, name)

  game_set = game_setup(deck, dealer_hand)
  display_dealer_hand(dealer_hand)
  dealer_total = total(dealer_hand)

  game_set = game_setup(deck, player_hand)
  player_total = total(player_hand)
  display_player_hand(player_hand, player_total)

  # 3. Player turn: hit or stay
  loop do
    player_turn = nil
    player_turn = get_player_turn(player_turn)
    system 'clear'
    update_player_hand(player_turn, deck, player_hand)
    player_total = total(player_hand)
    prompt 'player_total', player_total
    break if player_turn == STAY || busted?(player_total)
  end

  # If player bust, display results
  if busted?(player_total)
    display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
    game_results = compare_results(player_total, dealer_total)
    display_results(game_results)
    players[:dealer] += 1
    another_game? ? next : break
  else
    prompt 'player_stays', player_total
  end

  # 5. Dealer turn: hit or stay
  prompt 'dealer_turn'
  dealer_total = total(dealer_hand)
  dealer_turn(dealer_hand, deck, dealer_total)

  # If dealer bust
  if busted?(dealer_total)
    prompt 'dealer_total', dealer_total
    display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
    game_results = compare_results(player_total, dealer_total)
    display_results(game_results)
    players[:player] += 1
    another_game? ? next : break
  else
    system 'clear'
    prompt 'player_stays', player_total
    prompt 'dealer_stays', dealer_total
  end

  # 7. Both player and dealer stays. Compare cards and declare winner.
  display_final_cards(dealer_hand, dealer_total, player_hand, player_total)
  game_results = compare_results(player_total, dealer_total)
  display_results(game_results)

  case game_results
  when :player then players[:player] += 1
  when :dealer then players[:dealer] += 1
  end

  if players[:player] == MAX_SCORE
    prompt 'player_won_5_scores', name
    players = reset_scores
    break unless another_game?
  elsif players[:dealer] == MAX_SCORE
    prompt 'computer_won_5_scores'
    players = reset_scores
    break unless another_game?
  else
    prompt 'round'
    get_enter_key_continue
  end
end

system 'clear'
prompt 'thank_you'
