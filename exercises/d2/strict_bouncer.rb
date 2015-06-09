puts "Welcome to da hippin club. Whats your age?"
age = gets.strip.to_i
if age < 21
	puts "too young, fool!"
elsif age > 65
	puts "Go back to the nursing home!"
else puts "Aw yeah, come on in"
end