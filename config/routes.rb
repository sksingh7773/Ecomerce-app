Rails.application.routes.draw do
   
  get 'cards/show'
  resources :shopes, only:[:index,:show]
  resources :products 
  resources :order_items
  resource :cards, only:[:show]
  devise_for :users ,controllers:{
    registration: 'registration'
  } 

  #get '/welcome', to: 'welcome#index'
  root 'shopes#index' 

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
