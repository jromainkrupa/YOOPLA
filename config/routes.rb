Rails.application.routes.draw do
  devise_for :users, only: [:show]

  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    get '/method', to: 'pages#method'
    #get '/pricing', to: 'pages#pricing'
    #get '/company', to: 'pages#company'
    get '/features', to: 'pages#features'
    # get 'users/new', to: 'users#new'
    resources :users, only: [:new, :create, :show]
    post 'users', to: 'users#create'
  end
end
