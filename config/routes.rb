Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:new, :show, :create, :index, :edit, :update]
  resources :posts, only: [:new, :show, :create, :index, :edit, :update]

end
