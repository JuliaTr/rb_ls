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

module Runnable
  def run
    puts "Running!"
  end
end

# Main class for common attacker, midfielder, defender, goalkeeper
# behaviours
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
  def lob_ball
    puts "Lobbing the ball!"
  end
end

class Midfielder < Player
  def pass_ball
    puts "Passing the ball!"
  end
end

class Defender < Player
  def block_ball
    puts "Blocking the ball!"
  end
end

class Goalkeeper < Player
end

class Referee
  include Runnable

  def initialize(uniform_color)
    @uniform = uniform_color
    @whistle = 'have'
  end

  def to_whistle
    puts "I'm whistling the whistle, which I #{@whistle}!"
  end
end

attacker = Attacker.new('blue')
midfielder = Midfielder.new('blue')
defender = Defender.new('blue')
goalkeeper = Goalkeeper.new('white with blue stripes')
referee = Referee.new('black')

# All the players’ jersey is blue, except the goalkeeper, his 
# jersey is white with blue stripes.
p attacker
p midfielder
p defender
p goalkeeper

# The referee has a whistle. He wears black.
p referee
=begin
#<Attacker:0x0000000100aa4230 @jersey="blue">
#<Midfielder:0x0000000100aa4168 @jersey="blue">
#<Defender:0x0000000100aa40a0 @jersey="blue">
#<Goalkeeper:0x0000000100aa4000 @jersey="white with blue stripes">
#<Referee:0x0000000100aa3f38 @uniform="black", @whistle="has">
=end

# All players can run and shoot the ball.
attacker.run    # Running!
midfielder.run  # Running!
defender.run    # Running!
goalkeeper.run  # Running!

attacker.shoot_ball    # Shooting the ball!
midfielder.shoot_ball  # Shooting the ball!
defender.shoot_ball    # Shooting the ball!
goalkeeper.shoot_ball  # Shooting the ball!

# Attacker should be able to lob the ball.
attacker.lob_ball      # Lobbing the ball!

# Midfielder should be able to pass the ball.
midfielder.pass_ball   # Passing the ball!

# Defender should be able to block the ball.
defender.block_ball   # Blocking the ball!

# The referee able to run and whistle.
referee.run           # Running!
referee.to_whistle   # I'm whistling the whistle, which I have!
