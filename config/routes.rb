Rails.application.routes.draw do
  get 'relationships/new'
  get 'relationships/create'
  get 'meetings/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :searches, only: [:search]
  resources :users, only: [:show]
  resources :meetings, only: [:index]
  resources :relationships, only: [:create] do
    resources :messages, only: [:create]
    resources :meetings, only: [:create]
    member do
      get :favorite
    end
  end
  get "dashboard", to: "pages#dashboard"
end
