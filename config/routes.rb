Rails.application.routes.draw do
  resources :bicycle_reviews
  root to: "bicycles#index"
  devise_for :admins
  resources :bicycles, only: [:index, :show]

  namespace :admin do
    resources :bicycles
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
