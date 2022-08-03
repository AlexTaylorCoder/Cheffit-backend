class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :username
      t.string :password_hash
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
