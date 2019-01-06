# COMMENT OUT ALTERNATIVES TO RUN

# --- Course example version ---

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end


# --- Case statement example... ----

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

# --- MY VERSION ---

movies = {
	amelie: 4  
}

puts "MOVIE RATINGS"
puts "What would you like to do?"
puts "add | update | display | delete"
choice = gets.chomp

case choice
  when "add"
  	puts "Enter the movie title: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "What is your rating for #{title}?"
  		rating = gets.chomp
      movies[title.to_sym] = rating.to_i
  		puts "#{title} added!"
    else
      puts "Movie already exists!"
    end
  when "update"
  	puts "Enter the movie title: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "This movie doesn't exist yet."
    else
      puts "What is your new rating for #{title}?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Rating updated!"
    end
  when "display"
  	movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
  	puts "Which movie would you like to remove?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "This movie doesn't exist."
    else
      movies.delete(title)
  		puts "#{title} deleted."
    end
	else
  	puts "Sorry, I didn't understand that command."
end