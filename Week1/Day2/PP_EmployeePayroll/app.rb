require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/multipayment_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
mary = SalariedEmployee.new('Mary', 'zosorocksyoursocks@gmail.com', 60000)
jose = HourlyEmployee.new('Jose', 'thisisanexample@gmail.com', 40, 45)

puts "#------------ TESTING ---------------#"
puts "Mary's net weekly pay is: $#{mary.calculate_salary}."
puts ""
puts "Jose's net weekly pay is: $#{jose.calculate_salary}."
puts ""
puts "Ted's weird ass weekly pay is: $#{ted.calculate_salary}"
puts ""
puts "Nizar's net weekly pay is: $#{nizar.calculate_salary}."
puts ""
puts "Josh's net weekly pay is: $#{josh.calculate_salary}."
puts ""

employees = [josh, nizar, ted, mary, jose]
payroll = Payroll.new(employees)
puts ""
puts "#------------- Pays Employees ----------------#"
payroll.pay_employees(employees)
puts "#------------- Notify Employee ----------------#"
payroll.notify_employee(josh)