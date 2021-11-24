# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # GET About >> AboutController >> views > about > index.html.erb default get "about", to:"about#index"
  get "about", to:"about#index"
  get "sign_up", to:"registrations#new"
  
  post "sign_up", to:"registrations#create"

  # localhost:3000 link to become the main. Can be done by get "", to:"main#index" or can be done as seen below
  root to:"main#index"
end
