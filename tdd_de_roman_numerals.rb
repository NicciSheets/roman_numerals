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

	def test_assert_V_returns_5
		assert_equal(5, "V".deromanizer())
	end

	def test_assert_IX_returns_9
		assert_equal(9, "IX".deromanizer())
	end

	def test_assert_X_returns_10
		assert_equal(10, "X".deromanizer())
	end

	def test_assert_XL_returns_40
		assert_equal(40, "XL".deromanizer())
	end

	def test_assert_L_returns_50
		assert_equal(50, "L".deromanizer())
	end

	def test_assert_XC_returns_90
		assert_equal(90, "XC".deromanizer())
		assert_equal(94, "XCIV".deromanizer())
		assert_equal(99, "XCIX".deromanizer())
	end
	
end