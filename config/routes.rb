Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :items
  resources :devices
  devise_for :users, only: :session, path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users, only: [:show]
end
