x = rand(10)

guess = gets.to_i

until guess == x do
	puts 'too high' if guess > x
	puts 'too low' if guess < x
	guess = gets.to_i
end
puts 'correct'