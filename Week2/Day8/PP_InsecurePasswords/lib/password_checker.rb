class PasswordChecker
	def check_password(email, password)
		user_domain = email.split(/[@.]/)
		uppercase = password =~ (/[[:upper:]]/)
		lowercase = password =~ (/[[:lower:]]/)
		numbers = password =~ (/[[:digit:]]/)
		symbol = password =~ (/[[:punct:]]/)
		if password.length < 8
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
# => Longer than 7 characters.
# => Contain at least 1 letter, 1 number and 1 symbol (e.g. "#", "%"; etc.).
# => Contain at least 1 uppercase and 1 lowercase letter.
# => DOES NOT contain either the name or domain of the email.
# => =~ and .match similar, with subtle differences.
# => Removed /[[:alpha]]/ because it was redundant, as (/[[:upper:]]/) and (/[[:lower:]]/) covers all letters. (Thanks NB)
# => /[a-zA-Z]/ same as /[[:alpha]]/ ??