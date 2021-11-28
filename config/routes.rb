Rails.application.routes.draw do
  devise_for :users
  root to: "exercises#index"
  resources :users, only: [:edit, :update]
end
