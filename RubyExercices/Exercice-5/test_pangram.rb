require 'minitest/autorun'
require_relative 'pangram.rb'

class TestPangram < Minitest::Test 
  def setup
    @pangram = Pangram.new
  end
  
  def test_pangram_l
    assert_equal true, @pangram.pangram_l("The quick brown fox jumps over the lazy dog")
  end
end