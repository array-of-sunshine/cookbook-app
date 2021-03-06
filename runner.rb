require 'unirest'
# need to run 'gem install awesome_print' first
require 'awesome_print'

# index
response = Unirest.get("http://localhost:3000/api/recipes")

p 'prep time as an integer'
ap response.body[4]['prep_time']

p 'prep time as a string'
ap response.body[4]['formatted']['prep_time']

# # show
# response = Unirest.get("http://localhost:3000/api/recipes/2")

# ap response.body

# create
# response = Unirest.post("localhost:3000/api/recipes",
#   parameters: {
#     input_title: "eggs",
#     input_chef: "brian",
#     input_directions: "crack the eggs and cook em",
#     input_prep_time: 15,
#     input_ingredients: "eggs etc"
#   }
# )

# ap response.body

# # update
# response = Unirest.patch("localhost:3000/api/recipes/4",
#   parameters: {
#     input_title: "chicken tacos",
#     input_chef: "brian",
#     input_directions: "a whole bunch of stuff, so much work",
#     input_prep_time: 90,
#     input_ingredients: "tempeh, garlic, onion, salt"
#   }
# )

# ap response.body


# # destroy
# response = Unirest.delete("localhost:3000/api/recipes/6")

# ap response.body
