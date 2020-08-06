Rails.application.routes.draw do
  get 'welcome/:id', to: 'welcome#users'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'equipe#team'
  get '/', to: 'accueil#home', as: 'home'
  resources :gossips
  resources :users, only: [:show, :new, :create]
  resources :city, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
