Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
    collection do
    end
  end
  resources :users, onry: :show
end
 