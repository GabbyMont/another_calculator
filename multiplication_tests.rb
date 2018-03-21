require 'minitest/autorun'
require_relative 'multiplication.rb'

class Multiplication_test < Minitest::Test
	def test_true
		assert_equal(true, true)
	end

	def test_2_times_2
		multiply = multiplication(2,2)
		assert_equal(4,multiply)
	end

	def test_4_times_9
		multiply = multiplication(4,9)
		assert_equal(36,multiply)
	end

	def test_2_times_neg2
		multiply = multiplication(2,-2)
		assert_equal(-4,multiply)
	end

	def test_4_times_neg9
		multiply = multiplication(4,-9)
		assert_equal(-36,multiply)
	end
end
