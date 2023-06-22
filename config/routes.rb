Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'
  get 'pages/about', as: :about
  get 'pages/csv_tester', as: :csv_tester
  post 'pages/csv_upload', as: :csv_upload

  resources :orders, only: [:index, :show]

end
