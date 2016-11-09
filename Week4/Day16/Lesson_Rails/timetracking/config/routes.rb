Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/about", to: "site#about"
  get "/contact", to: "site#contact"
  get "/say_name/:name", to: "site#say_name"
  get "/add_form", to: "calculator#add_form"
  post "/calculator", to: "calculator#process_addition"
  get "/projects", to: "projects#index"
  get "/projects/new", to: "projects#new"
  get "/projects/:id", to: "projects#show", as: "project"
  post "/projects", to: "projects#create"

  get "/projects/:id/time_entries", to: "time_entries#index", as: "project_time_entries"
  
  # NOTES:
  # ----------------------------
  # /New MUST be **ABOVE** /:ID!
  # Link to create post is /projects, not /projects/create (naming convention).
  # The reasoning behind the convention is that when you create something new, you want to add it to the list (index).
end