class DropOff < ApplicationRecord
    belongs_to :job
    geocoded_by :full_address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates

    def full_address
        "#{address} #{city} #{state} #{postcode}"
    end
end
