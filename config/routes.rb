Rails.application.routes.draw do
  # resources :users
  devise_for :users
  resources :tasks
  resources :matching_tasks
  get "tops/index"
  root to: "tops#index"
end
