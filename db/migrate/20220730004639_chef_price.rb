class ChefPrice < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :chef_price, :decimal
  end
end
