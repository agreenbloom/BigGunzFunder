Rails.application.routes.draw do
  root 'projects#index'

  resources :users, only: [:create, :new, :show]
  resources :sessions, only: :create

  get 'login' => 'sessions#new', :as => :login
  delete 'logout' => 'sessions#destroy', :as => :logout

  resources :projects do
    resources :rewards, only: [:index, :create, :new, :destroy] do #, shallow: true
      resources :pledges, only: [:index, :new, :create, :show]
    end
  end
end
