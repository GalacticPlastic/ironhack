class Programmer #< CaffeineConsumer
	include CaffeineConsumer
	include Payable
	include Vacationable
	include Insurable
	include Beerable
	def program
		do_wonderful_things_with_computers
		consume_caffeine
		receive_salary
		vacation_days
		insurance_plan
		drinks_beer
	end
	def do_wonderful_things_with_computers
		puts "Programmers 'Do Wonderful Things with Computers'"
		puts "----------------------------------------------------------------------------------------------"
		puts "Designers do wonderful things with computers too, you know. Sheesh."
		puts ""
		puts "Okay, yes. Programmers are crazy awesome magicians that make the world go round."
		puts "But what's with all the haterade, yo?"
	end
end