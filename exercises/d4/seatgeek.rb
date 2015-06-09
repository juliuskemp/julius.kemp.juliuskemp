require 'rest-client'
require 'json'

#Say hello
puts "Hello, Welcome to the activities app"
#Get events
begin 
	response = RestClient.get ""
rescue RestClient: 
#print events