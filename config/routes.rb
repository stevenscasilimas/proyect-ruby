Rails.application.routes.draw do
  get 'users' ,to: 'users#index'
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_users'
  patch 'users/:id', to: 'users#update' 
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#delete', as: 'delete_users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
