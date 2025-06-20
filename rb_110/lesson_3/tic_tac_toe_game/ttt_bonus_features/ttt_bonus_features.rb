require 'yaml'

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

    break if first_move_choice == 'x' || first_move_choice == 'o' || first_move_choice == ''
    prompt 'valid_role'
  end

  first_move_choice
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_board(brd, plrs, player_name)
  system 'clear'
  puts "#{player_name}: #{plrs[:player]}, computer: #{plrs[:computer]}"
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

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def computer_moves!(brd)
  # If there're 2 `'O'`
  if computer_ai_offense!(brd) != nil
    return computer_ai_offense!(brd)
  
  elsif (computer_ai_offense!(brd) != nil) && (computer_ai_defense!(brd) != nil)
    return computer_ai_offense!(brd)
  
  # If there're no 2 `'O'` and there're 2 `'X' in a line
  elsif (computer_ai_offense!(brd) == nil) && (computer_ai_defense!(brd) != nil)
    return computer_ai_defense!(brd)

  # If there're no 2 `'O'` and no 2 `'X' in a line, and a square #5 is free
  elsif (computer_ai_offense!(brd) == nil) && (computer_ai_defense!(brd) == nil) && (computer_goes_square_5!(brd) != nil)
    return computer_goes_square_5!(brd)

  # If the square #5 is occupied
  elsif computer_goes_square_5!(brd) == nil
    return computer_places_piece!(brd)
  end
end

def define_current_player(first_role)
  if first_role == 'x'
    'Player'
  else
    'Computer'
  end
end

def place_piece!(brd, plrs, curr_plr, player_name)
  if curr_plr == 'Player'
    prompt 'player_moves_first', player_name
    player_places_piece!(brd)
    computer_moves!(brd)
  else
    prompt 'computer_moved'
    prompt 'continue'
    gets

    computer_moves!(brd)
    display_board(brd, plrs, player_name)

    prompt 'computer_moves_first'
    prompt 'player_turn', player_name

    player_places_piece!(brd)
  end
end

def alternate_player(curr_plr)
  if curr_plr == 'Player'
    'Computer'
  else
    'Player'
  end
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

# Game loop
def game_loop(brd, plrs, curr_plr, player_name)
  system 'clear'

  loop do
    display_board(brd, plrs, player_name)
    place_piece!(brd, plrs, curr_plr, player_name)
    curr_plr = alternate_player(curr_plr)
    break if someone_won?(brd) || board_full?(brd)
  end
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

def display_winner(who_won, detected_winner, player_name)
  if who_won && (detected_winner == 'Player')
    prompt 'player_won', player_name
  elsif who_won && (detected_winner == 'Computer')
    prompt 'computer_won'
  else
    prompt 'tie'
  end
end

def next_round
  prompt 'round'
  prompt 'continue'
  gets
end

def another_game?
  prompt 'next_set_of_rounds'
  answer = Kernel.gets().chomp()
  answer.downcase().start_with?('y') || answer == ""
end

## Main program
system 'clear'
prompt 'welcome'
name = get_name
system 'clear'
prompt 'rules', name
prompt 'continue'
gets
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

  # BF: Keep score
  case detected_winner
  when 'Player'   
    players[:player] += 1 
  when 'Computer'
    players[:computer] += 1
  end

  if players[:player] == MAX_SCORE
    prompt 'player_won_5_scores', name
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
prompt 'thank_you', name
