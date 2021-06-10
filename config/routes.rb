Rails.application.routes.draw do
  
  resources :conceptos
  get     'login'  => 'sessions#new'
  post    'login'  => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
  root    'static_pages#main'

  resources :capitulos
  resources :inputs
  resources :suppliers
  resources :products
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
