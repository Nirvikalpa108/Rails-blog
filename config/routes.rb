Rails.application.routes.draw do
  resources :posts
  resources :cooks
  root 'home#index'
end
