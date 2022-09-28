Rails.application.routes.draw do
  root "dashboards#index"
  get 'dashboards/index'
  put :update_profile, to:"dashboards#update_profile"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :posts
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
