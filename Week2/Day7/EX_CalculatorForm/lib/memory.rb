class Memory
	def save_submission
		IO.write("form_data.txt")
	end
	def load_file
		if File.exist?("form_data.txt")
			number

	end
end