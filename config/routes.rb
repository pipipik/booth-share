Rails.application.routes.draw do
  devise_for :users
  root to: "booths#index"
  resources :booths do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
