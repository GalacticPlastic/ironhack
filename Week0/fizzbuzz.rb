(1..100).each do |number|

result = ""
result << "Fizz" if number % 3 == 0
result << "Buzz" if number % 5 == 0
result = number.to_s + "Bang" if number.to_s[0] == "1"
result = number if number % 3 != 0 && number % 5 != 0

puts result

	#if number.to_s[0] == "1"
		#puts number.to_s + "Bang"
	#elsif number % 3 == 0 && number % 5 == 0
		#puts "FizzBuzz"
	#elsif number % 3 == 0
		#puts "Fizz"
	#elsif number % 5 == 0
		#puts "Buzz"
	#else
		#puts number
	#end
end

#result should be iteration 4.
#shovel operator come into play like so:
#result = result + "Fizz" if number % 3 == 0