Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  get '/about', to: 'static_pages#about'

  resources :posts do
    resources :comments
  end
end
