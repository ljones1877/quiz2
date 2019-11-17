Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  resources :infos, only: [:new, :create, :index]
  resources :info, only: [:new, :create, :index]
end
