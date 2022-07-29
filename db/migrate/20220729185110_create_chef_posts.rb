class CreateChefPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :chef_posts do |t|
      t.string :image
      t.string :dish_name
      t.boolean :featured?
      t.integer :chef_id
      t.timestamps
    end
  end
end
