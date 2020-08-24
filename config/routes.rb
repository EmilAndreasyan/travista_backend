Rails.application.routes.draw do
  # get 'registrations/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'
  # post '/auth/:provider/callback' => 'sessions#create'

  namespace :api do
    namespace :v1 do
      resources :registrations, only: [:create]
      get :login, to: "sessions#login"
      delete :logout, to: "sessions#logout"
      resources :sessions, only: [:create] do
        resources :countries do
          resources :cities do  
          end
        end
      end
    end
  end
#  root to: "static#home"
end
