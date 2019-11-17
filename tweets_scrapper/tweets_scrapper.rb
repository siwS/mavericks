require 'httparty'
require 'nokogiri'

file = "hostile_sexist.tsv"
tweet_ids = []

File.open(file, "r") do |f|
  f.each_line do |line|
    tweet_ids << line
  end
end

output_file = File.open("output_hostile_100", "w")

tweets = []


tweet_ids.first(100).each do |tweet|
	url = "https://twitter.com/_/status/"+tweet.strip
	puts url
	response = HTTParty.get(url)
	parsed_response = response.parsed_response
	parsed_data = Nokogiri::HTML.parse(parsed_response)
	title = parsed_data.title
	tweets << title unless title.include?("Account Suspended")
end

output_file.write(tweets)
output_file.close
