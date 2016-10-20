require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")
puts ""
puts "Hello, user. Please identify yourself."
puts ""
new_login = Authenticator.new
if new_login.verify_login == true
	puts ""
	random_words = WordCounter.new
	random_words.total_words
	puts ""
end


####################### NOTES ########################

#----- The "S" of the 5 "S.O.L.I.D." Principles -----#
# Classes need to do the smallest possible USEFUL thing.
# Classes, don't multi-task. They do one thing, and they do it well.

# Good programming structure is always preparing for the future.

# require 'digest/sha1'
# # => Simple Login
# class User
# 	def check_password(password)
# 		Digest::SHA1.hexidigest password == @password
# 	end
# end
# # => Login w/Facebook
# class User
# 	def login_facebook(username, password)
# 		http_response = HTTP::Post('https://facebook.cim/api/auth')
# 	end
# 	def check_password(password)
# 		Digest::SHA1.hexidigest password == @password
# 	end
# end
# => Login w/Twitter

# Code Smell: Feature Envy
# If one class has to excessively use an instance variable from another class