class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
puts ""
puts "#------------------------ EACH ----------------------#"
def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end
array_printer(array_of_languages)
puts ""
puts "#------------------------ MAP ----------------------#"
# aged_languages = []

aged_languages = array_of_languages.map do |language|
	new_age = language.age + 1
	ProgrammingLanguage.new(language.name, new_age, language.type)
	#--- OR:
	# language.age += 1
	# language 				Changes the original array
	#--- WE DID:
	# ProgrammingLanguage.new(language.name, language.age + 1, language.type)
end
puts ""
puts "The programming languages aged one year are:"
# puts "Language: #{name} | Age: #{aged_languages} | Type System: #{type}"
array_printer(aged_languages)

puts ""
puts "#------------------------ SORT ---------------------#"
#--- WE DID:
# sorted_languages = []
# sorted_languages = array_of_languages.sort_by do
# 	|language| language.age
# end
sorted_languages = aged_languages.sort do |language_a, language_b|
	language_b.age <=> language_a.age
end
array_printer(sorted_languages)

puts ""
puts "#------------------- REVERSE SORT -----------------#"
#--- WE DID:
# array_printer(sorted_languages.reverse)
sorted_languages = aged_languages.sort do |language_a, language_b|
	language_a.age <=> language_b.age
end
array_printer(sorted_languages)

puts ""
puts "#---------------------- DELETE --------------------#"
sorted_languages.delete_if do |language|	#CHANGES THE ORIGINAL ARRAY
	language.name == "Java"
end
array_printer(sorted_languages)

puts ""
puts "#--------------------- SHUFFLE -------------------#"
#--- WE DID:
# array_printer(sorted_languages.shuffle)

shuffled_languages = sorted_languages.shuffle
array_printer(shuffled_languages)

puts ""
puts "*!*!*!*! Shuffled Sorted Languages *!*!*!*!"
array_of_languages.map! do
	|language| ProgrammingLanguage.new(language.name += "!!!", language.age, language.type)
end
array_printer(array_of_languages)

# array_of_languages.map! { | language | language.name += "!!!"}
# Will not permanently alter the array without first declaring a new class instance.