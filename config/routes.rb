Rails.application.routes.draw do
  root to: "tops#index"
  devise_for :users
  resources :tasks
  resources :matching_tasks
  get "tops/index"
end
