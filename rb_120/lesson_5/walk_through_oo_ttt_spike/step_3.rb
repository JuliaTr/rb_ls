# On Step 3 - Human moves

# require 'pry'

class Board
  INITIAL_MARKER = ' '

  def initialize
    @squares = {}
    (1..9).each { |key| @squares[key] = Square.new(INITIAL_MARKER)}
  end

  def get_square_at(key)
    @squares[key]
  end

  # Step 3:
  def set_square_at(key, marker)
    # reassign the existing marker for square
    @squares[key].marker = marker
  end
end

class Square
  # Step 3:
  # will allow to change marker for the particular `Square` object
  attr_accessor :marker

  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end
end

class Player
  # Step 3:
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end

  def mark
  end
end

class TTTGame
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new

    # Step 3:
    @human = Player.new('X')
    @computer = Player.new('O')
  end

  def display_welcome_message
    puts 'Welcome to Tic Tac Toe!'
    puts ''
  end

  def display_goodbye_message
    puts 'Thank you for playing Tic Tac Toe! Goodbye!'
  end

  def display_board
    puts ""
    puts "     |       |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}    |  #{board.get_square_at(3)}"
    puts "     |       |" 
    puts "-----------------"
    puts "     |       |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}    |  #{board.get_square_at(6)}"
    puts "     |       |" 
    puts "-----------------"
    puts "     |       |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}    |  #{board.get_square_at(9)}"
    puts "     |       |"
    puts ""
  end

  # Step 3:
  def human_moves
    puts "Choose a square between 1-9:"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if (1..9).include?(square)
      puts "Sorry, that's not a valid choice"
    end

    # binding.pry

    # If it's board's resposibility:
    # `board.set_square_at` should receive the `square` number,
    # which we retrieve fromt the user input.
    board.set_square_at(square, human.marker)

  #   # If it's humn's responsibility:
  #   @human.mark(square)
  end

  def play
    display_welcome_message
    loop do
      display_board
      human_moves
      display_board
      break
      break if someone_won? || board_full?

      computer_moves
      break if someone_won? || board_full?
    end
    # display_board
    display_goodbye_message
  end
end

game = TTTGame.new
game.play


=begin
$ ruby step_3.rb
Welcome to Tic Tac Toe!


     |      |
     |      |  
     |      |
-----------------
     |      |
     |      |  
     |      |
-----------------
     |      |
     |      |  
     |      |

Choose a square between 1-9:
5

From: /Users/julia/Desktop/rb_ls/rb_120/lesson_5/walk_through_oo_ttt_spike/step_3.rb:86 TTTGame#human_moves:

    77: def human_moves
    78:   puts "Choose a square between 1-9:"
    79:   square = nil
    80:   loop do
    81:     square = gets.chomp.to_i
    82:     break if (1..9).include?(square)
    83:     puts "Sorry, that's not a valid choice"
    84:   end
    85: 
 => 86:   binding.pry
    87: 
    88:   # If it's board's resposibility:
    89:   # `board.get_square_at` should receive the `square` number,
    90:   # which we retrieve fromt the user input.
    91:   board.get_square_at(square, human.marker)
    92: 
    93: #   # If it's humn's responsibility:
    94: #   @human.mark(square)
    95: end

[1] pry(#<TTTGame>)> square
=> 5
[2] pry(#<TTTGame>)> human
=> #<Player:0x000000010de95440 @marker="X">
[3] pry(#<TTTGame>)> human.marker
=> "X"



$ ruby step_3.rb
Welcome to Tic Tac Toe!


     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |

Choose a square between 1-9:
5

     |       |
     |       |   
     |       |
-----------------
     |       |
     |  X    |   
     |       |
-----------------
     |       |
     |       |   
     |       |

Thank you for playing Tic Tac Toe! Goodbye!
=end
