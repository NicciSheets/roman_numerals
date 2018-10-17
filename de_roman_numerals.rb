class String

	def deromanizer()
		arabic = {
			"I" => 1
		}
		result = 0
		str = self
		arabic.each do |key, value|
			result += value * (str.scan(/#{key}/).count)
		end
		result
	end
end