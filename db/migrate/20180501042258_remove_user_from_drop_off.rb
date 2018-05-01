class RemoveUserFromDropOff < ActiveRecord::Migration[5.1]
  def change
    remove_reference :drop_offs, :user, foreign_key: true
  end
end
