class CalculatorController < ApplicationController
	def add_form
		render 'add_form'
	end
	def process_addition
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i
		@result = @number1 + @number2
		render "results"
	end
end