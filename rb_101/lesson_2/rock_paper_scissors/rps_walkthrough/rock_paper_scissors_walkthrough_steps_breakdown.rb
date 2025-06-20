# The program is without things to consider incuded to the assignment

## Step 6:
# Refactoring: extract piece of logic to a helper method 
# `display_results`
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'rock' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

=begin

$ ruby rock_paper_scissors_walkthrough_steps_breakdown.rb
=> Choose one: rock, paper, scissors
n
=> That's not a valid choice
=> Choose one: rock, paper, scissors
rock
=> You choose: rock; Computer choose: scissors
=> You won!
=> Do you want to play again?
y
=> Choose one: rock, paper, scissors
paper
=> You choose: paper; Computer choose: rock
=> You won!
=> Do you want to play again?
y
=> Choose one: rock, paper, scissors
scissors
=> You choose: scissors; Computer choose: rock
=> Computer won!
=> Do you want to play again?
h
=> Thank you for playing. Good bye!

=end


## Step 5:
# To play again:
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissor') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper')
    prompt("You won!")
  elsif (choice == 'rock' && computer_choice == 'paper') ||
        (choice == 'rock' && computer_choice == 'scissors') ||
        (choice == 'scissors' && computer_choice == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

=begin

$ ruby rock_paper_scissors_walkthrough_steps_breakdown.rb
=> Choose one: rock, paper, scissors
rock
=> You choose: rock; Computer choose: rock
=> It's a tie!
=> Do you want to play again?
y
=> Choose one: rock, paper, scissors
paper
=> You choose: paper; Computer choose: paper
=> It's a tie!
=> Do you want to play again?
n
=> Thank you for playing. Good bye!

=end


## Step 4:
# Calculate who wins:
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

choice = ''
loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice")
  end
end

computer_choice = VALID_CHOICES.sample

prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

if (choice == 'rock' && computer_choice == 'scissors') ||
    (choice == 'paper' && computer_choice == 'rock') ||
    (choice == 'scissors' && computer_choice == 'paper')
  prompt("You won!")
elsif (choice == 'rock' && computer_choice == 'paper') ||
      (choice == 'paper' && computer_choice == 'scissors') ||
      (choice == 'scissors' && computer_choice == 'rock')
  prompt("Computer won!")
else
  prompt("It's a tie!")
end

=begin

$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
paper
=> You choose: paper; Computer choose: paper
=> It's a tie!
$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
scissors
=> You choose: scissors; Computer choose: paper
=> You won!
$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
scissors
=> You choose: scissors; Computer choose: rock
=> Computer won!

=end




## Step 3:
# Create a loop:
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Need to add `choice = ''` in order be able access `choice` in 
# the outer scope later in the program without an error below.
choice = ''
loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = Kernel.gets().chomp()

  # If our choice is in one of the elements of the array pointed
  # by `VALID_CHOICES`, then we're done. Else, something is wrong
  if VALID_CHOICES.include?(choice)
    # The loop will run until the valid choice is provided.
    break
  else
    prompt("That's not a valid choice.")
  end
end

computer_choice = VALID_CHOICES.sample

Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

=begin

The run was done without initialized and assigned `choice = ''`:

$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
rock
rock_paper_scissors_walkthrough_version1.rb:28:in `<main>': undefined local variable or method `choice' for main:Object (NameError)

Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")


The run was done after adding `choice = ''`:

$ ruby rock_paper_scissors_walkthrough_version1.rb
$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
papre
=> That's not a valid choice.
=> Choose one: rock, paper, scissors
paper
You chose: paper; Computer chose: scissors

=end



## Step 2:
# Create a constant to use throughout the program:
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Choose one: #{VALID_CHOICES.join(', ')}")
choice = Kernel.gets().chomp()

computer_choice = VALID_CHOICES.sample

=begin

Experiments with `join`:

irb(main):001:0> ['rock', 'paper', 'scissors'].join
=> "rockpaperscissors"
irb(main):002:0> ['rock', 'paper', 'scissors'].join(' ')
=> "rock paper scissors"
irb(main):003:0> ['rock', 'paper', 'scissors'].join(',')
=> "rock,paper,scissors"
irb(main):004:0> ['rock', 'paper', 'scissors'].join(', ')
=> "rock, paper, scissors"
irb(main):005:0> 

=end



## Step 1:
def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Choose one: rock, paper, scissors")
choice = Kernel.gets().chomp()

computer_choice = ['rock', 'paper', 'scissors'].sample

p computer_choice

=begin

$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
rock
"rock"
$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
paper
"paper"
$ ruby rock_paper_scissors_walkthrough_version1.rb
=> Choose one: rock, paper, scissors
scissors
"paper"

=end
