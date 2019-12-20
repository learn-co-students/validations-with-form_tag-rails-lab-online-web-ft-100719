Rails.application.routes.draw do
  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/create'

  get 'posts/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :author, :post, only: [:show, :new, :edit, :create, :update]
end
