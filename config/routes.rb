SampleApp::Application.routes.draw do
  devise_for :users, :path_prefix => 'd' do
    # Aliased routes to match Rails Tutorial
    get 'signin',  :to => 'devise/sessions#new'
    get 'signout', :to => 'devise/sessions#destroy'
    get 'signup',  :to => 'devise/registrations#new'
  end

  # Additional user actions separated out into a new controller,
  # Note that Devise's controllers already handle login/logou, sign-up, etc.
  resources :users, :only => [:index, :show]

  match '/contact', :to => 'pages#contact'

  root :to => 'pages#home'
end
