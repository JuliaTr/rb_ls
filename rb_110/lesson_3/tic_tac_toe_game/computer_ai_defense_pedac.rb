=begin
Rewrite the method to meet RuboCop requirements:

ttt_bonus_features.rb:145:1: C: Metrics/AbcSize: Assignment Branch Condition size for computer_ai_defense! is too high. [<4, 25, 19> 31.65/18] (http://c2.com/cgi/wiki?AbcMetric, https://en.wikipedia.org/wiki/ABC_Software_Metric)
def computer_ai_defense!(brd) ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
ttt_bonus_features.rb:145:1: C: Metrics/CyclomaticComplexity: Cyclomatic complexity for computer_ai_defense! is too high. [11/7]
def computer_ai_defense!(brd) ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
ttt_bonus_features.rb:145:1: C: Metrics/PerceivedComplexity: Perceived complexity for computer_ai_defense! is too high. [12/8]
def computer_ai_defense!(brd) ...

Initial:
def computer_ai_defense!(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == INITIAL_MARKER
      return brd[line[2]] = COMPUTER_MARKER
    elsif brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER &&
          brd[line[0]] == INITIAL_MARKER
      return brd[line[0]] = COMPUTER_MARKER
    elsif brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER &&
          brd[line[1]] == INITIAL_MARKER
      return brd[line[1]] = COMPUTER_MARKER
    end
  end

  nil
end


PROBLEM:
Create a helper method that can identify if a line is "at risk" (has
2 of a specific marker and 1 empty space) and return the empy square's
position. 

Eliminate repetitive conditional logic. Work with the data
more abstractly rather than check each specific position combination 
manually.

Patterns: The same logic is repeated three times. Each condition checks 
          if two positions have the player marker and one position 
          is empty.
Count: how many squares in the line contain the player marker?
       how many squares in the line are empty?
       return the empty square position
Finding the empty square: identify which position is empty without checking
                          each combination individually
Method responsibilities: the current method does two things - finds
                         the square AND places the piece.
Ruby methods to consider: `count` for arrays; `select` or `find` for filering
                          `values_at` for getting multiple hash values at once

________________________________________

PEDAC:

Input:
  - current line (ex. `[1, 2, 3]` or `[1, 4, 7]`....)
  - board to access square values

Output: number of the only empty square on the line

High-level: 
  - check the current state of each square of the line (is it empty?
    does it have a player marker?)
  - access square values

Intermediate:
- count player markers (should be 2)
- count empty squares (should be 1)
- find and return the empty line square position if the line has 
  2 computer markers and 1 empty square

Algorithm:
- Define a method `find_defensive_square` which accepts 2 arguments
  (`line`, `brd`)
- Select key-value pairs which keys of the board are numbers of 
  the squares in the line (use `values_at`; `*` to unpack each value 
  from the array) 
  (Return: array)
- Count player markers 
  (values which contain `PLAYER_MARKER` and in the line in key-value 
  pairs on the board) 
  (Return: integer)
- Count empty squares 
  (values which is empty (`INITIAL_MARKER`) and in the line in key-value 
  pairs on the board)
  (Return: integer)
- If player markers are 2 and 1 empty square for this line
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

def find_defensive_square(brd, line)
  board_values = brd.values_at(*line) # array of values at keys in argument

  number_of_x = board_values.count(PLAYER_MARKER)
  number_of_empty_squares = board_values.count(INITIAL_MARKER)

  if number_of_x == 2 && number_of_empty_squares == 1
    selected_pairs = brd.select do |k, _|
      k == line[0] || k == line[1] || k == line[2]
    end

    return selected_pairs.key(INITIAL_MARKER)
  end

  nil
end

def computer_ai_defense!(brd)
  WINNING_LINES.each do |line|
    square = find_defensive_square(brd, line)

    return brd[square] = COMPUTER_MARKER if square
  end

  nil
end


=begin
PROBLEM:
BF: Computer AI: Defense

The computer currently picks a square at random.
Let's make the computer defensive minded, so that if there's 
an immediate threat, then it will defend the 3rd square. 
We'll consider an "immediate threat" to be 2 squares marked 
by the opponent in a row. If there's no immediate threat, 
then it will just pick a random square.

PEDAC:
P: computer moves on the square near beetween which player 
  did 2 moves, otherwise does random move

Inputs:
  - player and computer need to do 1 move each on the 
    and first second rounds
  - empty row can be betwen 2 `X`s
  

Examples:
  - X X O    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows
  - O X X    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows
  - X O X    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  # rows

  - X        [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    X
    O

  - O        [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    X
    X

  - X        [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  # columns
    O
    X

  - X        [[1, 5, 9], [3, 5, 7]]             # diagonals
      X
        O
  - O        [[1, 5, 9], [3, 5, 7]]             # diagonals
      X
        X
  
  - X        [[1, 5, 9], [3, 5, 7]]             # diagonals
      O
        X

Intermediate:
  - pairs for rows:
    [[1, 2], [2, 3], [3, 1], 
    [4, 5], [5, 6], [4, 6], 
    [7, 8], [8, 9], [7, 9]]
  - pairs for columns:
    [[1, 4], [4, 7], [1, 7],
    [2, 5], [5, 8], [2, 8],
    [3, 6], [6, 9], [3, 9]]
  - pairs for diagonals:
    [[1, 5], [5, 9], [1, 9]
    [3, 5], [5, 7], [3, 7]]

  - all pairs: 
    [[1, 2], [2, 3], [3, 1], [4, 5], [5, 6], [4, 6], [7, 8], [8, 9], [7, 9]] +
    [[1, 4], [4, 7], [1, 7], [2, 5], [5, 8], [2, 8], [3, 6], [6, 9], [3, 9]] +
    [[1, 5], [5, 9], [1, 9], [3, 5], [5, 7], [3, 7]]

  Note: Define if any pair contain one `X`
    `#any?`

  [['X', 2], [2, 'X'], ['X', 'X']]

High strategy/algorithm:
  - After the 2nd round check the board on whether player marked:
    - 2 squares horizontaly
    - 2 squares vertically
    - 2 squares in diagonal
  - If player marked 2 squares horizontaly/vertically/diagonal
    - computer mark square on the same line
  - If player hasn't marked 2 squares horizontaly/vertically/diagonal
    - computer does a random move


- Define a method
- if rows or columns, or diagonals contain pairs with 2 squares 
  marked `X` (see int and notes)
    - computer move on the third square

Find pairs:
- After defining a method
- Initialize a new `winning_lines` variable
    winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + 
                    [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + 
                    [[1, 5, 9], [3, 5, 7]]
- Initialize an empty array `all_pairs` (Return: a new nested array with pairs)
- Iterate on nested array `|sub_array|`
  - `[sub_array[0], sub_array[1]]`, 
  - push it `all_pairs`
  - `[sub_array[1], sub_array[2]]`, 
  - push it `all_pairs`
  - `[sub_array[0], sub_array[2]]`
  - push it `all_pairs`
Returned:
    [[1, 2], [2, 3], [3, 1], [4, 5], [5, 6], [4, 6], [7, 8], [8, 9], [7, 9]] +
    [[1, 4], [4, 7], [1, 7], [2, 5], [5, 8], [2, 8], [3, 6], [6, 9], [3, 9]] +
    [[1, 5], [5, 9], [1, 9], [3, 5], [5, 7], [3, 7]]
=end

# Find pairs:
def computer_ai_defense_pairs
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + 
                    [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + 
                    [[1, 5, 9], [3, 5, 7]]
  # p winning_lines

  all_pairs = []
  winning_lines.each do |sub_array|
    all_pairs << [sub_array[0], sub_array[1]]
    all_pairs << [sub_array[1], sub_array[2]]
    all_pairs << [sub_array[0], sub_array[2]]
  end

  all_pairs
end

p computer_ai_defense_pairs
# [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
# [[1, 2], [2, 3], [1, 3], [4, 5], [5, 6], [4, 6], [7, 8], [8, 9], [7, 9], [1, 4], [4, 7], [1, 7], [2, 5], [5, 8], [2, 8], [3, 6], [6, 9], [3, 9], [1, 5], [5, 9], [1, 9], [3, 5], [5, 7], [3, 7]]
