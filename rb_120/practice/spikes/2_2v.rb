=begin
(From SPOT wiki)
Design a Sports Team:

- Include 4 players (attacker, midfielder, defender, goalkeeper)
- All the players’ jersey is blue, except the goalkeeper, his 
  jersey is white with blue stripes
- All players can run and shoot the ball.
- Attacker should be able to lob the ball
- Midfielder should be able to pass the ball
- Defender should be able to block the ball
- The referee has a whistle. He wears black and is able to run 
  and whistle.

Nouns: players (attacker, midfielder, defender, goalkeeper), jersey,
       referee, whisle
Verbs: run, shoot ball, lob ball, pass ball, block ball, run and 
       whistle
=end

## Alternative solution for 2.rb

# Unrelated classes `Player` and `Referee` gain an ability to `run`.
# It demonstrates interface inheritance, where class adopts the behaviours
# defined in a module.
module Runnable
  def run
    puts "Running!"
  end
end

# Subclasses`Attacker`, `Midfielder`, `Defender`, `Goalkeeper` have "is-a"
# relationship with `Player` superclass. Subclasses inherit from superclass.
class Player
  include Runnable

  def initialize(jersey_color)
    @jersey = jersey_color
  end

  def shoot_ball
    puts "Shooting the ball!"
  end
end

class Attacker < Player
  def initialize
    super('blue')
  end

  def lob_ball
    puts "Lobbing the ball!"
  end
end

class Midfielder < Player
  def initialize
    super('blue')
  end

  def pass_ball
    puts "Passing the ball!"
  end
end

class Defender < Player
  def initialize
    super('blue')
  end

  def block_ball
    puts "Blocking the ball!"
  end
end

class Goalkeeper < Player
  def initialize
    super('wite with blue stripes')
  end
end

class Whistle
  def blow
    puts "FWEEEEE!"
  end
end

class Referee
  include Runnable

  def initialize
    @uniform = 'black'
    @whistle = Whistle.new  # `Referee` has a `Whistle` object
    # This demonstrates "has-a" relationship through composition.
  end

  def blow_whistle
    @whistle.blow
  end
end

attacker = Attacker.new
midfielder = Midfielder.new
defender = Defender.new
goalkeeper = Goalkeeper.new
referee = Referee.new

# All the players’ jersey is blue, except the goalkeeper, his 
# jersey is white with blue stripes.
p attacker
p midfielder
p defender
p goalkeeper

# The referee has a whistle. He wears black.
p referee

=begin
#<Attacker:0x0000000103e13238 @jersey="blue">
#<Midfielder:0x0000000103e13148 @jersey="blue">
#<Defender:0x0000000103e13080 @jersey="blue">
#<Goalkeeper:0x0000000103e12fb8 @jersey="wite with blue stripes">
#<Referee:0x0000000103e12f18 @uniform="black", @whistle=#<Whistle:0x0000000103e12e50>>
=end

# All players can run and shoot the ball.
attacker.run   # Running!
midfielder.run # Running!
defender.run   # Running!
goalkeeper.run # Running!

attacker.shoot_ball   # Shooting the ball!
midfielder.shoot_ball # Shooting the ball!
defender.shoot_ball   # Shooting the ball!
goalkeeper.shoot_ball # Shooting the ball!

# Attacker should be able to lob the ball.
attacker.lob_ball    # Lobbing the ball!

# Midfielder should be able to pass the ball.
midfielder.pass_ball  # Passing the ball!

# Defender should be able to block the ball.
defender.block_ball   # Blocking the ball!

# The referee able to run and whistle.
referee.run           # Running!
referee.blow_whistle  # FWEEEEE!
