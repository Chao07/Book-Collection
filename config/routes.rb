Rails.application.routes.draw do
  resources :user_collections
  resources :users
  resources :books
  
  root 'user_collections#index'
  #root 'books#index'

  resources :books do
    member do
      get :delete
    end
  end
  
  #get 'delete'=> 'books#delete', as: "delete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
