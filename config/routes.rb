Rails.application.routes.draw do
  devise_for :users
  resources :stories, except: [:new] do
    resources :contributions, except: [:show]
  end
  resources :users do
    resources :contributions, only: [:index]
  end

  root 'stories#index'
end
