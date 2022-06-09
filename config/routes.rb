Rails.application.routes.draw do
  devise_for :users
  root "lifecharts#index"
  post 'printImage', to: 'print_images#create_image'
  get 'printImage', to: 'print_images#create_image'

  resources :lifecharts
end
