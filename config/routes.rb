Rails.application.routes.draw do
 #get '/clients', to: 'clients#index'
 # get '/clients/:status', to: 'clients#index'
 # resources :clients 

  
  root 'examples#new' # Define the root path

   resources :examples, only: [:new, :create] 

# session
 

end
