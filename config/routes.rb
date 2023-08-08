Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :travel_packages
  resources :travel_experiences
  resources :destinations
  resources :users, only: [:create, :update]

  resources :contacts, only: [:index, :create] # Only includes index and create routes
  get '/contacts/all', to: 'contacts#all'

  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
