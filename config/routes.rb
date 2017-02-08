Rails.application.routes.draw do
  # products routes
  root to: "products#index"
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  # suppliers routes
  get '/' => 'suppliers#index'
  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'

  # images routes
  get "/products/:product_id/images/new", to: 'images#new'
  post "/products/:product_id/images", to: 'images#create'

  # sign up routes
  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  # login and logout
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  # orders routes
  post "/orders", to: "orders#create"
  get "/orders/:id", to: "orders#show"

  # carted_products routes
  post "/carted_products", to: "carted_products#create"
  get "/carted_products", to: "carted_products#index"
  delete "/carted_products/:id", to: "carted_products#destroy"
end
