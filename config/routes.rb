Rails.application.routes.draw do
  devise_for :groups, controllers:{
    registrations: "group/registrations",
    sessions: "group/registrations"
  }
  
  
  devise_for :users, controllers:{
    registrations: "user/registrations",
    sessions: "user/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
