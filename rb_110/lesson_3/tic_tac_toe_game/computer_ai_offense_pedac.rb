=begin 
Rewrite the method to meet RuboCop requirements:

ttt_bonus_features.rb:114:1: C: Metrics/AbcSize: Assignment Branch Condition size for computer_ai_offense! is too high. [<4, 25, 19> 31.65/18] (http://c2.com/cgi/wiki?AbcMetric, https://en.wikipedia.org/wiki/ABC_Software_Metric)
def computer_ai_offense!(brd) ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
ttt_bonus_features.rb:114:1: C: Metrics/CyclomaticComplexity: Cyclomatic complexity for computer_ai_offense! is too high. [11/7]
def computer_ai_offense!(brd) ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
ttt_bonus_features.rb:114:1: C: Metrics/PerceivedComplexity: Perceived complexity for computer_ai_offense! is too high. [12/8]
def computer_ai_offense!(brd) ...


PROBLEM:
Create a helper method that can identify if a line is "at risk" (has
2 of a specific marker and 1 empty space) and return the empy square's
position. 

Eliminate repetitive conditional logic. Work with the data
more abstractly rather than check each specific position combination 
manually.

Patterns: The same logic is repeated three times. Each condition checks 
          if two positions have the computer marker and one position 
          is empty.
Count: how many squars in the line contain the computer marker?
       how many squares in the line are empty?
       return the empty square position
Finding the empty square: identify which position is empy without checking
                          each combination individually
Method responsibilities: the current method does two things - finds
                         the square AND places the piece.
Ruby methods to consider: `count` for arrays; `select` or `find` for filering
                          `values_at` for getting multople hash values at once

________________________________________

PEDAC:

Input:
  - current line (ex. `[1, 2, 3]` or `[1, 4, 7]`....)
  - board to access square values

Output: number of the only empty square on the line

High-level: 
  - check the current state of each square of the line (is it empty?
    does it have a computer marker?)
  - access square values

Intermediate:
- count computer markers (should be 2)
- count empty squares (should be 1)
- find and return the empty line square position if the line has 
  2 computer markers and 1 empty square

Algorithm:
- Define a method `find_offensive_square` which accepts 2 arguments
  (`line`, `brd`)
- Select key-value pairs which keys of the board are numbers of 
  the squares in the line (use `values_at`; `*` to unpack each value 
  from the array) 
  (Return: array)
- Count computer markers 
  (values which contain `COMPUTER_MARKER` and in the line in key-value 
  pairs on the board) 
  (Return: integer)
- Count empty squares 
  (values which is empty (`INITIAL_MARKER`) and in the line in key-value 
  pairs on the board)
  (Return: integer)
- If computer markers are 2 and 1 empty square for this line
  - find the position (key) of the empty square
    (notes)
  - return the selected key (Return: integer)
- Otherwise, return `nil`
  
Note: (P) find the position (key) of the empty square
  - select key-value pairs which keys equal to either `line[0]`, 
    `line[1]`, or `line[2]` (Return: hash)
  - find key from the board which value is equal to empty line `INITIAL_MARKER`
    and in this line (use `key`)
=end

def find_offensive_square(brd, line)
  board_values = brd.values_at(*line)

  number_of_o = board_values.count(COMPUTER_MARKER)
  number_of_empty_squares = board_values.count(INITIAL_MARKER)

  if number_of_o == 2 && number_of_empty_squares == 1
    selected_pairs = brd.select do |k, _|  
      k == line[0] || k == line[1] || k == line[2]
    end
    
    return selected_pairs.key(INITIAL_MARKER)
  end

  nil
end

def computer_ai_offense!(brd)
  WINNING_LINES.each do |line|
    square = find_offensive_square(brd, line)
    return brd[square] = COMPUTER_MARKER if square
  end

  nil
end


=begin
PROBLEM:
BF: Computer AI: Offense

If the computer already has 2 in a 
row, then fill in the 3rd square, as opposed to moving at 
random.

PEDAC:

Rules/reqs: 
  - empty square can be between 2 `O`s
  - from each line we have 3 pairs of squares
    (ex. [1, 2], [1, 3], [2, 3])

Examples:
  - O O  <-O   [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows
  - <-O O O    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows
  - O <-O O    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows

  - O          [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    O
    <-O
  - <-O        [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    O
    O
  - O          [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    <-O
    O
  
  - <-O        [[1, 5, 9], [3, 5, 7]]             # diagonals
        O
          O
  - O          [[1, 5, 9], [3, 5, 7]]             # diagonals
    <-O
        O
  - O          [[1, 5, 9], [3, 5, 7]]             # diagonals
      O
        <-O

High level/algorithm:
- If 2 squares in a line have `'X'` and 3rd square has an `', '` 
  - computer puts `'O'` in the 3rd square
- Check another pair
  - computer puts `'O'` in the 3rd square
- Check pair

- Define a method 
- If 2 squares in a line have `COMPUTER_MARKER` and and 3rd square has an `INITIAL_MARKER`
  - brd[line[]] = `COMPUTER_MARKER
- Otherwise
  - make a random move

For reference:
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

  computer_places_piece!(brd)
end
=end

# Code move to the ttt_bonus_features.rb
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

  computer_places_piece!(brd)  # changed the logic inside the game
end
