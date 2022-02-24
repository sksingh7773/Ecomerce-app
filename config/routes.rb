Rails.application.routes.draw do
   
  resources :lists
 resources :line_items
  resources :places
  resources :carts
  resources :shopes, only:[:index,:show]
  resources :products 
  resources :contacts, only: [:new, :create]
  get "/send_ap" => "lists#send_approve_mail"
  get "/send_db" => "lists#send_reject"
  get "search" => "products#search"
  
  resources :orders #do
    #resources :line_items
  #end
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
