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
