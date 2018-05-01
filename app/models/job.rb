class Job < ApplicationRecord
  belongs_to :user
  has_one :pick_up
  accepts_nested_attributes_for :pick_up
end
