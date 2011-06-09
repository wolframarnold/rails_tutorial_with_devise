SampleApp::Application.routes.draw do
  devise_for :users do
    # Aliased routes to match Rails Tutorial
    get 'signin',  :to => 'devise/sessions#new'
    get 'signout', :to => 'devise/sessions#destroy'
    get 'signup',  :to => 'devise/registrations#new'
  end

  # Additional user actions separated out into a new controller,
  # ProfilesController, due to conflicts with /users/:id route and
  # Devise's standard routes
  resources :profiles, :only => [:index, :show]
  resources :microposts,    :only => [:create, :destroy]

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  root :to => 'pages#home'
end
