Rails.application.routes.draw do
  namespace :crammer do
    get 'placements_controller/new'
  end

  namespace :crammer do
    get 'placements_controller/create'
  end

  get 'classes/destroy'

  get 'classes/index'

  get 'classes/new'

  post 'classes/create'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#welcome'
end
