Rails.application.routes.draw do
	root "site#home"
	get "/text_inspections/new" => "text_inspections#new"

	post "/text_inspections" => "text_inspections#create"
	get "/text_inspections/results" => "text_inspections#results"

	post "/text_inspections" => "text_inspections#generator"
	get "/text_inspections/lipsum" => "text_inspections#lipsum"

	get "/asciis/new" => "asciis#new"
	post "/asciis" => "asciis#create"
end