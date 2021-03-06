Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  get 'top/index/top' => 'top#index'

  get 'user' => 'users#show'

  get '/api/users/:uid/authorities' => 'api/users#authorities'

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

end
