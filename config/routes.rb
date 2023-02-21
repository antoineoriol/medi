Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  resources :questions do
    resources :answers, only: %i[new create show] do
      resources :tasks, only: %i[index new update]
    end
  end

  resources :history, only: %i[index]

  resources :tasks, only: %i[destroy]

  devise_for :users
  resources :tasks, only: %i[destroy]
  root to: "pages#home"
end
