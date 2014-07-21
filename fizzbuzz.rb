require 'minitest/autorun'

class Numeric
  def multiple_of?(num)
    0 == self % num
  end
end

def fizzbuzz(limit)
  (1..limit).inject([]) do |memo, count|
    if count.multiple_of?(3) && count.multiple_of?(5)
      memo.push 'fizz-buzz'
    elsif count.multiple_of?(3)
      memo.push 'fizz'
    elsif count.multiple_of?(5)
      memo.push 'buzz'
    else
      memo.push count
    end
  end
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
