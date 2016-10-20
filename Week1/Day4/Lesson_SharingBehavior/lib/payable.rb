module Payable			# A Class is like an ID in CSS. a module is like a class?
	def receive_salary
		puts "Salary: Woohoo, $$$$!!!"
		puts ""
	end
end
module Vacationable
	def vacation_days
		puts "- You get 2 weeks paid if salaried."
	end
end
module Insurable
	def insurance_plan
		puts "- You qualify for the company insurance after 90 days."
	end
end
module Beerable
	def drinks_beer
		puts "- Beer is for social get-togethers. Caffeine is for coding."
		puts "  Get to work!"
	end
end