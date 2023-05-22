class Roomtype < ApplicationRecord
    has_many :Booking
    validates_presence_of :name, :roomsize_m2, :price_per_night
    validates_uniqueness_of :name
end
