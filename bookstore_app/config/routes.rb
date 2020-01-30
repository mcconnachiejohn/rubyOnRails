Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :books
  resources :authors
  resources :genres
  resources :publishers
  resources :novels



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
