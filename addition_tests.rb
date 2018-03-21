require 'minitest/autorun'
require_relative 'addition.rb'

class Addition_brony_test < Minitest::Test
	def test_true
		assert_equal(true, true)
	end

	def test_1_plus_1
		add = addition()
		assert_equal(2,add)
	end

end