class AddPremiumToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :premium, :boolean
  end
end
