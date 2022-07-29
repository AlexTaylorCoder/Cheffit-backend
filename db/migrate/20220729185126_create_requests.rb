class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.datetime :request_date
      t.string :status
      t.integer :chef_id
      t.integer :user_id
      t.timestamps
    end
  end
end
