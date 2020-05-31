Rails.application.routes.draw do
  root 'gifts#index'
  resources :users 
  resources :preciouspeople do
    resources :preciousdays
  end
  resources :gifts, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
