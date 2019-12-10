Rails.application.routes.draw do
  resources :authors, only: [:new,:show,:create]
  resources :posts, only: [:edit,:show,:update]
end
