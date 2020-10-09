Rails.application.routes.draw do

  get "about" => "users/sends#about"

  devise_for :stores, controllers: {
  	sessions: 'stores/sessions',
  	passwords: 'stores/passwords',
  	registrations: 'stores/registrations',
  }

  scope module: :stores do
    resources :sends, only: [:index, :show, :create, :edit, :update, :destroy]
    get 'stores/mypage' => 'stores#show'
    get 'stores/information/edit' => 'stores#edit', as: 'store_edit_information'
    patch 'stores/information' => 'stores#update', as: 'store_update_information'
    put 'stores/information' => 'stores#update'
    get 'stores/unsubscribe' => 'stores#unsubscribe', as: 'store_confirm_unsubscribe'
    patch 'stores/leave' => 'stores#leave', as: 'leave_store'
    put 'stores/leave' => 'stores#leave'
  end



  devise_for :users, controllers: {
  	sessions: 'user/sessions',
  	passwords: 'users/passwords',
  	registrations: 'users/registrations',
  }


end
