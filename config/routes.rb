Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :simcards
  resources :otherdevices do
    collection { post :import }
  end
  resources :eprodevices do
    collection { post :import }
  end
  resources :items
  resources :devices do
    collection { post :import }
  end
  devise_for :users, only: :session, path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users, only: [:show]
end