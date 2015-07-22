Rails.application.routes.draw do

resources :users, only: [:create, :new, :destroy] do
  resources :pledges, only [:index, :create, :new, :show]

end
