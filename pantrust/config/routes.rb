Rails.application.routes.draw do
  resources :pins
  devise_for :users
  root to: 'welcome#index'
end
