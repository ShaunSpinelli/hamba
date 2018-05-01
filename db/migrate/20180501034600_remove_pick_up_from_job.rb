class RemovePickUpFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_reference :jobs, :pick_up, foreign_key: true
  end
end
