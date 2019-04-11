Rails.application.routes.draw do
  devise_for :users
  #Calls products databases, using the index method we made in the index.html.erb file
  get '/' => 'products#index' 
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post 'products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  put '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
  get '/cart' => 'user_products#index'
  post '/cart' => 'user_products#create'
  delete '/cart/:id' => 'user_products#destroy'
end
