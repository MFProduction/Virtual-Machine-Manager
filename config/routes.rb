require "sidekiq/web"

Rails.application.routes.draw do

  resources :instances, only: [:index, :show, :new, :create]
  root 'instances#index'
  mount Sidekiq::Web, at: '/sidekiq' 
end
