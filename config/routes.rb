Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get "/signup" => 'users#new'
  post '/users' => 'users#create'
end
