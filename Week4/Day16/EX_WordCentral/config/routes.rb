Rails.application.routes.draw do
	root "site#home"
	get "/text_inspections/new" => "text_inspections#new"
	post "/text_inspections" => "text_inspections#create"
	get "/text_inspections/results" => "text_inspections#results"
	get "/asciis/new" => "asciis#new"
	post "/asciis" => "asciis#create"
end