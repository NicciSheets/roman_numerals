class String

	def deromanizer()
		arabic = {
			"I" => 1
		}
		result = 0
		arabic.each do |key, value|
			result += value
		end
		result
	end
end