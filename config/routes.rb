Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "about", to: "home#about"
  resources :users
  resource :user, only: [ :show ]

  resources :expenses do
    collection do
      get "expense_form", to: "expenses#expense_form"
    end
  end
end
