class CreatePickUps < ActiveRecord::Migration[5.1]
  def change
    create_table :pick_ups do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
