movies = {
  Alien: 4.8,
  Aliens: 4.7
  }

puts "Welcome to Movie Library."
puts "- Type 'add' to add a movie and rating."
puts "- Type 'update' to update the library."
puts "- Type 'display' to display movie library."
puts "- Type 'delete' to delete a movie."
puts "What would you like to do? "

choice = gets.chomp

case choice
  when 'add'
    puts "Enter movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error. Movie already exists in the library."
      puts "Enter movie rating: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "You have added #{title} with a rating of #{rating}."
    end
  when 'update'
    puts "Enter movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error. Movie not found."
    else
      puts "Enter movie rating: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with a rating of #{rating}."
    end
  when 'display'
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end
  when 'delete'
    puts "Enter movie for deletion: "
    title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Error. Movie not found."
  else
    movies.delete(title)
    puts "#{title} has been removed."
  end
  else
    puts "Error. Input not recognized. Please enter valid input."
end
