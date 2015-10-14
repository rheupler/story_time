Rails.application.routes.draw do
  resources :stories, except: [:new] do
    resources :contributions, except: [:show]
  end
  resources :users do
    resources :contributions, only: [:index]
  end

  root 'stories#index'
end
