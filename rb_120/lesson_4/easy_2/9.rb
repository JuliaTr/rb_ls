=begin
What would happen if we added a play method to the Bingo class, 
keeping in mind that there is already a method of this name in 
the Game class that the Bingo class inherits from.
=end

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
  end
end



## Solution
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
  end

  def play
    "Start the game in #{self.class} class"
  end
end

game_of_bingo = Bingo.new
p game_of_bingo.play  # "Start the game in Bingo class"



## Eperiments
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
  end

  def play
    "Start the game in #{self} class"
  end
end

game_of_bingo = Bingo.new
p game_of_bingo.play
# "Start the game in #<Bingo:0x000000010dff5038> class"
