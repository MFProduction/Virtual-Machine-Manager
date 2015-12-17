require "sidekiq/web"

Rails.application.routes.draw do
  root 'instances#index'
  resources :instances, only: [:index, :show, :new, :create] do
    member do
      post 'action'
    end
  end
  resources :presets, only: [:index, :new, :create]


  mount Sidekiq::Web, at: '/sidekiq' 
end
