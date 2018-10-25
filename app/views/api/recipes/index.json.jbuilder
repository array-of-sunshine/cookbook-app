# json.array! @recipes do |recipe|
#   json.id recipe.id
#   json.chef recipe.chef
#   json.title recipe.title
#   json.prep_time recipe.prep_time
#   json.ingredients recipe.ingredients
#   json.directions recipe.directions
#   json.created_at recipe.created_at
#   json.updated_at recipe.updated_at

#   json.formatted do
#     json.prep_time recipe.friendly_prep_time
#     json.ingredients recipe.ingredients_list
#     json.directions recipe.directions_list
#     json.created_at recipe.friendly_created_at
#   end
# end
json.user_info current_user
