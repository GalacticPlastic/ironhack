Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/about", to: "site#about"
  get "/contact", to: "site#contact"
  get "/say_name/:name", to: "site#say_name"
  get "/add_form", to: "calculator#add_form"
  post "/calculator", to: "calculator#process_addition"
end