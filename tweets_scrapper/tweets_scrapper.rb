require 'httparty'
require 'nokogiri'

file = "benevolent_sexist.tsv"
benevolent_sexist = []

File.open(file, "r") do |f|
  f.each_line do |line|
    benevolent_sexist << line
  end
end

output_file = File.open("output", "w")

tweets = []


benevolent_sexist.each do |tweet|
	url = "https://twitter.com/_/status/"+tweet.strip
	puts url
	response = HTTParty.get(url)
	parsed_response = response.parsed_response
	parsed_data = Nokogiri::HTML.parse(parsed_response)
	title = parsed_data.title
	tweets << title
 	
end

file.write(tweets)
file.close
