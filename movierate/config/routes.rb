Rails.application.routes.draw do
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  devise_for :users
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
