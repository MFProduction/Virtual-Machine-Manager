Rails.application.routes.draw do

  resources :virtual_machines, only: [:index, :new, :create]
  root 'virtual_machines#index'
 
end
