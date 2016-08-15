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

  def test_it_will_get_state
  	assert_equal "California", @airport.get_state
  end

  def test_it_will_get_airport_name
  	assert_equal "Los Angeles International", @airport.get_airport_name
  end

end

