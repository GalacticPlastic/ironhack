class Lexiconomitron
	def eat_t(string)
		string.gsub("t","")
	end
	def shazam(array)
		new_array = []
		array.each do |word|
			# new_array.push(word.reverse.gsub("t",""))
			new_array.push(eat_t(word.reverse.downcase))
		end
		new_array
	end
	def oompa_loompa(array)
		array.reject do |word|
			word.length > 3
		end
	end
end