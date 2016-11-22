Rails.application.routes.draw do
  post "sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"
  delete "sandwiches/:id/ingredients/remove", to: "sandwiches#remove_ingredient"
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
end