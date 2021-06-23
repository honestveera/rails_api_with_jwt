Rails.application.routes.draw do

  # Resourceful Routes
  resources :users do
    resources :friends
  end

  post 'login', to: "users#login"
  get 'auto_login', to: 'users#auto_login'

  #Resourceful routes via Namespace. Path,Action and Named routed helper will follow hierarchy(Admin under)
  # namespace :admin do
  #   resources :users
  # end
  #
  # #Resourceful routes via Scope. Path will differ. Action and Named routed helper will follow hierarchy
  # resources :users, module: 'admin' #single scope routes
  # scope module: 'admin' do
  #   resources :users
  # end



  # ************* Non Resourceful Routes *********************#
  # get 'users', to: "users#index" #users_path
  # get 'users/new', to: "users#new" #new_user_path
  # post 'users', to: "users#create"
  # get 'users/:id', to: "users#show" #user_path(:id)
  # put 'users/:id', to: "users#update" #edit_user_path(:id)
  # patch 'users/:id', to: "users#update" #edit_user_path(:id)
  # delete 'users/:id', to: "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
