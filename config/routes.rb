Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # Deresources :chatrooms, only: :showfine your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
