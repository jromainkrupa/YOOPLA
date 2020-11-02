Rails.application.routes.draw do
  devise_for :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get '/thanks', to: "users#thanks"
  # get "users/new", to: "users#new"
  resources :users, only: [:new, :create, :show]
  post "users", to: "users#create"
end
