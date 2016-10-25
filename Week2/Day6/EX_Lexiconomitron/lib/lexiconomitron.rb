class Lexiconomitron
	def eat_t(string)
		string.gsub("t","")
		# Nizar Solution:
		# string.tr("tT", "")
	end
	def shazam(array)
		new_array = []
		array.each do |word|
			# new_array.push(word.reverse.gsub("t",""))
			new_array.push(eat_t(word.reverse.downcase))
		end
		new_array
		# What we forgot:
		[new_array.first, new_array.last]
	end
	# # ----- Nizar Solution to Shazam ----- # #
	# def shazam(words_array)
	# 	reversed_words = words_array.map do |the_word|
	# 		eat_t(the_word.reverse)
	# 	end
	# 	[reversed_words.first, reversed_words.last]
	# end
	def oompa_loompa(array)
		array.reject do |word|
			word.length > 3
		end
	end
	# # ----- Nizar Solution to Oompa Loompa ----- # #
	# def oompa_loompa(words_array)
	# 	short_words = words_array.select do |the_word|
	# 		the_word.length <= 3
	# 	end
	# 	short_words_no_t = short_words.map do |the_word|
	# 		eat_t(the_word)
	# 	end
	# 	short_words_no_t
	# end
end