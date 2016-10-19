class HourlyEmployee < Employee
	attr_accessor(:hourly_rate, :hours_worked)
	def initialize(name, email, hourly_rate, hours_worked)
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		gross_weekly_pay = @hourly_rate * @hours_worked
		net_weekly_pay = gross_weekly_pay * 0.82
		# must also deduct 15% tax
		#returns the hours worked * hourly rate
	end
end