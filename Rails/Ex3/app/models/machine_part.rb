class MachinePart < ApplicationRecord
    validates :name, :presence => true,
    belongs_to: manufacture
end
