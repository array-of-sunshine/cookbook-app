class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.html.erb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @users = User.all
    render 'new.html.erb'
  end

  def create
    @recipe = Recipe.new(
      ingredients: params[:ingredients],
      directions: params[:directions],
      title: params[:title],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: 1
    )
    @recipe.save
    # redirect_to "/recipes/<%=@recipe.id %>"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.title = params[:title] || @recipe.title
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.save
    redirect_to "/recipes"
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    redirect_to "/recipes"
  end
end

