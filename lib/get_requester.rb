# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
   attr_accessor :get
    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(get)
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        # we use the JSON library to parse the API response into nicely formatted JSON
          response = JSON.parse(self.get_response_body)
          # binding.pry
          # response.collect do |response|
          #   response["agency"]  
          # end
    end 
end
