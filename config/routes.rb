Rails.application.routes.draw do
  
  resources :partidas
  resources :conceptos
  get     'login'  => 'sessions#new'
  post    'login'  => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
  root    'static_pages#main'

  resources :capitulos
  resources :inputs
  get '/list_inputs', to: 'inputs#list_inputs'
  resources :suppliers
  resources :products
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
