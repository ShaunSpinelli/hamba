class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.string :role
      t.string :rating

      t.timestamps
    end
  end
end
