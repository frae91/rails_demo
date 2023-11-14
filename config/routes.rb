Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create]

  resources :items, only: [:index, :show, :create]

  resources :orders, only: [:index, :show, :create, :update]

end
