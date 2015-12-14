Rails.application.routes.draw do

  resources :virtual_machines, only: [:index, :show]
  root 'virtual_machines#index'
 
end
