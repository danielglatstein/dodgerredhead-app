class AddQuantityRefToIngredient < ActiveRecord::Migration
  def change
    add_reference :ingredients, :quantity, index: true, foreign_key: true
  end
end
