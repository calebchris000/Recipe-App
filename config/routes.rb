# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'foods#index'
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/edit'
  get 'recipe_foods/destroy'
  resources :recipes do
    resources :public_recipes
  end
  resources :users
  resources :foods, except: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end



















































