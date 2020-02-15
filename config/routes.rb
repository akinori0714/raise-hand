Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users
  resources :communities, only: [:index, :new, :show, :create] do
    resources :chats, only: [:index, :create]
  end
  resources :scouts
  resources :mypages
  resources :projects
end
