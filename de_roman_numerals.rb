class String

	def deromanizer()
		arabic = {
			"CD" => 400,
			"D" => 500,
			"XC" => 90,
			"C" => 100,
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
			# p "result is #{result}"
			temp = [key]
			# p "temp is #{temp}"
            temp.each {|v| str.sub!(v, '')}
		end
		result
	end
end