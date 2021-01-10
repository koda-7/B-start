Rails.application.routes.draw do
  root to:"breeds#index"
  devise_for :users
  resources :users, only: :show
  resources :breeds, only: [:index, :new, :create, :show] do
    resources :informations, only: [:index, :new, :create, :show] do
      resources :more_informations, only: [:new, :create, :show]
    end
  end
end
