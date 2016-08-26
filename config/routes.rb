Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  resources :posts
  resources :qsos
  root "posts#index"

  get '/ham', to: 'qsos#index'
end
