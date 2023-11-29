Rails.application.routes.draw do

  get 'qr_codes/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'statics#index'
  resources :statics

  resources :albums
  resources :albumms
  resources :albummms
  resources :contacts

  resources :albums do
    member do
      get 'qr_code', to: 'qr_codes#show'
    end
  end
end

