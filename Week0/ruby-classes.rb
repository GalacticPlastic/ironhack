class Car
  def honk					#Honk is instance method for Car class
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new
my_car.honk



# => .class can be invoked to see the class of an instance method