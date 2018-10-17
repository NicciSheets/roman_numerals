class String

	def deromanizer()
		arabic = {
			"IV" => 4,
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