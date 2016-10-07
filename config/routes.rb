Rails.application.routes.draw do
  # Root routes to matrix index
  root 'matrices#index'
  get 'index' => 'matrices#index'

  # Static page routes
  # Keep these first to avoid conflict with group_name route
  get 'about' => 'pages#about'
  get 'other_interfaces' => 'pages#other_interfaces'
  get 'submit' => 'matrices#new'
  post 'submit' => 'matrices#submit'

  # Route for sparse.tamu.edu/group_name/matrix_name
  get '/:group/:name', to: 'matrices#show'
  
  # Route for sparse.tamu.edu/groups (groups list)
  get '/groups', to: 'groups#index'

  # Route for sparse.tamu.edu/group_name
  get '/:group', to: 'groups#show'
end
