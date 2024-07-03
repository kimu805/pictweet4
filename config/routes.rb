Rails.application.routes.draw do
  devise_for :users

  root to: "tweets#index"
  resources :tweets do
    reosurces :comments, only: :create
  end
  resources :users, only: :show
end
