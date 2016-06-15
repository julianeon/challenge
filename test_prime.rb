require 'test/unit'
require_relative 'challenge.rb'

class TestScript < Test::Unit::TestCase
  def test_prime_known()
    assert_equal(true, prime(13))
    assert_equal(true, prime(31))
    assert_equal(true, prime(1031))
    assert_equal(true, prime(1097))
    assert_equal(true, prime(1987))
  end

  def test_prime_false()
    even_numbers = (4..1000).step(2)
    even_numbers.each do |x|
      assert_equal(false,prime(x)) 
    end
  end

  def test_prime_returns()
    result_array=get_this_many_primes(50)
    assert_equal(50,result_array.length)
  end
end
