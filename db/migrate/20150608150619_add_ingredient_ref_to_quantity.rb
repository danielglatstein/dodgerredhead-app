class AddIngredientRefToQuantity < ActiveRecord::Migration
  def change
    add_reference :quantities, :ingredient, index: true, foreign_key: true
  end
end
