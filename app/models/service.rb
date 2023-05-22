class Service < ApplicationRecord
    validates_presence_of :Service
    validates_uniqueness_of :Service
end
