class Review < ApplicationRecord
    belongs_to :Booking
    validates_presence_of :name, :star
    validates :star, numericality: { less_than_or_equal_to: 5, greater_than: 0,  only_integer: true }
end
