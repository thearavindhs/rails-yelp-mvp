Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get 'restaurants/:id/review/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants/:id/review', to: 'reviews#create', as: :restaurant_reviews

  resources :restaurants, only: [:index, :new, :create, :show] do
  resources :reviews, only: [:new, :create]
  end
end
