Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :doctors
  resources :patients
  resources :appointments

end
