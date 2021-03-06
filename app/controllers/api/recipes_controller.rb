class Api::RecipesController < ApplicationController
  def index
    p 'current_user'
    p current_user
    # show all the recipes
    # how ca n iget user input into my controller?
    search_term = params[:user_input]
    @recipes = Recipe.all
    @recipes.order!(:id => :desc)
    render "index.json.jbuilder"
  end

  def show
    # show one specific recipe
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    render "show.json.jbuilder"
  end

  def create
    # make a new recipe
    @recipe = Recipe.new(
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      title: params[:input_directions],
      prep_time: params[:input_prep_time],
      user_id: current_user.id
      # make it so that the logged in user is associated with this new recipe
    )
    @recipe.save
    render "show.json.jbuilder"
  end

  def update
    # get the correct recipe ==> show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    # change that recipe ==> kind of like create
    @recipe.title = params[:input_title] || @recipe.title
    @recipe.ingredients = params[:input_ingredients] || @recipe.ingredients
    @recipe.directions = params[:input_directions] || @recipe.directions
    @recipe.prep_time = params[:input_prep_time] || @recipe.prep_time
    @recipe.save
    # @recipe.update(
    #   title: params[:input_title],
    #   chef: params[:input_chef],
    #   ingredients: params[:input_ingredients],
    #   directions: params[:input_directions],
    #   prep_time: params[:input_prep_time]
    # )
    render "show.json.jbuilder"
  end

  def destroy
    # get the correct recipe
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    # DEESTROY that recipe
    @recipe.destroy
    render "destroy.json.jbuilder"
  end
end
