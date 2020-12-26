Rails.application.routes.draw do
  root to:"breeds#index"
  devise_for :users
  resources :breeds, only: [:index, :new, :create]
end
