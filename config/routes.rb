Rails.application.routes.draw do
  devise_for :users

  root 'notes#index'
  resources :notes, only: %i[create destroy]
end
