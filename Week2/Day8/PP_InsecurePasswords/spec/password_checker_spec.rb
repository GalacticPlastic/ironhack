require_relative("../lib/password_checker.rb")
RSpec.describe PasswordChecker do 
	describe "#check_password"
		it "returns true for valid passwords" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB76*!cz#3")).to eq (true)
		end
		it "returns false for passwords shorter than 8 characters" do
			# => Ex: "ab7*", "l0V&e"
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords without letters" do
			# => Ex: "123456789", "0!0.1*0@999"
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords without numbers" do
			# => Ex: "z*s*R*cks!", "uPB&$KZl"
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords without symbols" do
			# => Ex: ""
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords without uppercase letters" do
			# => Ex: ""
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords without lowercase letters" do
			# => Ex: ""
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		# => BONUS!
		it "returns false for passwords with the email username" do
			# => Ex: ""
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
		it "returns false for passwords with the email domain" do
			# => Ex: ""
			validate = PasswordChecker.new
			expect(validate.check_password("", "")).to eq (false)
		end
	end
end