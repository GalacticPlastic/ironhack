Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/about", to: "site#about"
  get "/contact", to: "site#contact"
  get "/say_name/:name", to: "site#say_name"
  get "/add_form", to: "calculator#add_form"
  post "/calculator", to: "calculator#process_addition"
  resources :projects do
    resources :time_entries  # <= Nested resources/routes
  end
  # resources :projects, only: [:index, :show, :new, :create] do
  #   resources :time_entries, except: [:show]  # <= Nested resources/routes
  # end
end