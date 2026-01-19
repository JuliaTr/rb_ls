# =begin
# What can we add to the Bingo class to allow it to inherit the 
# play method from the Game class?
# =end

# class Game
#   def play
#     "Start the game!"
#   end
# end

# class Bingo
#   def rules_of_play
#      # rules of play
#   end
# end


## Solution
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    # rules of play
  end
end

game_of_bingo = Bingo.new
p game_of_bingo       # create a new instance of the class `Bingo`
p game_of_bingo.play  # call the `play` method on that instance

=begin
#<Bingo:0x0000000104805598>
"Start the game!"
=end