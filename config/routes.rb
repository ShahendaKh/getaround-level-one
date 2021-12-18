Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  root to: 'application#health_check'
  resources :drivers, only: :create
  resources :car_owners, only: :create
end