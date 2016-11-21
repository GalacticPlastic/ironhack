Rails.application.routes.draw do
  post "sandwiches/:id/ingredients/add", to: "ingredients#index"
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
end