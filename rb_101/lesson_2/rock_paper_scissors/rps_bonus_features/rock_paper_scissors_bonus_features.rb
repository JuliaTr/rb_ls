=begin

Bonus features:
1. Add Lizard and Spock to the game.

2. Update the program so the user can type "r" for "rock," "p" for "paper," etc.

3. Keep score of the player's and computer's wins. When either
the player or computer reaches three wins, the match is over,
and the winning player becomes the grand winner.
PEDAC:
P: add score to an array on each round
=end

require 'yaml'

MESSAGES = YAML.load_file('rps_messages.yml')
CHOICES = { 'r' => { full_name: 'rock', beats: ['scissors', 'lizard'] },
            'p' => { full_name: 'paper', beats: ['rock', 'spock'] },
            'sc' => { full_name: 'scissors', beats: ['paper', 'lizard'] },
            'l' => { full_name: 'lizard', beats: ['spock', 'paper'] },
            'sp' => { full_name: 'spock', beats: ['scissors', 'rock'] } }
MAX_PLAYER_SCORE = 3
SCORE = 1

def messages(message)
  MESSAGES[message]
end

def prompt(key, *args)
  message = messages(key) % args
  Kernel.puts("=> #{message}")
end

def clear
  system('clear')
end

def display_welcome_messages
  clear()
  prompt('welcome')
  prompt('continue_game')
  gets()
  clear()
end

def validate_choice
  choice = ''
  valid_string = ''

  loop do
    prompt('choice')
    choice = gets().chomp().downcase()
    clear()

    valid_string = CHOICES[choice][:full_name]
    break if CHOICES.key?(choice)

    prompt('not_valid_choice')
  end

  prompt('user_choice', valid_string)
  choice
end

def display_computer_choice
  computer_choice = CHOICES.map { |key, _| CHOICES[key][:full_name] }.sample
  prompt('computer_choice', computer_choice)
  computer_choice
end

def display_results(player, computer)
  who_win =
    if player &&
       (computer == CHOICES[player][:beats][0] ||
        computer == CHOICES[player][:beats][1])
      "You won!"
    elsif computer == CHOICES[player][:full_name]
      "It's a tie"
    else
      "Computer won!"
    end

  prompt('winner', who_win)
  who_win
end

def calculate_score(defined_winner, player_score, computer_score)
  if defined_winner == "You won!"
    player_score << SCORE
  elsif defined_winner == "Computer won!"
    computer_score << SCORE
  end
end

def main_methods(player_score, computer_score)
  validated_choice = validate_choice()
  computer_choice = display_computer_choice()
  results = display_results(validated_choice, computer_choice)
  calculate_score(results, player_score, computer_score)
  calculated_player_score = calculate_sum_player_score(player_score)
  calculated_computer_score = calculate_sum_computer_score(computer_score)
  [calculated_player_score, calculated_computer_score]
end

def calculate_sum_player_score(player_score)
  player_score_total = player_score.sum
  prompt('player_score', player_score_total)
  player_score_total
end

def calculate_sum_computer_score(computer_score)
  computer_score_total = computer_score.sum
  prompt('computer_score', computer_score_total)
  computer_score_total
end

def another_game
  prompt('play_again')
  answer = Kernel.gets().chomp()
  clear()
  answer.downcase().start_with?('y') || answer == ""
end

def next_round
  prompt('round')
  prompt('continue_game')
  gets()
  clear()
end

def return_empty_arrays
  arr_player = []
  arr_computer = []
  [arr_player, arr_computer]
end

def game
  player_score_all, computer_score_all = return_empty_arrays()

  loop do
    pl_score, comp_score = main_methods(player_score_all, computer_score_all)

    if pl_score == MAX_PLAYER_SCORE
      prompt('player_winner', pl_score)
      player_score_all, computer_score_all = return_empty_arrays()
      break unless another_game()
    elsif comp_score == MAX_PLAYER_SCORE
      prompt('computer_winner', comp_score)
      player_score_all, computer_score_all = return_empty_arrays()
      break unless another_game()
    else
      next_round()
    end
  end
end

def main_program
  display_welcome_messages()
  game()
  clear()
  prompt('thank_you')
end

# Main program
main_program()
