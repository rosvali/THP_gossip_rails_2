Rails.application.routes.draw do
  get 'welcome/:id', to: 'welcome#users'
  root 'accueil#home'
  resources :contact, only: [:index]
  resources :equipe, only: [:index]
  resources :gossips
  resources :user, only: [:show]  
  resources :city, only: [:show]
end
