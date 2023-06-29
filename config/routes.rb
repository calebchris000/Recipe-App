Rails.application.routes.draw do
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/edit'
  get 'recipe_foods/destroy'
  get 'public_recipes/index'
  resources :recipes
  resources :foods
  devise_for :users
  resources :users
  resources :foods
  root 'user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
