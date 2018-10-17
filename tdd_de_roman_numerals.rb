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
end