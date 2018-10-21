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
	
	def test_assert_C_returns_100
		assert_equal(100, "C".deromanizer())
		assert_equal(104, "CIV".deromanizer())
		assert_equal(109, "CIX".deromanizer())
		assert_equal(130, "CXXX".deromanizer())
	end

	def test_CD_returns_400
		assert_equal(400, "CD".deromanizer())
		assert_equal(404, "CDIV".deromanizer())
		assert_equal(450, "CDL".deromanizer())
	end

	def test_D_returns_500
		assert_equal(500, "D".deromanizer())
		assert_equal(550, "DL".deromanizer())
		assert_equal(809, "DCCCIX".deromanizer())
	end

	def test_CM_returns_900
		assert_equal(900, "CM".deromanizer())
		assert_equal(950, "CML".deromanizer())
		assert_equal(940, "CMXL".deromanizer())
	end
end