#require 'rest-client'
#require 'json'

#greet the user
puts "hello! Welcome to petitions!"

puts "what kind of petitions would you like to see? ('open' or 'closed')"

status = gets.strip

#get petitions
#petitions = ["gun control", "cannabis","watever"]
response = rest-client.get "http://api.whitehouse.gov/v1/petitions.json
?status=#{status}"

parsed_response = json.parse(response)

petitions = parsed_response["results"]

#print petition
petitions.each_with index do |petition, index|
puts "#{index+1}.#{petition}"
end

#goodbye
puts "thanks bye"