class RemoveDropOffFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_reference :jobs, :drop_off, foreign_key: true
  end
end
