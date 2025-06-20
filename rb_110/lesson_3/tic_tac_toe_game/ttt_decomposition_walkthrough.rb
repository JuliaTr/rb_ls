require 'pry'

=begin
DESCRIPTION OF THE GAME
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player 
takes a turn and marks a square on the board. First player 
to reach 3 squares in a row, including diagonals, wins. If 
all 9 squares are marked and no player has 3 squares in a 
row, then the game is a tie.


DECOMPOSITION
1. Display the initial empty 3x3 board.  # loop 1 starts
2. Ask the user to mark a square.   # loop 2 starts
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2  # stopping condition
8. Play again?
9. If yes, go to #1   # loop 1 ends
10. Good bye!
=end

## Step 10:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
  system 'clear'
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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
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

loop do  # every time we start a gain, we need a new board
  # 1. Display the initial empty 3x3 board.
  board = initialize_board  # hash

  loop do
    display_board(board)

    # 2. Ask the user to mark a square.
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    # 3. Computer marks a square.
    computer_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board) 

  # 5. If winner, display winner.
  # 6. If board is full, display tie.
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing Tic Tac Toe! Good bye!"



## Step 9:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
  system 'clear'
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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
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

def someone_won?(brd) # we need a boolean to be returned
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

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash

loop do
  display_board(board)

  # 2. Ask the user to mark a square.
  player_places_piece!(board)
  break if someone_won?(board) || board_full?(board)

  # 3. Computer marks a square.
  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

display_board(board) 

# 5. If winner, display winner.
# 6. If board is full, display tie.
if someone_won?(board)
  prompt "#{detect_winner(board)} won!"
else
  prompt "It's a tie!"
end



## Step 8:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
  system 'clear'
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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
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

def someone_won?(brd) # we need a boolean to be returned
  !!detect_winner(brd)
end


=begin
- First, see if the same marker go across
  - if so, then which ever player represents that marker won
- Next, see if the vertical squares have the same marker
- Next, see if the diagnal squares have the same marker

Winning lines:
Squares:
  1, 2, 3   # horisontal
  4, 5, 6   # horisontal
  7, 8, 9   # horisontal
  1, 4, 7   # vertical
  2, 5, 8   # vertical
  3, 6, 9   # vertical
  1, 5, 9   # diagonal
  3, 5, 7   # diagonal

- Iterate through the winning lines
  - determine the values in the squares are all either `X` or `O`

- Capture all winning lines in an nested array `winning_lines`
- Iterate through the winning lines
  - inspect the board on each of this line
  - see if the line has all `X` or all `O`

Upon iteration, 
  - if each of the lines matches the `PLAYER_MARKER`, then the player won
  - if each of the lines matches the `COMPUTER_MARKER`, then the computer won
  - otherwise `nil` is returned, which represents that nobody has won yet
=end

def detect_winner(brd) 
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
                  [[1, 5, 9], [3, 5, 7]]               # diagonals
  
  winning_lines.each do |line|
    # binding.pry
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

=begin
     |     |
 X   | O   |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |


