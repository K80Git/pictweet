Rails.application.routes.draw do
  devise_for :users
  # ↑自動で作成される。
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
