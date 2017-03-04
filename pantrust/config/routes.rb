Rails.application.routes.draw do
  resources :pins do
    member do
      put 'like', to: 'pins#upvote'
      put 'dislike', to: 'pins#downvote'
    end
  end
  devise_for :users
  root to: 'welcome#index'
end
