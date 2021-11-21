Rails.application.routes.draw do
  get 'exercises/index'
  devise_for :users
  root to: "exercises#index"
  resources :users
  resources :exercises
  resources :meals
  resources :healths
end
