Rails.application.routes.draw do
  devise_for :users, only: [:show]

  scope '(:locale)', locale: /en|fr/ do
    root to: 'pages#home'
    get '/method', to: 'pages#method'
    #get '/pricing', to: 'pages#pricing'
    #get '/company', to: 'pages#company'
    get '/features', to: 'pages#features'
    # get 'users/new', to: 'users#new'
    resources :users, only: [:new, :create, :show]
    post 'users', to: 'users#create'

    get '/sitemap.xml' => 'sitemaps#index', format: 'xml', as: :sitemap

    # 301 redirect from old URLs
    # match "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")

  end
end
