class Job < ApplicationRecord
  belongs_to :user
  has_many :moves , :dependent => :destroy
  has_one :pick_up , :dependent => :destroy
  has_one :drop_off, :dependent => :destroy
  accepts_nested_attributes_for :pick_up
  accepts_nested_attributes_for :drop_off
  resourcify
  validates :size, :description, :urgency, :charge, presence: true

  # scope(:size, -> (size) { where("size like ?", "%#{size}%")})

  scope(:size, -> (size) { where size: size})  
  scope(:urgency, -> (urgency) { where urgency: urgency})
  
end
