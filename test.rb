require 'httparty'

response = HTTParty.get("http://letsrevolutionizetesting.com/challenge.json")

while (response.has_key?("follow")) do
  url = response["follow"].gsub("challenge", "challenge.json")
  response = HTTParty.get(url)
end

puts response