class PasswordChecker
	def check_password(email, password)
		user_domain = email.split(/[@.]/)
		password_array = password.chars  				# => .to_a
		uppercase = password =~ (/[[:upper:]]/)
		lowercase = password =~ (/[[:lower:]]/)
		numbers = password =~ (/[[:digit:]]/)
		symbol = password =~ (/[[:punct:]]/)			# => (/^[[::]]$/)
		if password.length < 7
			false
		elsif password.include?(user_domain[0])
			false
		elsif password.include?(user_domain[1])
			false
		elsif uppercase == nil
			false
		elsif lowercase == nil
			false
		elsif numbers == nil
			false
		elsif symbol == nil
			false
		else
			true
		end
	end
end
# => Longer than 7 characters
# => Contain at least 1 letter, 1 number and 1 symbol (e.g. "#", "%"; etc.)
# => Contain at least 1 uppercase and 1 lowercase letter
# => DOES NOT contain either the name or domain of the email.