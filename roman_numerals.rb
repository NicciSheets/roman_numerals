class Integer

	def romanizer()
		numerals = {
			"XC" => 90,
			"L" => 50,
			"XL" => 40,
			"X" => 10,
			"IX" => 9,
			"V" => 5,
			"IV" => 4,
			"I" => 1
		}
		x = self
		roman = ""
		numerals.each do |key, value|
			roman << key * (x/value)
			x %= value
		end
		roman
	end
end



