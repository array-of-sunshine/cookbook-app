class ApplicationController < ActionController::Base
  def one_recipe_action
    # how can i get some data from my db into my controller?
    @recipe = Recipe.first
    render "one_recipe_view.json.jbuilder"
  end
end
