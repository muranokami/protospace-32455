Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: :index
  resources :prototypes, only: :new
  resources :prototypes, only: :show
  resources :prototypes do
    resources :comments, only: :create
    collection do
    end
  end
end
 