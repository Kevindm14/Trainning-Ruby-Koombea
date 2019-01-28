require 'minitest/autorun'
require_relative 'sum_prime.rb'

class TestSum_prime < Minitest::Test
  def test_sum_primos
    assert_equal 142913828922, @prim.sum_primos
  end
end
