require '../lib/airport_api'
require 'minitest/rg'
require 'minitest/autorun'

class TestAirportApi < Minitest::Test
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

  def test_it_will_get_weather
    assert_instance_of Float, @airport.get_weather["visibility"]
    assert_instance_of String, @airport.get_weather["weather"]
    assert_match /F | C/, @airport.get_weather["temp"]
    assert_match /mph/, @airport.get_weather["wind"]
  end

  def test_it_will_get_status
  	assert_equal "No known delays for this airport.", @airport.get_status
  end

end

