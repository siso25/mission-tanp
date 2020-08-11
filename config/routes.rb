Rails.application.routes.draw do
  root 'gifts#index'
  resources :users 
  resources :preciouspeople do
    resources :preciousdays, only: [:show, :create, :update, :destroy]
  end
  get '/preciousdays/new', to: 'preciousdays#new'
  resources :gifts, only: [:index, :show]
  resources :purchase_records, only: [:create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
