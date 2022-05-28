Rails.application.routes.draw do
  root "lifecharts#index"

  resources :lifecharts
end
