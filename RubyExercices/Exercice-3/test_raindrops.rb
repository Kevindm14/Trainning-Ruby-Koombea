require 'minitest/autorun'
require_relative 'Raindrops.rb'

class TestRaindrops < MiniTest::Test 
  def setup 
    @raindrops = Raindrops.new 
  end
  def test_factor
    assert_equal "Pling", @raindrops.factor
    assert_equal "Plang", @raindrops.factor
    assert_equal "Plong", @raindrops.factor
  end

  end