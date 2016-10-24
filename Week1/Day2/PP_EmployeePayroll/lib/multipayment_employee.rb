class MultiPaymentEmployee < Employee
	include SalariedPay
	include HourlyPay
	attr_accessor(:salary, :hourly_rate, :hours_worked)
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		gross_weekly_pay
		# => gross_weekly_pay calls:	@salary / 52.0 	# => $1,153.85 before tax
		overtime_pay = (@hours_worked - 40) * @hourly_rate	# => Overtime: 4,125

		# annual_pay = @salary + ((@hours_worked - 40) * @hourly_rate)	# => 64,125		
		# gross_weekly_pay = annual_pay / 52.0		# must add .0 to make integer float
		net_weekly_pay = gross_weekly_pay * 0.82
		# Must use .round(2) to round to two decimals

		#returns the base salary + (hourly_rate * hours_worked)
	end
end