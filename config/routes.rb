Rails.application.routes.draw do
  devise_for :groups, controllers:{
    registrations: "group/registrations",
    sessions: "group/registrations"
  }
  
  
  devise_for :users, controllers:{
    registrations: "user/registrations",
    sessions: "user/sessions"
  }
  
   namespace :user do
    root to: "homes#top"
    resources :informations, only: [:show, :edit, :update]
   end
  
   namespace :group do
    resources :rooms, only: [:show, :edit, :update]
   end
   
   resources :messages, only: [:create, :destroy, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
