Rails.application.routes.draw do

  root 'users#new'

  resources :users, only: [:create, :new, :show]
  resources :sessions, only: [:create, :new, :destroy]

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

  resources :projects do
    resources :rewards, only: [:index, :create, :new, :destroy]
    resources :pledges, only: [:index, :new, :create, :show]
  end

end
