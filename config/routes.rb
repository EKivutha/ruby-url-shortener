Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "shortener#index"
  get "/shortener", to: "shortener#index"
  get "/shortener/:identifier", to: "shortener#show"

  resources :shorteners
end
