require 'json'
require 'net/http'

class AirportApi

	def initialize
		@uri = URI("http://services.faa.gov/airport/status/LAX?format=application/json")
	end

	def grab_data
		Net::HTTP.get(@uri)
	end

	def parse_data
   JSON.parse(grab_data)
	end

	def get_airport_code
		parse_data["IATA"]
	end

	def get_state
		parse_data["state"]
	end

	def get_airport_name
		parse_data["name"]
	end

	def get_weather
		parse_data["weather"]
	end

  def get_status
  	parse_data["status"]
  end

end


