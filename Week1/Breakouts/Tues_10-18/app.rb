# Presidential elections loop
# Can't use for .. in because numbers are not perfectly sequential
# ex:
# for year in 1792..2016
# or
#1792.upto(2016) do |year|
	
# end

year = 1792		# First Inauguration
while year <= 2016
	puts year
	year += 4
end


dogs = ["chihuahua", "german shepherd", "labrador", "border collie", "rhodesian", "shiba inu"]

for index in 0..(dogs.length - 1)
	puts "I would like to purchase a #{dogs[index]}."
end

dogs.each do |a_dog|
	puts "I would like to purchase a #{a_dog}."
end