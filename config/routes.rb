Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :supplies
    resources :comments
    
  root 'welcome#index'
end
