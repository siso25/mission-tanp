Rails.application.routes.draw do
  root 'gifts#index'
  resources :users 
  resources :preciouspeople do
    resources :preciousdays
  end
  resources :gifts, only: [:index, :show]
  resources :purchase_records, only: [:create]
end
