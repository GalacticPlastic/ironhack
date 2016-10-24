require_relative("lib/string_calculator.rb")

calculator = StringCalculator.new # => Doesn't require arugments because there is no parantheses after .New
puts ""
puts "7,7"
p calculator.add("7,7") == 14
puts ""
puts "8,4"
p calculator.add("8,4") == 12
puts ""
puts "6"
p calculator.add("6") == 6
puts ""
puts "3"
p calculator.add("3") == 3
puts ""
puts "empty"
p calculator.add("") == 0
puts ""
puts "BONUS:"
puts "7$7"
p calculator.add("7$7") == 14
puts ""
puts "8$4"
p calculator.add("8$4") == 12
puts ""
puts "7,7,1,2"
p calculator.add("7,7,1,2") == 17
puts ""
puts "7$7$1$2"
p calculator.add("7$7$1$2") == 17
puts ""
puts "7$7,1,2"
p calculator.add("7$7,1,2") == 17
puts ""
puts "BONUS:"
puts "No arguments provided"
p calculator.add == 0

# => #add Short for "add" instance method of the StringCalculator class
# => "It" string is a description of what is being test
# => What is RSpec .to method?
# => Expects are called "assertions".
# => RSpec.describe is a "test suite"