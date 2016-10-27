require "sinatra"
require_relative("lib/calculator.rb")
menu = {
	"Home" => "",
	"Add" => "add",
	"Subtract" => "subtract",
	"Multiply" => "multiply",
	"Divide" => "divide"
}
get "/" do
  @menu = menu
  @memory_number = my_memory.load_file
  erb(:index)
end
get "/add" do
  @menu = menu
  erb(:add)
end
get "/subtract" do
  @menu = menu
  erb(:subtract)
end
get "/multiply" do
  @menu = menu
  erb(:multiply)
end
get "/divide" do
  @menu = menu
  erb(:divide)
end
get "/result" do
  @menu = menu
  erb(:result)
end
post "/calculate_add" do
	@menu = menu
	@value = "sum"
	@first_number = params[:first_number].to_f
	@second_number = params[:second_number].to_f
	new_calculation = Calculator.new
	@result = new_calculation.add(@first_number, @second_number)
	# redirect to("/result")
	erb(:result)
end
post "/calculate_subtract" do
	@menu = menu
	@value = "difference"
	@first_number = params[:first_number].to_f
	@second_number = params[:second_number].to_f
	new_calculation = Calculator.new
	@result = new_calculation.subtract(@first_number, @second_number)
	# redirect to("/result")
	erb(:result)
end
post "/calculate_multiply" do
	@menu = menu
	@value = "product"
	@first_number = params[:first_number].to_f
	@second_number = params[:second_number].to_f
	new_calculation = Calculator.new
	@result = new_calculation.multiply(@first_number, @second_number)
	# redirect to("/result")
	erb(:result)
end
post "/calculate_divide" do
	@menu = menu
	@value = "quotient"
	@first_number = params[:first_number].to_f
	@second_number = params[:second_number].to_f
	new_calculation = Calculator.new
	@result = new_calculation.divide(@first_number, @second_number)
	# redirect to("/result")
	erb(:result)
end
post "/calculate_all" do
	@menu = menu
	@first_number = params[:first_number].to_f
	@second_number = params[:second_number].to_f
	new_calculation = Calculator.new
	if params[:operator] == "add"
		@value = "sum"
		@result = new_calculation.add(@first_number, @second_number)
	elsif params[:operator] == "subtract"
		@value = "difference"
		@result = new_calculation.subtract(@first_number, @second_number)
	elsif params[:operator] == "multiply"
		@value = "product"
		@result = new_calculation.multiply(@first_number, @second_number)
	elsif params[:operator] == "divide"
		@value = "quotient"
		@result = new_calculation.divide(@first_number, @second_number)
	end
	# redirect to("/result")
	erb(:result)
end
get "/save_form" do
	@menu = menu
	my_memory = Memory.new
	my_memory.save_submission(params[:result])
	redirect to("/")
end