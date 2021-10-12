Rails.application.routes.draw do
  get 'booths/index'
  root to: "booths#index"
end
