require 'yaml'

MESSAGES = YAML.load_file('rps_messages_impr.yml')
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

    break if CHOICES.key?(choice)
    prompt('not_valid_choice')
  end

  valid_string = CHOICES[choice][:full_name]
  prompt('user_choice', valid_string)
  choice
end

def display_computer_choice
  computer_choice = CHOICES.map { |key, _| CHOICES[key][:full_name] }.sample
  prompt('computer_choice', computer_choice)
  computer_choice
end

def display_results(player_key, computer_choice)
  computer_key = CHOICES.keys { |_, v| v[:full_name] == computer_choice }
  
  who_win =
    if CHOICES[player_key][:full_name] == computer_choice
      "It's a tie. Both players chose the same move."
    elsif CHOICES[player_key][:beats].include?(computer_choice)
      "You won!"
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