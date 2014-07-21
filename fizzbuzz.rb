require 'minitest/autorun'

def fizzbuzz(max)
  result = []
  1.upto(max) do |limit|
    if limit % 3 == 0 && limit % 5 == 0
      result.push 'fizz-buzz'
    elsif limit % 3 == 0
      result.push 'fizz'
    elsif limit % 5 == 0
      result.push 'buzz'
    else
      result.push limit
    end
  end

  result
end

class FizzBuzzTest < MiniTest::Unit::TestCase

  def test_0_case
    assert_equal([], fizzbuzz(0))
  end

  def test_1_case
    assert_equal [1], fizzbuzz(1)
  end

  def test_3
    assert_equal [1, 2, 'fizz'], fizzbuzz(3)
  end

  def test_4
    assert_equal [1, 2, 'fizz', 4], fizzbuzz(4)
  end

  def test_5
    assert_equal [1, 2, 'fizz', 4, 'buzz'], fizzbuzz(5)
  end

  def test_6
    assert_equal [1, 2, 'fizz', 4, 'buzz', 'fizz'], fizzbuzz(6)
  end

  def test_15
    assert_equal [1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizz-buzz'], fizzbuzz(15)
  end
end
