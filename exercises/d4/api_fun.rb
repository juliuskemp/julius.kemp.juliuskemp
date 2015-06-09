require 'rest-client'
require 'json'
# greet user
puts "Hello! Welcome to the Activities App!"
puts "Enter a zip code:"
city = gets.strip.to_i
page = 1
nums = 1
puts "Enter a date(YYYY-MM-DD):"
selected_day= gets.strip

puts "Finding events near you..."

while true
	# get the events 
	begin
		response = RestClient.get "http://api.seatgeek.com/2/events?page=#{page}&geoip=#{city}&datetime_local.gte=#{selected_day}"
	rescue RestClient::ResourceNotFound
		puts "Sorry, there was an error getting petitions"
	end
	parsed_response = JSON.parse(response)
	events = parsed_response["events"]

	# print events 
	events.each_with_index do |event, index|
		type = event["taxonomies"].first["name"]
		title = event["title"]
		venue = event["venue"]["name"]
		location = event["venue"]["city"]
		date_all = event["datetime_local"]
		year = date_all[0] + date_all[1] + date_all[2] + date_all[3]
		month = date_all[5] + date_all[6]
		day = date_all[8] + date_all[9]
		time = date_all[11] + date_all[12] + date_all[13] + date_all[14] + date_all[15]
		puts "#{index +1}. #{type.upcase}: #{title}. Takes place at #{venue} in #{location} on #{month}/#{day} at #{time}"
	end 
	page += 1
	puts "Would you like to see more options? (y/n)"
	break if gets.strip == "n" 
end 
puts "Thanks, bye!"


