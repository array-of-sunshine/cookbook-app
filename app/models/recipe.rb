class Recipe < ApplicationRecord
  belongs_to :user
  # def say_hello
  #   p "hi here"
  # end
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    result = ""
    # if hours > 0
    #   result += "#{hours} hours "
    # end
    result += "#{hours} hours " if hours > 0
    # if minutes > 0
    #   result += "#{minutes} minutes"
    # end
    result += "#{minutes} minutes" if minutes > 0
    result
  end
end
