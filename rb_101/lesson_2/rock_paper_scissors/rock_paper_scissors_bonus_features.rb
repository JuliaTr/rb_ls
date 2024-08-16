VALID_CHOICE = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

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
    prompt("Chose: #{VALID_CHOICE.join(', ')}")
    choice = gets().chomp()

    break if VALID_CHOICE.include?(choice)
    prompt("That's not a valid choice")
  end

  computer_choice = VALID_CHOICE.sample

  prompt("Your choice is: #{choice}, computer choice is: #{computer_choice}")

  puts display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
