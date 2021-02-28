Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :citations, only: [:index, :show] do
    post 'review', on: :member
    patch 'review', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
