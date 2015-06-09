class AddQuantityRefToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :quantity, index: true, foreign_key: true
  end
end
