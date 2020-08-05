Rails.application.routes.draw do
  get 'user/:id', to: 'user#show', as: 'user'
  get 'potin/:id', to: 'potin#show', as: 'potin'
  get 'welcome/:id', to: 'welcome#users'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'equipe#team'
  get '/', to: 'accueil#home', as: 'home'
  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
