Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :user
  root to: "pages#home"
  get "/profile", to: 'pages#profile'
  resources :gardens #, only: [:create, :show, :destroy]
  resources :plants #, only: [:create, :destroy]
end
