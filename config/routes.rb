Rails.application.routes.draw do
  resources :stories do
    resource :contributions
  end
  resource :users do
    resource :contributions
  end

  root 'stories#index'
end
