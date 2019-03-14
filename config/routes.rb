Rails.application.routes.draw do
  #Calls products databases, using the index method we made in the index.html.erb file
  get "/" => 'products#index' 
  get "/products" => 'products#index'
end
