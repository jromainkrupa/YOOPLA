Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # get "users/new", to: "users#new"
  resources :users, only: [:new, :create]
  post "users", to: "users#create"
end
