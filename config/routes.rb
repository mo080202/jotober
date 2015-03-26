require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root to: 'sessions#show'
  post '/' => 'sessions#create'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :jots do
    member do
      post :like
      post :unlike
    end
  end
  get '/feed' => 'users#jotfeed'
  get '/location' => 'jots#locationfeed'
  resources :relationships, only: [:create, :destroy]
end
