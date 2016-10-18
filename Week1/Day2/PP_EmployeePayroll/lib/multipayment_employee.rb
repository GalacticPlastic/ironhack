class MultiPaymentEmployee < Employee
	attr_accessor(:salary, :hourly_rate, :hours_worked)
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		annual_pay = @salary + ((@hours_worked - 40) * @hourly_rate)
		gross_weekly_pay = annual_pay / 52
		net_weekly_pay = gross_weekly_pay * 0.85

		#returns the base salary + (hourly_rate * hours_worked)
	end
end