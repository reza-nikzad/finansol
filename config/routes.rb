Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get 'about', to: 'home#about'   
  resources :users
  resource :user, only: [:show]
end
