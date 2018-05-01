class AddUserToPickUp < ActiveRecord::Migration[5.1]
  def change
    add_reference :pick_ups, :user, foreign_key: true
  end
end
