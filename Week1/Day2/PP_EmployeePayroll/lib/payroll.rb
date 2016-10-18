class Payroll
	attr_accessor(:employees)
  def initialize(employees)
        @employees = employees
  end
  def notify_employee(employee)
    	puts "Dear #{employee.name},"
      puts "Thank you for your hard work!"
      puts "Your paycheck for this week has been direct deposited to your account in the amount of $#{employee.calculate_salary}."
      puts "Please contact your HR if you have any questions or concerns."
      #email them
	end
  def pay_employees(employees)
      total_weekly_payroll = employees.reduce(0.0) do |sum, an_employee| 
        puts "#{an_employee.name} should be paid $#{an_employee.calculate_salary} for this week."
        puts ""
        sum + an_employee.calculate_salary
      end
      puts "The total amount spent on payroll this week for the entire staff amounts to $#{total_weekly_payroll}."
	end
end