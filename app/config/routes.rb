Rails.application.routes.draw do
  root to: 'home#index'

  resources :users, only: %i[new create]

  # admin endpoints
  namespace 'admin' do
    get '/themes', to: 'themes#index'
  end

  # authorization endpoints
  namespace 'auth' do
    get '/register', to: 'registrations#new'
    post '/register', to: 'registrations#create'

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
end
