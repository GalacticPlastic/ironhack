class CountryCounter
	def nationality(nation, array)
		counter = 0
		array.each do |total_students|
			if total_students == nation
				counter += 1
			end
		end
		counter 		# Return Result AFTER Loop
	end
end