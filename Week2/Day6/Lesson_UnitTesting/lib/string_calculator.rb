class StringCalculator
	def add(number_string = "0")				# => Ruby "Default Parameter" ex:	variable_name = "0"
		input = number_string.split(/[,$]/)
		sum = 0
		input.each do |string_element|
			sum = sum + string_element.to_i		
		end
		sum
	end
end