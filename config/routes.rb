Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root "messages#index"
  resources :users do
    collection do
      get 'category'
      get 'set_parent'
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :communities, only: [:index, :new, :show, :create] do
    collection do
      get 'add_user_to_community'
    end
    resources :chats, only: [:index, :create]
    namespace :api do
      resources :chats, only: :index, defaults: { format: 'json' }
    end
  end
  resources :mypages
  resources :projects
  resources :articles
  resources :dms, only: [:create]
  resources :rooms, only: [:create, :show, :index]
  resources :footers, only: [:index] do
    collection do
      get 'howtouse'
      get 'price'
      get 'beginner'
      get 'question'
      get 'contact'
      get 'termofservice'
      get 'special'
      get 'protect'
    end
  end
end
