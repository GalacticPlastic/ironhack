require_relative("../lib/string_calculator.rb")
RSpec.describe StringCalculator do
	describe "#add" do
		it "Adds together integers converted from string array elements" do
			calc = StringCalculator.new
			expect(calc.add("7,7")).to eq(14)
			expect(calc.add("8,4")).to eq(12)
		end
		it "Returns an integer value for a string element" do
			calc = StringCalculator.new
			expect(calc.add("6")).to eq(6)
			expect(calc.add("3")).to eq(3)
		end
		it "Adds together integers converted from string array elements using multiple delimiters" do
			calc = StringCalculator.new
			expect(calc.add("7$7,1,2")).to eq(17)
			expect(calc.add("7$7$1$2")).to eq(17)
			expect(calc.add("7$7,1,2")).to eq(17)
		end
		it "Returns 0 for an empty string" do
			calc = StringCalculator.new
			expect(calc.add("")).to eq(0)
		end
		it "Returns 0 when no arguments are given" do
			calc = StringCalculator.new
			expect(calc.add).to eq(0)
		end
	end
end