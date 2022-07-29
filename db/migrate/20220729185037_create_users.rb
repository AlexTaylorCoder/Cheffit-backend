class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :prof_pic
      t.string :email
      t.float :longitude
      t.float :latitude
      t.timestamps
    end
  end
end
