Rails.application.routes.draw do
  namespace :crammer do
    resources :placements, only: [:new, :create]
  end

  namespace :crammer do
    resources :classes, only: [:index, :new, :create, :destroy]
  end

  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#welcome'
end
