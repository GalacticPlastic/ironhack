class SalariedEmployee < Employee
	attr_accessor(:salary)
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end
	def calculate_salary
		gross_weekly_pay = @salary / 52.0
		net_weekly_pay = gross_weekly_pay * 0.82
		#returns the net weekly pay
	end
end