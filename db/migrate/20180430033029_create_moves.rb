class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
