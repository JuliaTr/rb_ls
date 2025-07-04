require 'pry-byebug'
require 'yaml'

MESSAGES = YAML.load_file('ttt_messages.yml')
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
NUM_FOR_PLACE_PIECE = 2
NUM_FOR_WINNER = 3
SQUARE5 = 5
MAX_SCORE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
                [[1, 5, 9], [3, 5, 7]]               # diagonals

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
    prompt 'valid_name'
  end

  name.upcase
end

def get_first_move_choice
  first_move_choice = ''

  loop do
    prompt 'role_choice'
    first_move_choice = gets.chomp.downcase

    break if first_move_choice == 'x' || first_move_choice == 'o' ||
             first_move_choice == ''
    prompt 'valid_role'
  end

  first_move_choice
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_score_board_and_player_role(plrs, player_name)
  puts "#{player_name}: #{plrs[:player]}, computer: #{plrs[:computer]}"
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
end

def display_3_squares(brd, square_left=1, square_middle=2, square_right=3)
  puts "     |     |"
  puts "  #{brd[square_left]}  |  #{brd[square_middle]}  " \
       "|  #{brd[square_right]}"
  puts "     |     |"
end

def display_board_separator
  puts "-----+-----+-----"
end

def display_empty_space
  puts " "
end

def display_board(brd, plrs, player_name)
  system 'clear'
  display_score_board_and_player_role(plrs, player_name)
  display_empty_space
  display_3_squares(brd)
  display_board_separator
  display_3_squares(brd, 4, 5, 6)
  display_board_separator
  display_3_squares(brd, 7, 8, 9)
  display_empty_space
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def player_places_piece!(brd)
  square = ''
  joined_str = joinor(empty_squares(brd))

  loop do
    prompt 'choice', joined_str
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt 'not_valid_choice'
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == NUM_FOR_PLACE_PIECE
    selected_pair = brd.select do |k, v|
      line.include?(k) && v == INITIAL_MARKER
    end
    return selected_pair.keys.first
  end

  nil
end

def computer_offense_or_defense(brd, marker)
  WINNING_LINES.each do |line|
    return find_at_risk_square(line, brd, marker)
  end

  nil
end

def computer_places_piece!(brd)
  # offense
  square = computer_offense_or_defense(brd, COMPUTER_MARKER)

  # defense
  if !square
    square = computer_offense_or_defense(brd, PLAYER_MARKER)
  end

  # square 5
  if !square && brd[5] == INITIAL_MARKER
    square = SQUARE5
  end

  # pick a random square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def define_current_player(first_role)
  return 'Player' if first_role == 'x'
  'Computer'
end

def get_enter_key_continue
  prompt 'continue'
  gets
end

def player_goes_first(brd, plrs, player_name)
  prompt 'player_moves_first', player_name

  player_places_piece!(brd)
  computer_places_piece!(brd)
  display_board(brd, plrs, player_name)

  prompt 'computer_moved'
  get_enter_key_continue
end

def computer_goes_first(brd, plrs, player_name)
  computer_places_piece!(brd)
  display_board(brd, plrs, player_name)

  prompt 'computer_moves_first'
  prompt 'player_turn', player_name

  player_places_piece!(brd)
end

def place_piece!(brd, plrs, curr_plr, player_name)
  if curr_plr == 'Player'
    player_goes_first(brd, plrs, player_name)
  else
    computer_goes_first(brd, plrs, player_name)
  end
end

def alternate_player(curr_plr)
  return 'Computer' if curr_plr == 'Player'
  'Player'
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

# Game loop
def game_loop(brd, plrs, curr_plr, player_name)
  loop do
    display_board(brd, plrs, player_name)
    place_piece!(brd, plrs, curr_plr, player_name)
    curr_plr = alternate_player(curr_plr)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def find_winning_line(line, brd, marker)
  brd.values_at(*line).count(marker) == NUM_FOR_WINNER
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if find_winning_line(line, brd, PLAYER_MARKER)
      return 'Player'
    elsif find_winning_line(line, brd, COMPUTER_MARKER)
      return 'Computer'
    end
  end

  nil
end

def display_winner(who_won, detected_winner, player_name)
  if who_won && (detected_winner == 'Player')
    prompt 'player_won', player_name
  elsif who_won && (detected_winner == 'Computer')
    prompt 'computer_won'
  else
    prompt 'tie'
  end
end

def reset_scores(players)
  { player: 0, computer: 0 }
end

def another_game?
  prompt 'next_set_of_rounds'
  answer = gets.chomp
  answer.downcase.start_with?('y') || answer == ""
end

## Main program
system 'clear'
prompt 'welcome'
name = get_name
system 'clear'
prompt 'rules', name
get_enter_key_continue
system 'clear'

who_first_moves = get_first_move_choice
current_player = define_current_player(who_first_moves)
players = { player: 0, computer: 0 }

loop do
  board = initialize_board
  game_loop(board, players, current_player, name)
  display_board(board, players, name)

  detected_winner = detect_winner(board)
  display_winner(someone_won?(board), detected_winner, name)

  # Keep score
  case detected_winner
  when 'Player'   then players[:player] += 1
  when 'Computer' then players[:computer] += 1
  end

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
end

system 'clear'
prompt 'thank_you', name
