require 'minitest/autorun'
require_relative 'addition.rb'

class Addition_brony_test < Minitest::Test
	def test_true
		assert_equal(true, true)
	end

	def test_1_plus_1
		add = addition(1,1)
		assert_equal(2,add)
	end

	def test_1_plus_2
		add = addition(1,2)
		assert_equal(3,add)
	end

	def test_5_plus_64
		add = addition(5,64)
		assert_equal(69, add)
	end

end