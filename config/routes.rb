Rails.application.routes.draw do
  resources :otherdevices
  resources :eprodevices
  root to: 'dashboard#index'
  resources :items
  resources :devices
  devise_for :users, only: :session, path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users, only: [:show]
end
