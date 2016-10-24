require_relative("../lib/fizz_buzzer.rb")
RSpec.describe FizzBuzzer do
	describe "#replace_number" do
		# before :each do
		# 	@fzbz = FizzBuzzer.new
		# end
		let :fzbz do
			FizzBuzzer.new
		end
		it "Converts integers to strings" do
			# fzbz = FizzBuzzer.new
			expect(fzbz.replace_number(7)).to eq("7")
			expect(fzbz.replace_number(11)).to eq("11")
		end
		it "Replaces integer multiples of 3 with Fizz" do
			# fzbz = FizzBuzzer.new
			expect(fzbz.replace_number(9)).to eq("Fizz")
			expect(fzbz.replace_number(12)).to eq("Fizz")
		end
		it "Replaces integer multiples of 5 with Buzz" do
			# fzbz = FizzBuzzer.new
			expect(fzbz.replace_number(10)).to eq("Buzz")
			expect(fzbz.replace_number(25)).to eq("Buzz")
		end
		it "Replaces integer multiples of 3 and 5 with FizzBuzz" do
			# fzbz = FizzBuzzer.new
			expect(fzbz.replace_number(15)).to eq("FizzBuzz")
			expect(fzbz.replace_number(30)).to eq("FizzBuzz")
		end
	end
end