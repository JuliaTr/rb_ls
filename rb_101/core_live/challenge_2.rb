# Make the code below more DRY using knowledge of precedence 
# and logical operators. 

def validate_game_config(name, rounds, difficulty,
  use_defaults)
  if use_defaults
    puts "Welcome to Asteroid! Let's play"
    return
  elsif name == ''
    puts "You need to fill in all fields!"
  elsif rounds < 1
    puts "You need to fill in all fields!"
    return
  elsif difficulty == ''
    puts "You need to fill in all fields!"
    return
  else
    puts "Welcome to Asteroid! Let's play!"
  end
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)
validate_game_config('Jack', 3, 'Hard', true)

## Bonus Questions ##
# 1. Write an alternative version with as few lines
#    as possible. Is this better?
# 2. Make this function sturdier by throwing an error
#    if the `name` and `difficulty` arent strings.
# 3. Make the "Let's play!" message custom by including
#    the given arguments in the output.



## Work on the solutions with bonus questions:

# Work on what each conditional evaluates to,
# when ivoking the method with different arguments passed to it.

validate_game_config('Jack', 0, 'Hard', false)
# use_defaults           false        # false
# name == ''             'Jack'       # false
# rounds < 1              0           # true     # => true
# `rounds < 1` is truthy (0 < 1)
# difficulty == ''      'Hard'        # false
# `else` clause                       # false

# irb(main):065:0> false || false || true || false || false
# => true
# (false || false) || (true || false) || false
# false = false || false
# true = true || false
# true = false || true
# true = true || false

# Output: You need to fill in all fields!

validate_game_config('', 0, '', true)
# use_defaults       true         # true       # => true
# name == ''         ''           # true
# rounds < 1         0            # true
# difficulty == ''   ''           # true
# `else` clause                   # false

# irb(main):066:0> true || '' || 0 || '' || false
# => true
# (true || '') || (0 || '') || false
# true = true || ''
# 0 = 0 || ''
# true = true || 0
# true = true || false 

# Output: Welcome to Asteroid! Let's play

validate_game_config('Jack', 3, 'Hard', false)
# use_defaults       false        # false         
# name == ''         'Jack'       # false
# rounds < 1         3            # false
# difficulty == ''   'Hard'       # false
# `else` clause                   # true        # => true

# irb(main):067:0> false || false || false || false || true
# => true

# Output: Welcome to Asteroid! Let's play!

validate_game_config('Jack', 3, 'Hard', true)
# use_defauls       true          # true          # => true
# name == ''         'Jack'       # false
# rounds < 1         3            # false
# difficulty == ''   'Hard'       # false
# # `else` clause                   # false

# irb(main):068:0> true || false || false || false || false
# => true

# Output: Welcome to Asteroid! Let's play



### To DRY out the original code:
def validate_game_config(name, rounds, difficulty,
  use_defaults)
  if use_defaults
    puts "Welcome to Asteroid! Let's play"
  elsif (name == '') || (rounds < 1) || (difficulty == '')
    puts "You need to fill in all fields!"
  else 
    puts "Welcome to Asteroid! Let's play"
  end
end

validate_game_config('Jack', 0, 'Hard', false)
  # 'Jack'        # false
  # 0             # => true
  # 'Hard'        # false
  # false         # false
# Output: You need to fill in all fields!

validate_game_config('', 0, '', true)
  # ''            # true
  # 0             # true
  # ''            # true
  # true          # => true         
# Output: Welcome to Asteroid! Let's play

validate_game_config('Jack', 3, 'Hard', false)   
  # 'Jack'        # false
  # 3             # false
  # 'Hard'        # false
  # false         # => false 
# Output: Welcome to Asteroid! Let's play!

validate_game_config('Jack', 3, 'Hard', true)
  # 'Jack'        # false
  # 3             # false
  # 'Hard'        # false
  # true          # => true
# Output: Welcome to Asteroid! Let's play



### DRY out more:
def validate_game_config(name, rounds, difficulty, 
  use_defaults)
  if ((name == '') || (rounds < 1) || (difficulty == '')) && 
    (use_defaults == false)
    puts "You need to fill in all fields!"
  else
    puts "Welcome to Asteroid! Let's play!"
  end
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)    
validate_game_config('Jack', 3, 'Hard', true)

validate_game_config('', 3, '', false)



## Bonus Questions ##
# 1. Write an alternative version with as few lines
#    as possible. Is this better?
def validate_game_config(name, rounds, difficulty,
  use_defaults)
  puts (((name == '') || (rounds < 1) || 
        (difficulty == '')) && (use_defaults == false) ? 
        "You need to fill in all fields!" :
        "Welcome to Asteroid! Let's play!")
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)    
validate_game_config('Jack', 3, 'Hard', true)

validate_game_config('', 3, '', false)



# 2. Make this function sturdier by throwing an error
#    if the `name` and `difficulty` arent strings.

def validate_game_config(name, rounds, difficulty,
  use_defaults)
  unless name.is_a?(String) && difficulty.is_a?(String)
    puts %W[Oops, something went wrong. Name (#{name}) or
         Difficulty (#{difficulty}) aren't strings!].join(' ')
    return
  end

  puts (((name == '') || (rounds < 1) || 
        (difficulty == '')) && (use_defaults == false) ? 
        "You need to fill in all fields!" :
        "Welcome to Asteroid! Let's play!")
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)    
validate_game_config('Jack', 3, 'Hard', true)

validate_game_config('', 3, '', false)

validate_game_config(1, 0, 3, false)
validate_game_config(1, 0, 'Hard', false)
validate_game_config(5, 1, -1, false)



# 3. Make the "Let's play!" message custom by including
#    the given arguments in the output.
def validate_game_config(name, rounds, difficulty,
                         use_defaults)
  unless name.is_a?(String) && difficulty.is_a?(String)
    puts "Oops, something went wrong. Name (#{name}) or " \
          "Difficulty (#{difficulty}) aren't strings!"
    return
  end

  puts (((name == '') || (rounds < 1) ||
        (difficulty == '')) && (use_defaults == false) ?
        "You need to fill in all fields!" :
        "Welcome to Asteroid! Let's play!
         Name: #{name}
         Rounds: #{rounds}
         Difficulty: #{difficulty}")
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)  
validate_game_config('Jack', 3, 'Hard', true)

validate_game_config('', 3, '', false)

validate_game_config(1, 0, 3, false)
validate_game_config(1, 0, 'Hard', false)
validate_game_config(5, 1, -1, false)



## Experiments: 

def validate_game_config(name, rounds, difficulty,
  use_defaults)
  unless (name.is_a?(String) && difficulty.is_a?(String)) && ((!name.empty?) && (!difficulty.empty?))
    puts "Oops, something went wrong. Name or difficulty aren't strings or empty!"
    return
  end

  puts (((name == '') || (rounds < 1) || (difficulty == '')) 
        && (use_defaults == false) ?
        "You need to fill in all fields!"
        "Welcome to Asteroid! Let's play!
         Name: #{name}
         Rounds: #{rounds}
         Diffuculty: #{difficulty}")
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)    
validate_game_config('Jack', 3, 'Hard', true)

validate_game_config('', 3, '', false)

validate_game_config(1, 0, 3, false)
validate_game_config(1, 0, 'Hard', false)
validate_game_config(5, 1, -1, false)