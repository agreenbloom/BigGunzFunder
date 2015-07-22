Rails.application.routes.draw do

  get 'rewards/index'

  get 'rewards/new'

  get 'rewards/create'

  get 'rewards/destroy'

  root 'users#new'

  resources :users, only: [:create, :new, :destroy] do
    resources :pledges, only: [:index, :create, :new, :show]
  end

  resources :sessions, only: [:create, :new, :destroy]

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

  resources :projects do
    resources :rewards, only: [:index, :create, :new, :destroy]
  end

end
