class AddDropoffToJobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :pick_up, foreign_key: true
    add_reference :jobs, :drop_off, foreign_key: true
  end
end
