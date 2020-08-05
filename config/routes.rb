Rails.application.routes.draw do
  get 'welcome/:id', to: 'welcome#users'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'equipe#team'
  get '/', to: 'accueil#home', as: 'home'
  resources :gossips
  resources :user, only: [:show]  
  resources :city, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
