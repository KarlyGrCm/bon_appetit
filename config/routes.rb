Rails.application.routes.draw do
  devise_for :users
  resources :restaurants do 
   resources :dishes
 end
 root 'welcome#index'
end
