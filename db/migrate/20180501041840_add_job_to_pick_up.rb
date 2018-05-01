class AddJobToPickUp < ActiveRecord::Migration[5.1]
  def change
    add_reference :pick_ups, :job, foreign_key: true
  end
end
