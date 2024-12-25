# Improved:
# -- refactored


def prompt(message)
  puts ">> #{message}"
end

def get_title(prompt_message)
  prompt(prompt_message)
  title = gets.chomp.to_sym
end

def get_rating(prompt_message)
  prompt(prompt_message)
  rating = gets.chomp.to_i
end

options = <<-MSG
What would you like to do?
  -- Type 'add' to add a movie.
  -- type 'update' to update a movie.
  -- Type 'display' to display all movies.
  -- Type 'delete' a movie.
MSG

# Main program
movies = {inside_out: 4}

prompt(options)
choice = gets.chomp

case choice
when 'add'
  recieved_title = get_title('What movie would you like to add?')
  recieved_rating = get_rating('What rating does this movie have?')

  movies[recieved_title] = recieved_rating
  prompt("A movie with a title '#{recieved_title.capitalize}' and
  a rating of #{recieved_rating} was added.")

when 'update'
  recieved_title = get_title('What movie would you like to update?')

  if movies[recieved_title].nil?
    prompt("This movie doesn't exist.")
  else
    recieved_rating = get_rating('What rating would you like to update?')
    
    movies[recieved_title] = recieved_rating
    prompt("A movie with a title '#{recieved_title.capitalize}' 
    was updated. It's new rating is #{recieved_rating}.")
  end

when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end

when 'delete'
  recieved_title = get_title('What movie would you like to delete?')

  if movies[recieved_title].nil?
    prompt("This movie doesn't exist.")
  else
    movies.delete(recieved_title)
    prompt("The movie '#{recieved_title.capitalize}' was deleted.")
  end

else
  prompt("I don't understand you. Run the program again to make a choice.")
end

p movies
