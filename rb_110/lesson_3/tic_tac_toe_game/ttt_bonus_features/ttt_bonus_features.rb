require 'yaml'
require 'pry-byebug'

=begin
1. Display the initial empty 3x3 board.  # loop 1 starts
2. Ask the user to mark a square.   # loop 2 starts
3. Computer marks a square.         # loop 2 ends
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
  BF: Keep score.
7. If neither winner nor board is full, go to #2  # stopping condition for loop 2
8. Play again?
9. If yes, go to #1   # loop 1 ends
10. Good bye!
=end

MESSAGES = YAML.load_file('ttt_messages.yml')
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
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

    break if first_move_choice == 'x' || first_move_choice == 'o'
    prompt 'valid_role'
  end

  p first_move_choice
end

def display_board(brd, players_score)
  # system 'clear'
  puts "Player: #{players_score[:player]}, computer: #{players_score[:computer]}"
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts " #{brd[1]}   | #{brd[2]}   | #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts " #{brd[4]}   | #{brd[5]}   | #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts " #{brd[7]}   | #{brd[8]}   | #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER } 
end

# BF: Improved "join"
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

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd) 
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
        brd[line[1]] == PLAYER_MARKER &&
        brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end

  nil
end

# BF: Computer turn refinements (a) computer offense first
# BF: Computer AI: offense
def computer_ai_offense!(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == INITIAL_MARKER
      return brd[line[2]] = COMPUTER_MARKER
    elsif brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER && brd[line[0]] == INITIAL_MARKER
      return brd[line[0]] = COMPUTER_MARKER
    elsif brd[line[0]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER && brd[line[1]] == INITIAL_MARKER
      return brd[line[1]] = COMPUTER_MARKER
    end
  end

  nil
end

# BF: Computer turn refinements (b) pick square #5 if available
def computer_goes_square_5!(brd)
  WINNING_LINES.each do |line|
    if (line == [4, 5, 6] || line == [2, 5, 8] || 
        line == [1, 5, 9] || line == [3, 5, 7]) &&
        brd[line[1]] == INITIAL_MARKER
      return brd[line[1]] = COMPUTER_MARKER
    end
  end

  nil
end

# BF: Computer AI: defense
def computer_ai_defense!(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == INITIAL_MARKER
      return brd[line[2]] = COMPUTER_MARKER
    elsif brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER && brd[line[0]] == INITIAL_MARKER
      return brd[line[0]] = COMPUTER_MARKER
    elsif brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER && brd[line[1]] == INITIAL_MARKER
      return brd[line[1]] = COMPUTER_MARKER
    end
  end

  nil
end

def computer_moves!(brd)
  # If there're no 2 `'O'` and there're 2 `'X' in a line
  if (computer_ai_offense!(brd) == nil) && (computer_ai_defense!(brd) != nil)
    return computer_ai_defense!(brd)

  # If there're no 2 `'O'` and no 2 `'X' in a line, and a square #5 is free
  elsif (computer_ai_offense!(brd) == nil) && (computer_ai_defense!(brd) == nil) && (computer_goes_square_5!(brd) != nil)
    return p computer_goes_square_5!(brd)

  # If the square #5 is occupied
  elsif computer_goes_square_5!(brd) == nil
    return computer_places_piece!(brd)
  end
end

def display_winner(who_won, winner_role)
  if who_won
    prompt 'winner', winner_role
  else
    prompt 'tie'
  end
end

def another_game?
  prompt 'next_set_of_rounds'
  answer = Kernel.gets().chomp()
  # system 'clear'
  answer.downcase().start_with?('y') || answer == ""
end

def next_round
  prompt 'round'
  prompt 'continue'
  gets
  # system 'clear'
end

def player_goes_first(brd, plrs)
  loop do
    display_board(brd, plrs)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    computer_moves!(brd)
    display_board(brd, plrs)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def computer_goes_first(brd, plrs)
  loop do
    display_board(brd, plrs)

    computer_moves!(brd)
    display_board(brd, plrs)
    break if someone_won?(brd) || board_full?(brd)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def define_who_goes_first(brd, plrs, role)
  if role == 'x'
    return player_goes_first(brd, plrs)
  elsif role == 'o'
    return computer_goes_first(brd, plrs)
  end
end

def display_game_start
  system 'clear'
  prompt 'welcome'
  name = get_name
  system 'clear'
  prompt 'rules', name
  prompt 'continue'
  gets
  system 'clear'
end

## Main program
# display_game_start
first_move = get_first_move_choice
players = { player: 0, computer: 0 }

loop do
  # 1. Display the initial empty 3x3 board.
  board = initialize_board
  define_who_goes_first(board, players, first_move)

  detected_winner = detect_winner(board)
  display_winner(someone_won?(board), detected_winner)

  # BF: Keep score
  case detected_winner
  when 'Player'   
    players[:player] += 1 
  when 'Computer'
    players[:computer] += 1
  end

  if players[:player] == MAX_SCORE
    prompt 'player_won_5_scores'
    players = { player: 0, computer: 0 }
    break unless another_game?
  elsif players[:computer] == MAX_SCORE
    prompt 'computer_won_5_scores'
    players = { player: 0, computer: 0 }
    break unless another_game?
  else
    next_round
  end
end

system 'clear'
prompt 'thank_you'