From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/tic_tac_toe_game/ttt_decomposition_walkthrough.rb:118 Object#detect_winner:

    113: def detect_winner(brd) 
    114:   winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
    115:                   [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
    116:                   [[1, 5, 9], [3, 5, 7]]               # diagonals
    117:   winning_lines.each do |line|
 => 118:     binding.pry
    119:   end
    120: end

[1] pry(main)> line
=> [1, 2, 3]
[2] pry(main)> brd
=> {1=>"X", 2=>"O", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
[3] pry(main)> brd[line[0]]
=> "X"
[4] pry(main)> brd[line[2]]
=> " "
[5] pry(main)> brd[line[1]]
=> "O"
[6] pry(main)> exit!
=end

=begin
Colums `[1, 4, 7]` goes before `[3, 6, 9]`. So, if `[3, 6, 9]`
would be full first it won't be detected.
=end


# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

loop do
  # 2. Ask the user to mark a square.
  player_places_piece!(board)
  # 3. Computer marks a square.
  computer_places_piece!(board)
  display_board(board)
  # binding.pry
  break if someone_won?(board) || board_full?(board)
end

# 5. If winner, display winner.
# 6. If board is full, display tie.
if someone_won?(board)
  prompt "#{detect_winner(board)} won!"
else
  prompt "It's a tie!"
end



## Step 7:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
  system 'clear'
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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
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

def board_full?(brd) # The board is full when we have no more empty squares.
  # The `empty_squares` method returns an empty array if there're no more empty squares
  empty_squares(brd) == []  # if `empty_squares` an empty array
end

=begin
irb(main):002:0> [1, 2, 3, 4].select { |num| num > 50 }
=> []
irb(main):003:0> [].empty?
=> true
=end


def someone_won?(brd)
  false  # just to check `break` condition in the loop 
end

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

loop do
  # 2. Ask the user to mark a square.
  player_places_piece!(board)
  # 3. Computer marks a square.
  computer_places_piece!(board)
  display_board(board)
  # binding.pry
  break if someone_won?(board) || board_full?(board)
end

display_board(board)



## Step 6:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
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

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

# 2. Ask the user to mark a square.
player_places_piece!(board)    # player puts a piece on the board; modifies `board`
# 3. Computer marks a square.
computer_places_piece!(board)
display_board(board)

=begin
$ ruby ttt_decomposition_walkthrough.rb

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |

=> Choose a square (1, 2, 3, 4, 5, 6, 7, 8, 9):
1

     |     |
 X   |     |  
     |     |
-----+-----+-----
     |     |
     | O   |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
=end



## Practice using `pry`:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
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
  # binding.pry
  brd.keys.select { |num| brd[num] == INITIAL_MARKER } 
end

=begin
$ ruby ttt_decomposition_walkthrough.rb

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |


From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/tic_tac_toe_game/ttt_decomposition_walkthrough.rb:57 Object#empty_squares:

    56: def empty_squares(brd)
 => 57:   binding.pry
    58:   brd.keys.select { |num| brd[num] == INITIAL_MARKER } 
    59: end

[1] pry(main)> brd
=> {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
[2] pry(main)> board
NameError: undefined local variable or method `board' for main:Object (NameError)
from (pry):2:in `empty_squares'
[3] pry(main)> INITIAL_MARKER
=> " "
[4] pry(main)> PLAYER_MARKER
=> "X"
[5] pry(main)> brd.keys
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
[6] pry(main)>      # `Ctrl + d` to continue

=> Choose a square (1, 2, 3, 4, 5, 6, 7, 8, 9):
3 

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/tic_tac_toe_game/ttt_decomposition_walkthrough.rb:57 Object#empty_squares:

    56: def empty_squares(brd)
 => 57:   binding.pry
    58:   brd.keys.select { |num| brd[num] == INITIAL_MARKER } 
    59: end

[1] pry(main)> exit!
=end


def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  # binding.pry
  brd[square] = PLAYER_MARKER
  # binding.pry
end

=begin
$ ruby ttt_decomposition_walkthrough.rb

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |

=> Choose a square (1, 2, 3, 4, 5, 6, 7, 8, 9):
4

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/tic_tac_toe_game/ttt_decomposition_walkthrough.rb:119 Object#player_places_piece!:

    110: def player_places_piece!(brd)
    111:   square = ''
    112:   loop do
    113:     prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
    114:     square = gets.chomp.to_i
    115: 
    116:     break if empty_squares(brd).include?(square)
    117:     prompt "Sorry, that's not a valid choice."
    118:   end
 => 119:   binding.pry
    120:   brd[square] = PLAYER_MARKER
    121:   binding.pry
    122: end

[1] pry(main)> brd
=> {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
[2] pry(main)> 


From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/tic_tac_toe_game/ttt_decomposition_walkthrough.rb:121 Object#player_places_piece!:

    110: def player_places_piece!(brd)
    111:   square = ''
    112:   loop do
    113:     prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
    114:     square = gets.chomp.to_i
    115: 
    116:     break if empty_squares(brd).include?(square)
    117:     prompt "Sorry, that's not a valid choice."
    118:   end
    119:   binding.pry
    120:   brd[square] = PLAYER_MARKER
 => 121:   binding.pry
    122: end

[1] pry(main)> brd
=> {1=>" ", 2=>" ", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
[2] pry(main)> exit!
=end


# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

# 2. Ask the user to mark a square.
player_places_piece!(board)    # player puts a piece on the board; modifies `board`
puts board.inspect
display_board(board)



## Step 5:
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
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

# To calculate empty squares we pass in the board.
def empty_squares(brd)  # the method is inspecting the board without modifying it.
  # return an array of integers that represent empty squares.
  brd.keys.select { |num| brd[num] == INITIAL_MARKER } 
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
    # If I've chosen `4` on the next round it will be omitted, because it was already chosen.
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."   # only in condition is false
  end

  brd[square] = PLAYER_MARKER
end

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

# 2. Ask the user to mark a square.
player_places_piece!(board)    # player puts a piece on the board; modifies `board`
puts board.inspect
display_board(board)



# Step 4:
def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
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
  (1..9).each { |num| new_board[num] = ' '}
  new_board
end

def player_places_piece(brd)
  # Want the user to only choose a key whare the value is space.
  square = ''
  loop do
    prompt("Choose a square (1-9):")
    square = gets.chomp.to_i

    # If user did input of one of the available choices
    if brd.keys.select { |num| brd[num] == ' ' }.include?(square)
      break
    else # We'll keep going
      prompt "Sorry, that's not a valid choice."
    end
  end

  # When we have a valid square we set the marker.
  brd[square] = 'x'
end

=begin
{1=>" ", 2=>" ", 3=>"x", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" ", 10=>"x"}

irb(main):005:0> brd.keys
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):006:0> brd.keys.select {|num| brd[num] == ' '}
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
irb(main):007:0> brd.keys.select {|num| brd[num] == ' '}.include?(3)
=> true
=end

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

# 2. Ask the user to mark a square.
player_places_piece(board)    # player puts a piece on the board; modifies `board`
puts board.inspect
display_board(board)



## Step 3:
def prompt(message)
  puts "=> #{message}"
end

def display_board(brd)
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
  (1..9).each { |num| new_board[num] = ' '}
  new_board
end

def player_places_piece(brd)
  prompt("Choose a square (1-9):")
  square = gets.chomp.to_i
  brd[square] = 'x'      # modifies the existing value for the key in the `board` hash
  # A new kay-value pairs are created in the hash, if user enters `10`. 
  # We won't use it when we display the board.
end

# 1. Display the initial empty 3x3 board.
board = initialize_board  # hash
display_board(board)      # empty board

# 2. Ask the user to mark a square.
player_places_piece(board)    # player puts a piece on the board; modifies `board`
puts board.inspect
display_board(board)          # board with a piece; modified board

=begin
$ ruby ttt_decomposition_walkthrough.rb

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |

=> Choose a square (1-9):
3
{1=>" ", 2=>" ", 3=>"x", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

     |     |
     |     | x
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |

$ ruby ttt_decomposition_walkthrough.rb

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |

=> Choose a square (1-9):
10
{1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" ", 10=>"x"}

     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
-----+-----+-----
     |     |
     |     |  
     |     |
=end



## Step 2:
# 1. Display the initial empty 3x3 board.
def display_board(brd)
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
  (1..9).each { |num| new_board[num] = ' ' }  # creates a new key-value pair in a hash
  new_board
end

board = initialize_board
display_board(board)



## Step 1:
# 1. Display the initial empty 3x3 board.
def display_board
  puts ""
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts ""
end

display_board
