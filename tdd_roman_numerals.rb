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

	def test_10_is_X
		assert_equal("X", 10.romanizer())
	end

	def test_11_thru_39
		assert_equal("XI", 11.romanizer())
		assert_equal("XII", 12.romanizer())
		assert_equal("XIII", 13.romanizer())
		assert_equal("XIV", 14.romanizer())
		assert_equal("XIX", 19.romanizer())
		assert_equal("XX", 20.romanizer())
		assert_equal("XXIII", 23.romanizer())
		assert_equal("XXIV", 24.romanizer())
		assert_equal("XXV", 25.romanizer())
		assert_equal("XXIX", 29.romanizer())
		assert_equal("XXX", 30.romanizer())
		assert_equal("XXXIII", 33.romanizer())
		assert_equal("XXXIV", 34.romanizer())
		assert_equal("XXXV", 35.romanizer())
		assert_equal("XXXIX", 39.romanizer())
	end

	def test_40_returns_XL
		assert_equal("XL", 40.romanizer())
		assert_equal("XLIV", 44.romanizer())
		assert_equal("XLIX", 49.romanizer())
	end

	def test_50_returns_L
		assert_equal("L", 50.romanizer())
		assert_equal("LIV", 54.romanizer())
		assert_equal("LIX", 59.romanizer())
	end

	def test_90_returns_XC
		assert_equal("XC", 90.romanizer())
		assert_equal("XCIV", 94.romanizer())
		assert_equal("XCIX", 99.romanizer())
	end

	def test_100_returns_C
		assert_equal("C", 100.romanizer())
		assert_equal("CIV", 104.romanizer())
		assert_equal("CIX", 109.romanizer())
		assert_equal("CXXX", 130.romanizer())
	end

	def test_400_returns_CD
		assert_equal("CD", 400.romanizer())
		assert_equal("CDIV", 404.romanizer())
		assert_equal("CDL", 450.romanizer())
	end

	def test_500_returns_D
		assert_equal("D", 500.romanizer())
		assert_equal("DL", 550.romanizer())
		assert_equal("DCCCIX", 809.romanizer())
	end

	def test_900_returns_CM
		assert_equal("CM", 900.romanizer())
		assert_equal("CML", 950.romanizer())
		assert_equal("CMXL", 940.romanizer())
	end

	def test_1000_returns_M
		assert_equal("M", 1000.romanizer())
	end
end


