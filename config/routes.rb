Rails.application.routes.draw do
  resources :devices
  devise_for :users, only: :session, path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users, only: [:show]

  root to: 'devices#index'
end
