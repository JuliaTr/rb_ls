## Step 2:




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