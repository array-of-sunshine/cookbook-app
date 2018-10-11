class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :chef
      t.string :ingredients
      t.string :directions
      t.string :title
      t.integer :prep_time
      t.string :image_url

      t.timestamps
    end
  end
end
