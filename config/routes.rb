Rails.application.routes.draw do

  resources :googles

  devise_for :users
  root                'static_pages#home'
end
