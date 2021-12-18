Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: 'application#health_check'
  resources :drivers, only: :create
  resources :car_owners, only: :create
end