Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:new, :create] do
      resources :tasks, only: [:new, :create]
      end
      end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
