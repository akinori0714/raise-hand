Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users
  resources :communities, only: [:index, :new, :show, :create] do
    collection do
      get 'add_user_to_community'
    end
    resources :chats, only: [:index, :create]
    namespace :api do
      resources :chats, only: :index, defaults: { format: 'json' }
    end
  end
  resources :scouts
  resources :mypages
  resources :projects
  resources :articles

end
