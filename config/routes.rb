Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :doctors
  delete '/doctors/:id', to: 'doctors#destroy', as: :destroy_doctor

  resources :patients
  delete '/patients/:id', to: 'patients#destroy', as: :destroy_patient

  resources :appointments
end
