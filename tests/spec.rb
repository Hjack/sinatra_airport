require '../lib/airport_api'
require 'minitest/rg'
require 'minitest/autorun'

class TestAirportApi < MiniTest::Unit::TestCase

	def setup
		@airport = AirportApi.new
	end

  def test_it_will_get_airport_code
  	assert_equal "LAX", @airport.get_airport_code
  end

end

