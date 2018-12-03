Rails.application.routes.draw do
  get '/recipes/random' => 'recipes#random'
  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  get '/recipes/:id' => 'recipes#show'
  post '/recipes' => 'recipes#create'
  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'
  delete '/recipes/:id' => 'recipes#destroy'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # index
    get '/recipes' => 'recipes#index'
    # show
    get '/recipes/:id' => 'recipes#show'
    # create
    post '/recipes' => 'recipes#create'
    # update
    patch '/recipes/:id' => 'recipes#update'
    # destroy
    delete '/recipes/:id' => 'recipes#destroy'

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
end
