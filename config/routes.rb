Rails.application.routes.draw do
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
  end
end
