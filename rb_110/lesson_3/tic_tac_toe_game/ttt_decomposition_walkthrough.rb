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
