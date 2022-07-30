Rails.application.routes.draw do
  resources :floors
  resources :taps
  resources :drinks
  get 'home/index'
  get 'pages/home'
  root 'taps#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
