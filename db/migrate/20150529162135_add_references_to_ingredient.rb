class AddReferencesToIngredient < ActiveRecord::Migration
  def change
    add_reference :ingredients, :ingredients_list, index: true, foreign_key: true
    add_reference :ingredients, :recipe, index: true, foreign_key: true
  end
end
