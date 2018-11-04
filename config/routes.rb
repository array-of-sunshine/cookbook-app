Rails.application.routes.draw do
  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  get '/recipes/:id' => 'recipes#show'
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
