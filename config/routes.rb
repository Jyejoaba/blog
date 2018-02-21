Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts'=>'posts#index'
  post 'posts'=>'posts#create'
  get 'posts/new'=>'posts#new', as: 'new_post'
  get 'posts/:id'=>'posts#show', as: 'post'
  delete 'posts/:id'=>'posts#destroy'
  patch 'posts/:id' => 'posts#update'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'


  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/new' => 'users#new', as: 'new_user'
  get 'users/:id' => 'users#show', as: 'user'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  patch 'users/:id' => 'users#update'
  delete 'users/:id'=>'users#destroy'

  get 'comments' => 'comments#index'
  post 'comments' => 'comments#create'
  get 'comments/new' => 'comments#new', as: 'new_comment'
  get 'comments/:id' => 'comments#show', as: 'comment'
  get 'comments/:id/edit' => 'comments#edit', as: 'edit_comment'
  patch 'comments/:id' => 'comments#update'
  delete 'comments/:id' => 'comments#destroy'
end
