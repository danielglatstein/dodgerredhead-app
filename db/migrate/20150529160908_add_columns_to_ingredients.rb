class AddColumnsToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :quantity, :integer
    add_column :ingredients, :measurement, :string
  end
end
