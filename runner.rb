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
response = Unirest.post("localhost:3000/api/recipes")

ap response.body
