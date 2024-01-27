Rails.application.routes.draw do
  get 'users/index'
  

  get 'profile', to: 'users#show'
  resources :news 

  match '/users', to: 'users#index', via: :all 
  match '/users/:id', to: "users#show", via: :get 
  #devise_for :users, :path_prefix => 'd'
  resources :users, :only => [:show]
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
