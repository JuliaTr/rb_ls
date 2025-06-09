# the user makes a choice
# the computer makes a choice
# the winner is displayed

VALID_CHOICE = %w(rock paper scissors)

# # The `test_method` is created to show where in the program a method 
# # can be and cannot be invoked
# def test_method
#   prompt('test message')
# end

# # test_method
# # doesn't work because the method `prompt` is invoked before its definition.

def prompt(message)
  Kernel.puts("=> #{message}")
end

# test_method
# works because the method is invoked after the `prompt` method definition

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICE.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICE.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
