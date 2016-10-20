class WordCounter
	def total_words
		puts "Please enter some text to count the words:"
		puts "------------------------------------------"
		text_input = gets.chomp
		puts "Your text has #{text_input.split.length} words."
		# => puts "Your text has #{text_input.to_s.length} words."
		# Returned total characters, not words.
	end
end