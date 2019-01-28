require 'minitest/autorun'
require_relative 'One.rb'

class TestTwoFer < Minitest::Test
  def setup
    @twofer = TwoFer.new 
    @twofer2 = TwoFer.new
  end
  def test_twofer
    assert_equal "Alice", @twofer.twofer 
  end

  def test_fail
    assert_equal "Kevin", @twofer2.twofer
  end
end
