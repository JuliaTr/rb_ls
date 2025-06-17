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
