class Machine < ApplicationRecord
    has_many :machine_part, 
    validates :model_serial_number, :presence => true
end
