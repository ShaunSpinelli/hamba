class RemoveUserFromPickUp < ActiveRecord::Migration[5.1]
  def change
    remove_reference :pick_ups, :user, foreign_key: true
  end
end
