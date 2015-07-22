Rails.application.routes.draw do

  root 'users#new'

  resources :users, only: [:create, :new, :destroy]
  resources :sessions, only: [:create, :new, :destroy]

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

  resources :projects do
    resources :pledges, only: [:index, :new, :create, :show]
  end

end
