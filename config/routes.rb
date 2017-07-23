Rails.application.routes.draw do
  get 'classes/destroy'

  get 'classes/index'

  get 'classes/new'

  get 'classes/create'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#welcome'
end
