class AddUserToDropOff < ActiveRecord::Migration[5.1]
  def change
    add_reference :drop_offs, :user, foreign_key: true
  end
end
