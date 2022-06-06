Rails.application.routes.draw do
  devise_for :users
  root "lifecharts#index"

  resources :lifecharts
end
