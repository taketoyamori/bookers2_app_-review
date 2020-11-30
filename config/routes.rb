Rails.application.routes.draw do
  root to: 'home#top'
  get '/about' => 'home#about'
  devise_for :users
  resources :users, only: [:index, :edit, :show, :update, ]
  resources :books, only: [:index, :create, :edit, :show, :update, :destroy]
end
