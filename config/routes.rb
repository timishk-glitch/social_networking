Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'
  get 'my_profile', to: 'users#my_profile'
  resources:users, only: [:index, :show]
  resources:posts, only: [:new, :create, :index, :show ,:edit ,:update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
