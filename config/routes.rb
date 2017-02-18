Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'profile#index'
    resources :profiles, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :profiles, only: [:show]
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
