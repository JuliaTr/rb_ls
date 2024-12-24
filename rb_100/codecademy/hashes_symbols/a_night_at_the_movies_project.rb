# Final program:
movies = {inside_out: 4}

puts '>> What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' a movie."

choice = gets.chomp

case choice
when 'add'
  puts '>> What movie would you like to add?'
  title = gets.chomp.to_sym

  puts '>> What rating does this movie have?'
  rating = gets.chomp.to_i

  movies[title] = rating
  puts ">> A movie with a title '#{title.capitalize}' and a rating of #{rating} was added."
when 'update'
  puts '>> What movie would you like to update?'
  title = gets.chomp.to_sym

  if movies[title].nil?
    puts ">> This movie doesn't exist."
  else
    puts '>> What rating would you like to update?'
    rating = gets.chomp.to_i
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}' was updated. It's new rating is #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts '>> What movie would you like to delete?'
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts ">> This movie doesn't exist."
  else
    movies.delete(title)
    puts ">> The movie '#{title.capitalize}' was deleted."
  end
else
  puts ">> I don't understand you. Run the program again to make a choice."
end

p movies
=begin
$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
add
>> What movie would you like to add?
lion_king
>> What rating does this movie have?
8
>> A movie with a title 'Lion_king' and a rating of 8 was added.
{:inside_out=>4, :lion_king=>8}

$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
update
>> What movie would you like to update?
inside_out
>> What rating would you like to update?
7
>> A movie with a title 'Inside_out' was updated. It's new rating is 7.
{:inside_out=>7}

$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
display
inside_out: 4
{:inside_out=>4}

$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
delete
>> What movie would you like to delete?
inside_out
>> The movie 'Inside_out' was deleted.
{}

$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
bla-bla
>> I don't understand you. Run the program again to make a choice.
{:inside_out=>4}

It `inside_out` already exists. However, the program lets to update
when the `add` option is chosen.
$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' a movie.
add
>> What movie would you like to add?
inside_out
>> What rating does this movie have?
8
>> A movie with a title 'Inside_out' and a rating of 8 was added.
{:inside_out=>8}
=end



# Process/steps of building a program:
# Step 1:
movies = {inside_out: 4}

puts ">> What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display a movie."
puts "-- Type 'delete' a movie."

choice = gets.chomp

case choice
when 'add'
  puts 'Added'
when 'update'
  puts 'Updated'
when 'display'
  puts 'Displayed'
when 'delete'
  puts 'Deleted'
else
  puts "I don't understand you. Run the program again and make a choice."
end


# Step 2:
movies = {inside_out: 4}

puts '>> What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display a movie."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when 'add'
  puts '>> What movie would you like to add?'
  title = gets.chomp.to_sym

  puts '>> What rating does the movie have?'
  rating = gets.chomp.to_i

  movies[title] = rating
  puts ">> A movie with a '#{title.capitalize}' and a rating 
    of #{rating} was added."
when 'update'
  puts 'Updated'
when 'display'
  puts 'Displayed'
when 'delete'
  puts 'Deleted'
else
  puts "I don't understand you. Run the program again and make a choice."
end

p movies
=begin
$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display a movie.
-- Type 'delete' to delete a movie.
add
>> What movie would you like to add?
lion_king
>> What rating does the movie have?
7
>> A movie with a 'Lion_king' and a rating 
    of 7 was added.
{:inside_out=>4, :lion_king=>7}
=end


# Step 3
movies = {inside_out: 4}

puts '>> What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when 'add'
  puts '>> What movie would you like to add?'
  title = gets.chomp.to_sym

  puts '>> What rating does the movie have?'
  rating = gets.chomp.to_i

  if movies[title].nil?
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}' and a rating of #{rating} was added."
  else
    puts '>> This movie already exists.'
  end
when 'update'
  puts 'Updated'
when 'display'
  puts 'Displayed'
when 'delete'
  puts 'Deleted'
else
  puts "I don't understand you. Run the program again to make a choice."
end

p movies
=begin
>> What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' to delete a movie.
add
>> What movie would you like to add?
lion_king
>> What rating does the movie have?
7
>> A movie with a title 'Lion_king' and a rating of 7 was added.
{:inside_out=>4, :lion_king=>7}
=end



# Step 4
movies = {inside_out: 4}

puts '>> What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when 'add'
  puts '>> What movie would you like to add?'
  title = gets.chomp.to_sym

  puts '>> What rating does the movie have?'
  rating = gets.chomp.to_i

  if movies[title].nil?
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}' and a rating of #{rating} was added."
  else
    puts '>> This movie already exests.'
  end
when 'update'
  puts '>> What movie would you like to update?'
  title = gets.chomp.to_sym

  if movies[title].nil?
    puts ">> this movie doesn't exist"
  else
    puts ">> What new rating would you like to update?"
    rating = gets.chomp.to_i
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}` was updated. It's new rating is #{rating}."
  end
when 'display'
  puts 'Displayed'
when 'delete'
  puts 'Deleted'
else
  puts "I don't understand you. Run your program again to make a choice."
end

p movies

=begin
$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' to delete a movie.
update
>> What movie would you like to update?
inside_out
>> What new rating would you like to update?
8
>> A movie with a title 'Inside_out` was updated. It's new rating is 8.
{:inside_out=>8}
=end



# Step 5
movies = {inside_out: 4}

puts '>> What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when 'add'
  puts '>> What movie would you like to add?'
  title = gets.chomp.to_sym

  puts '>> What rating does the movie have?'
  rating = gets.chomp.to_i

  if movies[title].nil?
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}' and a rating of #{rating} was added."
  else
    puts '>> This movie already exists.'
  end
when 'update'
  puts '>> What movie would you like to update?'
  title = gets.chomp.to_sym

  if movie[title].nil?
    puts ">> This movie doesn't exist."
  else
    puts '>> What new rating would you like to update?'
    rating = gets.chomp.to_i
    movies[title] = rating
    puts ">> A movie with a title '#{title.capitalize}' was updated. It's new rating is #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts 'Deleted'
else
  puts "I don't understand you. Run the program again to make a choice."
end

p movies
=begin
$ ruby a_night_at_the_movies_project.rb
>> What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' to delete a movie.
display
inside_out: 4
{:inside_out=>4}
=end
