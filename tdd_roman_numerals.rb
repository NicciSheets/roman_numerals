require "minitest/autorun"
require_relative "roman_numerals.rb"

class TddRomanNumerals < Minitest::Test

	def test_assert_1_equals_1
		assert_equal(1, 1)
	end

	def test_that_result_is_string
		assert_equal(String, 1.romanizer().class)
		assert_equal(String, 2.romanizer().class)
		assert_equal(String, 11.romanizer().class)
	end

	def test_1_equals_I
		assert_equal("I", 1.romanizer())
		assert_equal("II", 2.romanizer())
		assert_equal("III", 3.romanizer())
	end

	def test_4_equals_IV
		assert_equal("IV", 4.romanizer())
	end

	def test_5_equals_V
		assert_equal("V", 5.romanizer())
	end

	def test_6_thru_8_equals_VI_VII_VIII
		assert_equal("VI", 6.romanizer())
		assert_equal("VII", 7.romanizer())
		assert_equal("VIII", 8.romanizer())
	end

	def test_9_is_IX
		assert_equal("IX", 9.romanizer())
	end
end
