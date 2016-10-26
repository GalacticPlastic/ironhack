require_relative("../lib/password_checker.rb")
RSpec.describe PasswordChecker do 
	describe "#check_password" do
		it "returns true for valid passwords" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB76*!cz#3")).to eq (true)
		end
		it "returns false for passwords shorter than 8 characters" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB7*")).to eq (false)
			expect(validate.check_password("nizar@example.com", "uP8&$")).to eq (false)
		end
		it "returns false for passwords without letters" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "5876*%62#3")).to eq (false)
			expect(validate.check_password("nizar@example.com", "388&$920")).to eq (false)
		end
		it "returns false for passwords without numbers" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aBphg*%cz#f")).to eq (false)
			expect(validate.check_password("nizar@example.com", "uPB&$KZl")).to eq (false)
		end
		it "returns false for passwords without symbols" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB76vkcz33")).to eq (false)
			expect(validate.check_password("nizar@example.com", "uP869O20")).to eq (false)
		end
		it "returns false for passwords without uppercase letters" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "ab76*%cz#3")).to eq (false)
			expect(validate.check_password("nizar@example.com", "up8&$o20")).to eq (false)
		end
		it "returns false for passwords without lowercase letters" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "AB76*%CZ#3")).to eq (false)
			expect(validate.check_password("nizar@example.com", "UP8&$O20")).to eq (false)
		end
		# => BONUS!
		it "returns false for passwords with the email username" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB7nizar6*%cz#3")).to eq (false)
			expect(validate.check_password("nizar@example.com", "unizarP8&$O20")).to eq (false)
		end
		it "returns false for passwords with the email domain" do
			validate = PasswordChecker.new
			expect(validate.check_password("nizar@example.com", "aB76*example%cz#3")).to eq (false)
			expect(validate.check_password("nizar@example.com", "uP8&example$O20")).to eq (false)
		end
	end
end