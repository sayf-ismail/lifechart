Rails.application.routes.draw do
  # root "lifecharts#index"
  # post 'printImage', to: 'print_images#create_image'
  # get 'printImage', to: 'print_images#create_image'
  get 'site/index'
  devise_for :users
  root "site#index"

  resources :lifecharts
end
