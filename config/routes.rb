Rails.application.routes.draw do

# user and posts resources
  resources :users
  resources :posts
  resources :comments

# landing page, link to about page, sign up, sign in buttons
  root 'home#index'
  get '/about' => 'home#about'

# user sign up / delete account routes
  get '/users/goodbye' => 'users#goodbye'

# user login / logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/login_error' => 'sessions#login_error'
  delete '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#logged_out'

# user dashboard and manage account
  get '/dashboard' => 'users#dashboard'
  get '/manage' => 'users#manage'
  post '/manage' => 'users#update'

end
