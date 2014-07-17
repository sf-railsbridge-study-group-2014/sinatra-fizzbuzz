require 'minitest/autorun'

def fizzbuzz(limit)
	result = []
	while limit >= 0
		if limit % 3 == 0
			result.push 'fizz'
		else
			result.push limit
		end

		limit = limit - 1
	end
	result.reverse
end

class FizzBuzzTest < MiniTest::Unit::TestCase

	def test_0_case
		assert_equal([0], fizzbuzz(0))
	end

	def test_1_case
		assert_equal [0, 1], fizzbuzz(1)
	end

	def test_3
		assert_equal [0, 1, 2, 'fizz'], fizzbuzz(3)
	end

end