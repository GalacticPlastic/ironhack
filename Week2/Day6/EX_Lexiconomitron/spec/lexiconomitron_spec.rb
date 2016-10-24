require_relative("../lib/lexicon.rb")
RSpec.describe Lexiconomitron do 
	let :lexi do
		Lexiconomitron.new
	end
  	describe "#eat_t" do
  		it "removes every letter t from the input" do
	  		# @lexi = Lexiconomitron.new
	  		expect(lexi.eat_t("great scott!")).to eq("grea sco!")
	    end
	end
	describe "#shazam" do
		it "reverses letter of each array element" do
			# @lexi = Lexiconomitron.new
			expect(lexi.shazam(["This","is","a","boring","test"])).to eq(["sih","si","a","gnirob","se"])
		end
	end
	describe "#oompa_loompa" do
		it "returns only words with less than 3 characters" do
			# @lexi = Lexiconomitron.new
			expect(lexi.oompa_loompa(["if","you","wanna","be","my", "lover"])).to eq(["if","you","be","my"])
		end
	end
end