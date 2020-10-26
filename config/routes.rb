Rails.application.routes.draw do

  root "users/sends#top"
  get "about" => "users/sends#about"

  devise_for :stores, controllers: {
    sessions: "stores/sessions",
    passwords: "stores/passwords",
    registrations: "stores/registrations",
  }

  namespace :stores do
    resources :sends, except: [:destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :areas, only: [:index, :create, :edit, :update]
    resources :infomations, only: [:new, :create, :edit, :show, :update, :destroy]
    delete "sends/:id/delete" => "sends#delete"
  end

  scope module: :stores do
    get "stores/mypage" => "stores#show"
    get "stores/information/edit" => "stores#edit", as: "store_edit_information"
    patch "stores/information" => "stores#update", as: "store_update_information"
    put "stores/information" => "stores#update"
    get "stores/unsubscribe" => "stores#unsubscribe", as: "store_confirm_unsubscribe"
    delete "stores/destroy_all" => "stores#destroy_all", as: "destroy_all_store"
  end

  devise_for :users, controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations",
  }

  namespace :users do
    resources :stores, only: [:index, :show] do
         resources :relationships, only: [:create, :destroy]
       end
    get "users/:id/relationships" => "users#relationships", as: "store_follow"
    get "users/:id/timeline" => "users#timeline", as: "store_timeline"
    get "users/relationship_ranking" => "stores#relationship_ranking", as: "store_ranking"
    get "users/:area_id/area_ranking" => "stores#area_ranking", as: "area_ranking"
    resources :sends, only: [:index, :show]
    resources :users, only: [:index]

  end

  scope module: :users do
    get "users/mypage" => "users#show"
    get "users/information/edit" => "users#edit", as: "user_edit_information"
    patch "users/information" => "users#update", as: "user_update_information"
    put "users/information" => "users#update"
    get "users/unsubscribe" => "users#unsubscribe", as: "user_confirm_unsubscribe"
    delete "users/leave" => "users#leave", as: "leave_user"

  end
end
