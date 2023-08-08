Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  root to: "articles#index"
  # Create
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  # Read one
  get "article/:id", to: "articles#show", as: "article"
  # Update
  get "article/:id/edit", to: "articles#edit", as: "edit"
  patch "article/:id", to: "articles#update"
end
