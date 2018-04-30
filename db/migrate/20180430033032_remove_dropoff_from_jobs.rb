class RemoveDropoffFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :pick_up, :text
    remove_column :jobs, :drop_off, :text
  end
end
