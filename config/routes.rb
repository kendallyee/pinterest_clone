Rails.application.routes.draw do


  get 'welcome/index'

  root 'welcome#index'

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get "/signup" => 'users#new'
  post '/users' => 'users#create'

 get "posts/search" => "posts#search", as: 'search'
 get "posts/ajax_search" => "posts#ajax_search", as: 'ajax_search'
 get "posts/random" => "posts#random", as: "random"
  resources :posts, controller: "posts", only: [:new, :index, :create, :show, :search, :ajax_search, :random]
end
