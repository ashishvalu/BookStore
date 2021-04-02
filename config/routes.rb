Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carts/index'
  get 'carts/show'
  devise_for :users
  require 'resque/server'
  mount Resque::Server, at: '/jobs'

  
  resources :books, only: [:index, :show, :new, :create]
  resources :users
  resources :authors
  resources :publishers
  resources :orders, only: [:index, :new, :create]
  resources :home
  resources :shop
  resources :carts
  resources :checkouts
  resource :register
  resource :login

   root to:"home#index"


end
