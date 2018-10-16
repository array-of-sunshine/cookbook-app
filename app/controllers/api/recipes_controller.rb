class Api::RecipesController < ApplicationController
  def index
    # show all the recipes
    @recipes = Recipe.all
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
    @recipe = Recipe.new(chef: "boyardee", ingredients: "beans", directions: "simmer the beans", title: "simmered beans", prep_time: 60)
    @recipe.save
    render "show.json.jbuilder"
  end

  def update
    # get the correct recipe ==> show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    # change that recipe ==> kind of like create
    @recipe.title = params[:input_title] || @recipe.title
    @recipe.chef = params[:input_chef] || @recipe.chef
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
end
