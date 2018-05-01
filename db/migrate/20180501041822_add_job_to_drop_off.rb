class AddJobToDropOff < ActiveRecord::Migration[5.1]
  def change
    add_reference :drop_offs, :job, foreign_key: true
  end
end
