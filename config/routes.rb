Rails.application.routes.draw do
  get 'session/new'
  resources :users
  root 'routes#index'
  get    'login'   => 'session#new'
  post   'login'   => 'session#create'
  get    'logout'  => 'session#destroy'
end