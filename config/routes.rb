Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  authenticate :user do
  	root 'notes#index', as: "authenticate_root"
  end

  root 'welcome#index'

  
end

