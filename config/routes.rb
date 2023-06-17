Rails.application.routes.draw do
  resources :users
  resources :students
  resources :tracks
  get '/' , to: 'users#new'
  get 'register' , to: 'users#new'
  post 'register' , to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end

