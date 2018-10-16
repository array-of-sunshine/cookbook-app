json.array! @recipes do |recipe|
  json.id recipe.id
  json.chef recipe.chef
  json.title recipe.title
  json.ingredients recipe.ingredients
  json.directions recipe.directions
  json.created_at recipe.created_at
  json.updated_at recipe.updated_at
end
