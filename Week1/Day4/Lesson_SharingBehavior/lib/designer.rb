class Designer #< CaffeineConsumer
	include CaffeineConsumer
	include Payable
	include Vacationable
	include Insurable
	def design
		create_wow_factor
		optimize_for_conversion
		consume_caffeine
		receive_salary
		vacation_days
		insurance_plan
	end
	def create_wow_factor
		puts "Designers 'Select Typography' and 'Select Colors'??!"
		puts "----------------------------------------------------------------------------------------------"
		puts "Bias, much?"
		puts "Design goes beyond simply 'selecting typography' and 'selecting colors'."
		puts ""
	end
	def optimize_for_conversion
		puts "'Wonderful Computer Things' aren't all that wonderful if the users don't know how to use them."
		puts ""
		puts "Enter the WOW Factor! (Designers)"
		puts "Good design shows users just how  * good *  the programming is."
	end
end