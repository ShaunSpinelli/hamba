class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.belong_to :user
      t.string :size
      t.string :urgency
      t.text :pick_up
      t.text :drop_off
      t.integer :charge
      t.text :description

      t.timestamps
    end
  end
end
