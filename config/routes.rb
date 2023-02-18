Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: %i[new create show] do
      resources :tasks, only: %i[index new update]
    end
  end
  devise_for :users
  resources :tasks, only: %i[destroy]
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
