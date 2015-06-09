index[0] = 1
index[1] = 1
index[2] = index[0] + index[1]

puts "Enter a number:"
num = gets.strip

if num = 1
	puts 1
elsif num => 2
	puts (index - 1) + (index - 2)
