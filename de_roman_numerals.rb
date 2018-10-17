class String

	def deromanizer()
		arabic = {
			"XL" => 40,
			"L" => 50,
			"IX" => 9,
			"X" => 10,
			"IV" => 4,
			"V" => 5,
			"I" => 1
		}
		result = 0
		str = self
		arabic.each do |key, value|
			result += value * (str.scan(/#{key}/).count)
			temp = [key]
            temp.each {|v| str.sub!(v, '')}
		end
		result
	end
end