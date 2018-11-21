json.array! @recipes do |recipe|
  json.id recipe.id
  json.title recipe.title
  json.prep_time recipe.prep_time
  json.ingredients recipe.ingredients
  json.image_url recipe.image_url
  json.directions recipe.directions
  json.created_at recipe.created_at
  json.updated_at recipe.updated_at

  json.formatted do
    # json.prep_time recipe.friendly_prep_time
    json.ingredients recipe.ingredients_list
    # json.directions recipe.directions_list
    json.created_at recipe.friendly_created_at
  end
  json.user current_user
end
