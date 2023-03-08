Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: "user/registrations",
    sessions: "user/sessions"
  }
  
  root to: "homes#top"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :show, :edit, :update, :destroy] do
    get "join" => "groups#join"  
  end
  resources :messages, only: [:create, :destroy, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
