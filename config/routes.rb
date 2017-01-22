Rails.application.routes.draw do
  resources :ownerships
  resources :itineraries
  resources :events
  get 'home/index'

  # devise_for :users
  use_doorkeeper

  devise_for :users,
    path: 'user',
    path_names: { sign_in: 'login', sign_out: 'logout' },
    controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
      # unlocks: 'users/unlocks',
      # omniauth_callbacks: 'users/omniauth_callbacks'
    }
  devise_scope :user do
    get 'users/oauth_redirect', to: 'users/sessions#oauth'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
