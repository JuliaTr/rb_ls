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

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MAX_SCORE = 5

def prompt(message)
  puts "=> #{message}"
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
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
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
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
                  [[1, 5, 9], [3, 5, 7]]               # diagonals
  
  winning_lines.each do |line|
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

def next_round
  prompt "Going to the next round ..."
  prompt "Press 'Enter' key to continue"
  gets()
  # system 'clear'
end


players = { player: 0, computer: 0 }

loop do
  # 1. Display the initial empty 3x3 board.
  board = initialize_board

  loop do
    display_board(board, players)

    # 2. Ask the user to mark a square.
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    # 3. Computer marks a square.
    computer_places_piece!(board)
    display_board(board, players)

    break if someone_won?(board) || board_full?(board)
  end

  # 4. Display the updated board state.
  display_board(board, players) 

  # 5. If winner, display winner.
  # 6. If board is full, display tie.
  detected_winner = detect_winner(board)
  if someone_won?(board)
    prompt "#{detected_winner} won!"
  else
    prompt "It's a tie!"
  end

  # BF: Keep score
  case detected_winner
  when 'Player'   
    players[:player] += 1 
    p players[:player]
  when 'Computer'
    players[:computer] += 1
    p players[:computer]
  end
  p players[:player]
  p players[:computer]

  if players[:player] == MAX_SCORE
    prompt "Player won with 5 scores"
    players = { player: 0, computer: 0 }
    prompt "Play next set of rounds till someone get 5 scores? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  elsif players[:computer] == MAX_SCORE
    prompt "Computer won with 5 scores"
    players = { player: 0, computer: 0 }
    prompt "Play next set of rounds till someone get 5 scores? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  else
    next_round
  end
end

prompt "Thank you for playing Tic Tac Toe! Good bye!"
