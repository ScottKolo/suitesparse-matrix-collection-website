Rails.application.routes.draw do
  # Root routes to matrix index
  root 'collection_matrices#index'
  get 'index' => 'collection_matrices#index'
  get '/' => 'collection_matrices#index'

  # Redirects
  get '/mat/:group/:name.mat', to: redirect('http://sparse-files.engr.tamu.edu/mat/%{group}/%{name}.mat', status: 301)
  get '/RB/:group/:name.tar.gz', to: redirect('http://sparse-files.engr.tamu.edu/RB/%{group}/%{name}.tar.gz', status: 301)
  get '/MM/:group/:name.tar.gz', to: redirect('http://sparse-files.engr.tamu.edu/MM/%{group}/%{name}.tar.gz', status: 301)
  get '/svd/:group/:filename.mat', to: redirect('http://sparse-files.engr.tamu.edu/svd/%{group}/%{filename}.mat', status: 301)
  
  # Image Redirect
  get '/files/:group/*file', to: redirect('https://sparse-files-images.engr.tamu.edu/%{group}/%{file}', status: 301), 
                                  format: false, 
                                  constraints: { file: /.*\.(jpg|jpeg|gif|png)/ }

  get '/files/*file', to: redirect('https://sparse-files-images.engr.tamu.edu/%{file}', status: 301), 
                                  format: false, 
                                  constraints: { file: /.*\.(jpg|jpeg|gif|png)/ }

  get '/files/*file_path', to: redirect('http://sparse-files.engr.tamu.edu/files/%{file_path}', status: 301), format: false

  # Static page routes
  # Keep these first to avoid conflict with group_name route
  get 'about' => 'pages#about'
  get 'interfaces' => 'pages#interfaces'
  get 'statistics' => 'pages#statistics'
  
  get 'submit' => 'collection_matrices#new'
  post 'submit' => 'collection_matrices#submit'

  # Route for sparse.tamu.edu/matrix_id
  get '/:matrix_id', to: 'collection_matrices#show', constraints: { matrix_id: /\d+/ }

  # Route for sparse.tamu.edu/group_name/matrix_name
  get '/:group/:name', to: 'collection_matrices#show', as: 'collection_matrix', constraints: { group: /(?!assets).*/ }
  
  # Route for sparse.tamu.edu/groups (groups list)
  get '/groups', to: 'groups#index'

  # Route for sparse.tamu.edu/group_name
  get '/:group', to: 'groups#show'

  get '*path', to: redirect('/404'), via: :all

end
