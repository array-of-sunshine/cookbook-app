require 'unirest'
# need to run 'gem install awesome_print' first
require 'awesome_print'

# # index
# response = Unirest.get("http://localhost:3000/api/recipes")

# ap response.body

# # show
# response = Unirest.get("http://localhost:3000/api/recipes/2")

# ap response.body

# create
# response = Unirest.post("localhost:3000/api/recipes")

# ap response.body

# update
response = Unirest.patch("localhost:3000/api/recipes/4",
  parameters: {
    input_title: "chicken tacos",
    input_chef: "brian",
    input_directions: "a whole bunch of stuff, so much work",
    input_prep_time: 90,
    input_ingredients: "tempeh, garlic, onion, salt"
  }
)

ap response.body
