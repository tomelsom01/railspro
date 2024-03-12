Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :monuments
  root 'home#index'
  get '/about', to: 'abouts#index'
  get '/contact', to: 'contacts#index'
  get '/massage', to: 'massage#index'
  get '/prices', to: 'prices#index'
end
