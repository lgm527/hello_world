Rails.application.routes.draw do

  resources :suppliers
  root to: 'home#index'

end
