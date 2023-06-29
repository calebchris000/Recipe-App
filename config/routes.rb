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
  root 'users#index'
end
