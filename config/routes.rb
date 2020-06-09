Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "page#home"
  get "/profile", to: 'pages#profile'
  resources :gardens #, only: [:create, :show, :destroy]
  resources :plants #, only: [:create, :destroy]
end
