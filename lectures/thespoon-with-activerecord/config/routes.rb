Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants

  # delete 'restaurants/:id', to: 'restaurants#destroy'
  # patch 'restaurants/:id', to: 'restaurants#update', as: 'restaurant'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants', to: 'restaurants#index'

end
