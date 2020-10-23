Rails.application.routes.draw do
  namespace :users_office do
    get 'graphics/index'
  end
  namespace :users_office do
    get 'profile/index'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end
  namespace :users_office do
    get 'welcome/index'

    get 'meals/index'
    resources :meals

    get 'diets/index'
    resources :diets

    get 'users/index'
    resources :users

  end

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get 'dados', to: 'users_office/users#edit'

  root to: 'users_office/welcome#index'
end
