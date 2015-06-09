puts "Hay bru.  Let's compute some quadform"
puts "Give me an A"
a = gets.strip.to_i
puts "Give me a B"
b = gets.strip.to_i
puts "Give me a C"
c = gets.strip.to_i
puts "x is either"
puts "#{(-b + Math.sqrt(b*b - 4*a*c))/2*a}"
puts "or"
puts "#{(-b - Math.sqrt(b*b - 4*a*c))/2*a}"
puts "Goodbye"