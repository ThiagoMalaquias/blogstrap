class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :client
end
