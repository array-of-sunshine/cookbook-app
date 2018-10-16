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
end
