engines = ["Google", "Bing", "ask jeeeves"]
result = engines.map do |e|  # replace push
	if e == "Google"
		return "Ok"
	elsif e == "Bing"
		return "Bad!"
	else
		return "what is that"
  end
end #??