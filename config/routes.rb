Rails.application.routes.draw do

  get 'bookings/index'
  # all the 7 lines below were replaces with a simple 'resources :rides' line above. Keeping it DRY.
  # get 'rides/index'
  # get 'rides/show'
  # get 'rides/new'
  # get 'rides/edit'
  # get 'rides/create'
  # get 'rides/update'
  # get 'rides/destroy'
  # get 'welcome/index'
  resources :rides
  post 'rides/create'

  devise_for :users
  
  resources :bookings

  get "/", to: "welcome#index", as: "root"
  get 'welcome/index'

  get "/payments/success", to: "payments#success"
end
