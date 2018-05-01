class DropOff < ApplicationRecord
    belongs_to :job, optional: true
end
