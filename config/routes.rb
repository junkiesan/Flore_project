Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "/profile", to: 'pages#profile'
  resources :gardens, only: [:index, :new, :create, :show, :update, :edit]

  resources :plants, only: [:index, :show, :create, :new, :destroy]
end
