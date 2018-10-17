require "minitest/autorun"
require_relative "de_roman_numerals.rb"

class TddDeRomanNumerals < Minitest::Test

	def test_assert_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_returns_integer
		assert_equal(Integer, "I".deromanizer().class)
	end

	def test_assert_I_returns_1
		assert_equal(1, "I".deromanizer())
	end

	def test_assert_II_returns_2_and_III_returns_3
		assert_equal(2, "II".deromanizer())
		assert_equal(3, "III".deromanizer())
	end

	def test_assert_IV_returns_4
		assert_equal(4, "IV".deromanizer())
	end

	# def test_assert_V_returns_5
	# 	assert_equal(5, "V".deromanizer())
	# end
end