require 'rest-client'
require 'json'

puts "welcome"

puts "choose a feed - hot or top"

feed = gets.strip

puts choose a subreddit ('funny', 'aww')

subreddit = gets.strip

puts "loading"

response = RestClien.get "http://www.reddit.com/r/#{subreddit}
/#{feed}.json"

parsed_response = JSON.parsed(response)

stories = parsed_response["data"]["children"]

stories.each_with_index do 