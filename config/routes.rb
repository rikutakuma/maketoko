Rails.application.routes.draw do

  root "users/sends#top"
  get "about" => "users/sends#about"

  devise_for :stores, controllers: {
  	sessions: 'stores/sessions',
  	passwords: 'stores/passwords',
  	registrations: 'stores/registrations',
  }

  namespace :stores do
    resources :sends
    resources :genres, only: [:index, :create, :edit, :update]
    resources :areas, only: [:index, :create, :edit, :update]
    resources :infomations, only: [:new, :create, :edit, :show, :update, :destroy]
  end

  scope module: :stores do
    get 'stores/mypage' => 'stores#show'
    get 'stores/information/edit' => 'stores#edit', as: 'store_edit_information'
    patch 'stores/information' => 'stores#update', as: 'store_update_information'
    put 'stores/information' => 'stores#update'
    get 'stores/unsubscribe' => 'stores#unsubscribe', as: 'store_confirm_unsubscribe'
    patch 'stores/leave' => 'stores#leave', as: 'leave_store'
    put 'stores/leave' => 'stores#leave'
  end




  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	passwords: 'users/passwords',
  	registrations: 'users/registrations',
  }

  namespace :users do
    resources :favorites, only: [:create, :destroy]
    resources :follows, only: [:create, :destroy]
    resources :stores, only: [:index, :show]
    resources :sends, only: [:index, :show]
  end

  scope module: :users do
    get 'users/mypage' => 'users#show'
    get 'users/information/edit' => 'users#edit', as: 'user_edit_information'
    patch 'users/information' => 'users#update', as: 'user_update_information'
    put 'users/information' => 'users#update'
    get 'users/unsubscribe' => 'users#unsubscribe', as: 'user_confirm_unsubscribe'
    patch 'users/leave' => 'users#leave', as: 'leave_user'
    put 'users/leave' => 'users#leave'

  end




end
