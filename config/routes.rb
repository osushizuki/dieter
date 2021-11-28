Rails.application.routes.draw do
  devise_for :users
  root to: "exercises#index"
  resources :users, only: [:edit, :update]
  resources :exercises, only: [:index, :new, :create]
  resources :meals, only: [:new, :create]
  resources :healths, only: [:new, :create]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
