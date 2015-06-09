class AddRecipeRefToQuantity < ActiveRecord::Migration
  def change
    add_reference :quantities, :recipe, index: true, foreign_key: true
  end
end
