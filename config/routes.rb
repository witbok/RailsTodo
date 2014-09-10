Rails.application.routes.draw do
  resources :tasks, only: [:new, :create]
  resources :lists

  root 'lists#index'
end
