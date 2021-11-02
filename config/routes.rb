Rails.application.routes.draw do
  root 'home#index'

  get '/logout', to: 'home#logout', as: :logout

  resources :mensagems
  resources :usuarios
  resources :sala_bate_papos
end
