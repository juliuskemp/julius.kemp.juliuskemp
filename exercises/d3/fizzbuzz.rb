100.times do |x|
	x = x+1
	#this throws out the numbers 1 - 100
	fizz_num = (x % 3 == 0) #??
	buzz_num = (x % 5 == 0) #??
	 if fizz_num && buzz_num # && = and
	 	puts "fizzbuzz"
     elsif fizz_num
	   puts "fizz"
     elsif buzz_num
	   puts "buzz"
     else
	puts x
 end # ends if
end # ends do
