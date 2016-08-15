require 'json'
require 'net/http'

class AirportApi

	def initialize
		@uri = URI("http://services.faa.gov/airport/status/#{ARGV[0]}?format=application/json")
	end

	def grab_data
		Net::HTTP.get(@uri)
	end

	def parse_data
   JSON.parse(grab_data)
	end

	def get_aiport
		parse_data["IATA"]
	end

end

puts AirportApi.new.get_aiport

# uri = URI('http://services.faa.gov/airport/status/PDX?format=application/json')

# puts Net::HTTP.get(uri)

# class Foo
# 	def self.speak
# 		"Hi"
# 	end
# end

