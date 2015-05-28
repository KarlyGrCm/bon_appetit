Rails.application.routes.draw do
  devise_for :users
  resources :users
  get '/categorias/:id', to: 'welcome#categories'
  get '/categorias', to: 'welcome#categories'
  get '/restaurante/:id', to: 'welcome#restaurante'
  get '/checkout/:id', to: 'orders#checkout' 
  post '/add_address', to: 'orders#add_address'
  post '/finish', to: 'orders#finish'
  post '/send_order', to: 'restaurants#send_order'
  

  resources :orders, only: [:create]


  resources :restaurants do 
    member do 
      get :reportes
    end
  	resources :dishes
 end
 root 'welcome#index'
end
