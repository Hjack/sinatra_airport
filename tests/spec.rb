require '../lib/airport_api'
require 'minitest/rg'
require 'minitest/autorun'

class TestFoo < MiniTest::Unit::TestCase
 

  def test_it_will_talk
  	assert_equal "Hi", Foo.speak
  end



end