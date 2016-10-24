class StringCalculator
	def add(number_string = "0")			# => *number_string
		input = number_string.split(/[,$]/)
		sum = 0
		input.each do |string_element|
			sum = sum + string_element.to_i		# .to_i method of strings
		end
		sum
	end
end

# ----- Notes: ----- #
# input = number_string.split(',')
# Must convert array elements into Integers!
# => .to_i  ??
# Reduce to calculate sum?

# ----- Nizar Solution: ----- #
# class StringCalculator
# 	def add(numbers_string)
# 		numbers_string[0].to_i
# 	end
# end