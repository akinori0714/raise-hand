Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users
  resources :communities
  resources :scouts
  resources :mypages
end
