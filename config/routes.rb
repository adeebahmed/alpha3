Rails.application.routes.draw do
  resources :liftdata
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'

  get '/auth/:provider', to: lambda{|env| [404, {}, ["Not Found"]]}, as: 'auth'

  get '/logout', to: 'sessions#destroy', as: 'logout'
end
