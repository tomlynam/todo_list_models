Rails.application.routes.draw do
  root 'lists#index'

  resources :lists

  resources :items
  
end