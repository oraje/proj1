Rails.application.routes.draw do
  root to: 'home#index'
  patch "pokemons/:id/capture", to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/:id/damage', to: 'pokemons#damage', as: 'damage'
  patch 'pokemons/:id/new', to: 'pokemons#new', as: 'new'
  get "pokemons/new", to: "pokemons#new"
  get "pokemons/:id", to: "pokemons#show", as: :pokemon
  post "pokemons", to: "pokemons#create"
  
  devise_for :trainers
  resources :trainers
end
