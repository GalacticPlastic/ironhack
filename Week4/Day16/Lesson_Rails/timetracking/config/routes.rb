Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/about", to: "site#about"
  get "/contact", to: "site#contact"
  get "/say_name/:name", to: "site#say_name"
  get "/add_form", to: "calculator#add_form"
  post "/calculator", to: "calculator#process_addition"
  get "/projects", to: "projects#index"
  get "/projects/new", to: "projects#new"
  get "/projects/:id", to: "projects#show", as: :project
  post "/projects", to: "projects#create"

  get "/projects/:id/edit", to: "projects#edit", as: :edit_project
  patch "/projects/:id/", to: "projects#update"

  get "/projects/:project_id/time_entries", to: "time_entries#index", as: :project_time_entries
  get "/projects/:project_id/time_entries/new", to: "time_entries#new", as: :new_project_time_entry
  post "/projects/:project_id/time_entries", to: "time_entries#create" #, as: :project_time_entries

  get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit", as: :edit_project_time_entry
  patch "/projects/:project_id/time_entries/:id", to: "time_entries#update", as: :project_time_entry

  # /New MUST be * * ABOVE * * /:id!
  # Link to create post is /projects, not /projects/create (naming convention).
  # The reasoning behind the convention is that when you create something new, you want to add it to the list (index).
end