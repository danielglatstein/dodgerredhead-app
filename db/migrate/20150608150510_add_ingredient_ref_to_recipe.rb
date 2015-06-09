class AddIngredientRefToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :ingredient, index: true, foreign_key: true
  end
end
