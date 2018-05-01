class Job < ApplicationRecord
  belongs_to :user
  has_one :pick_up
  has_one :drop_off
  accepts_nested_attributes_for :pick_up
  accepts_nested_attributes_for :drop_off
  
end
