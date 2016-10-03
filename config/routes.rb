Rails.application.routes.draw do
  # Root routes to matrix index
  root 'matrices#index'

  # Static page routes
  # Keep these first to avoid conflict with group_name route
  get 'about' => 'pages#about'
  get 'other_interfaces' => 'pages#other_interfaces'
  get 'submit' => 'matrices#new'

  # Route for sparse.tamu.edu/group_name/matrix_name
  get '/:group/:name', to: 'matrices#show'
  
  # Route for sparse.tamu.edu/group_name
  get '/:group', to: 'groups#show'
end
