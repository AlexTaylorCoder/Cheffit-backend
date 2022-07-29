class CreateCuisinePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :cuisine_posts do |t|
      t.integer :cuisine_id
      t.integer :chef_post_id
      t.timestamps
    end
  end
end
