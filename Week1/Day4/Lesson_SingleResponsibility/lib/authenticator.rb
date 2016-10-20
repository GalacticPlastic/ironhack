class Authenticator
	def verify_login
		puts "Username:"
		username_input = gets.chomp
		puts ""
		puts "Password:"
		password_input = gets.chomp
		if username_input == "GalacticPlastic" && password_input == "zosorocks"
			puts ""
			puts "Access Granted."
			true
		else
			puts ""
			puts "Access Denied!"
			false
		end
	end
end