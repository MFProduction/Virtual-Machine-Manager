require "sidekiq/web"

Rails.application.routes.draw do
  get 'presets/index'

  get 'presets/new'

  get 'presets/create'

  root 'instances#index'
  resources :instances, only: [:index, :show, :new, :create]
  resources :presets, only: [:index, :new, :create]


  mount Sidekiq::Web, at: '/sidekiq' 
end
