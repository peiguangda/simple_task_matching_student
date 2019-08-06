Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :tasks
  resources :matching_tasks
  get "tops/index"
  root to: "tops#index"
  namespace :admin do
    resources :users
    get "/", :to => "tops#index"
  end
end
