Rails.application.routes.draw do
   
  resources :products
  devise_for :users ,controllers:{
    registration: 'registration'
  } 

  #get '/welcome', to: 'welcome#index'
  root 'products#index' 

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end