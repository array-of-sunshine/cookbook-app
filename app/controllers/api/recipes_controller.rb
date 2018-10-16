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
    @recipe.title = "new something title"
    @recipe.chef = "chef spaghetti"
    @recipe.ingredients = "water, flour, eggs"
    @recipe.directions = "cook the flour with the eggs"
    @recipe.prep_time = 10
    @recipe.save
    render "show.json.jbuilder"
  end
end
