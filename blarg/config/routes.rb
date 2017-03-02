Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  resources :posts do
    resources :comments
  end
end
