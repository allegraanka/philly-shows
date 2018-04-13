Rails.application.routes.draw do

# user and posts resources
  resources :users do
    resources :posts
  end

# landing page, link to about page, sign up, sign in buttons
  root 'home#index'
  get '/about' => 'home#about'

# user sign up / delete account routes

# user login / logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'session#destroy'

  get '/feed' => 'posts#feed'

end
