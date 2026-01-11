# the user makes a choice
# the computer makes a choice
# the winner is displayed

=begin
Step 1:
Rock, Paper, Scissors is a two-player game where each player chooses
one of three possible moves: rock, paper, or scissors. The chosen moves
will then be compared to see who wins, according to the following rules:

- rock beats scissors
- scissors beats paper
- paper beats rock

If the players chose the same move, then it's a tie.


Step 2 - Extract the major nouns and verbs:
Nouns: player, move, rule
Verbs: choose, compare

"rock", "paper", "scissors" are all variations on a move.
The major noun is move.


Step 3 - Organizing the verbs with the nouns
Player
  - choose
Move
Rule

  - compare
=end

class Player
  def initialize
    # maybe a "name"? what about a "move"?
  end

  def choose
  end
end

class Move
  def initialize
    # seems like we need something to keep track
    # of the cjoice... a move object can be "paper", "rock" or "scissors"
  end
end

class Rule
  def initialize
    # not sure what the "state" of a rule object should be
  end
end

# not sure where "compare" goes yet
def compare(move1, move2)
end



## Orchestration Engine
class RPSGame
  def initialize
  end

  def play
    display_welcome_message
    human_choose_move
    computer_choose_move
    display_winner
    display_goodbye_message
  end
end

RPSGame.new.play


# Final step:
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new
  end

  def play
    display_welcome_message
    human.choose
    computer.choose
    display_winner
    display_goodbye_message
  end
end

RPSGame.new.play