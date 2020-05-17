Rails.application.routes.draw do
  root 'gifts#index'
  # resources :users
  resources :gifts, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
