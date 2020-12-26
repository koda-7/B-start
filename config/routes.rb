Rails.application.routes.draw do
  root to:"breeds#index"
  devise_for :users
  
end
