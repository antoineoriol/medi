Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: %i[new create show] do
      resources :tasks, only: %i[index update]
    end
  end

  resources :tasks, only: %i[destroy]

  devise_for :users
  root to: "pages#home"
end
