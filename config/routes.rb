# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # GET About >> AboutController >> views > about > index.html.erb default get "about", to:"about#index"
  get "about", to:"about#index"

  get "password", to:"passwords#edit", as: :edit_password
  patch "password", to:"passwords#update"

  get "sign_up", to:"registrations#new"
  post "sign_up", to:"registrations#create"
  
  get "sign_in", to:"sessions#new"
  post "sign_in", to:"sessions#create"
  

  delete "logout", to:"sessions#destory"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  get "auth/twitter/callback", to:"omniauth_callbacks#twitter"

  # localhost:3000 link to become the main. Can be done by get "", to:"main#index" or can be done as seen below
  root to:"main#index"
end
