Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "page#home"
  get "/profile", to: 'pages#profile'
  ressources :gardens #, only: [:create, :show, :destroy]
  ressources :plants #, only: [:create, :destroy]
end
