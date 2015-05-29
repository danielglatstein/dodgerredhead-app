class AddReferencesToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :ingredients_list, index: true, foreign_key: true
    add_reference :recipes, :ingredient, index: true, foreign_key: true
  end
end
