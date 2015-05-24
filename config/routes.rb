Rails.application.routes.draw do
  resources :restaurants
   root 'welcome#index'
end
