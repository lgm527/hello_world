Rails.application.routes.draw do

  # resources :reviews
  # resources :suppliers

  resources :suppliers do
    resources :reviews
  end
  
  root to: 'home#index'

end
