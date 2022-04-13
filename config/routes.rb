Rails.application.routes.draw do
  get 'inventories/index'
  get 'inventories/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foods
  resources :recipes, only: [:index, :show, :create, :destroy]
  get '/public_recipes/', to: 'public_recipes#index'
  get '/shopping_list/', to: 'shopping_list#index'
end
