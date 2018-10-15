require "minitest/autorun"
require_relative "roman_numerals.rb"

class TddRomanNumerals < Minitest::Test

	def test_assert_1_equals_1
		assert_equal(1, 1)
	end

	def test_that_result_is_string
		assert_equal(String, 1.romanizer().class)
	end
end