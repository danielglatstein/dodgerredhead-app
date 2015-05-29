class AddRecipeToIngredientList < ActiveRecord::Migration
  def change
    add_reference :ingredient_lists, :recipe, index: true, foreign_key: true
    add_reference :ingredient_lists, :ingredient, index: true, foreign_key: true
  end
end
