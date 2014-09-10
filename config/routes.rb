Rails.application.routes.draw do
  resources :tasks
  resources :lists

  root 'lists#index'
end
