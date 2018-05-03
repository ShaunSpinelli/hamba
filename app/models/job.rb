class Job < ApplicationRecord
  belongs_to :user
  has_many :moves
  has_one :pick_up
  has_one :drop_off
  accepts_nested_attributes_for :pick_up
  accepts_nested_attributes_for :drop_off

  # scope(:size, -> (size) { where("size like ?", "%#{size}%")})

  scope(:size, -> (size) { where size: size})  
  scope(:urgency, -> (urgency) { where urgency: urgency})
  
end
