Rails.application.routes.draw do
  namespace :crammer do
    get 'classes/new'
  end

  namespace :crammer do
    get 'classes/create'
  end

  namespace :crammer do
    get 'classes/index'
  end

  namespace :crammer do
    get 'classes/destroy'
  end

  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#welcome'
end
