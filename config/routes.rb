Rails.application.routes.draw do
  devise_for :users
  get 'booths/index'
  root to: "booths#index"
end
