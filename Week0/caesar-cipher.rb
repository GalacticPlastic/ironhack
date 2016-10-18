#Third iteration
def solve_cipher(letters, encryption)
	characters = letters.chars.map do |c|
		c.ord
	end
	shift = characters.map do |c|
		c + encryption
	end
	array = []
	shift.each do |c|
		if c - encryption == 32
			array.push(32)
		elsif !(65..90).include?(c) && !(97..122).include?(c)
			array.push(c + 26)
		else
			array.push(c)
		end
	end
	array.map do |c|
		c.chr
	end
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3).join