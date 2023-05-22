class Booking < ApplicationRecord
  belongs_to :roomtype
  has_one :Review

  validates_presence_of :name, :date_of_birth, :phone_number, :gmail, :check_in_date, :number_of_nights, :num_adults, :num_children, :roomtype
  validates_uniqueness_of :phone_number, :gmail
  validate :future_event
  validate :past_event
  validate :at_least_18
  validate :valid_number_of_nights
  validate :valid_num_adults
  validate :valid_num_children

  def future_event
    errors.add(:check_in_date, "Can't be in the past!") if check_in_date < Time.now
  end

  def past_event
    errors.add(:date_of_birth, "Can't be in the future!") if date_of_birth > Time.now
  end 

  def at_least_18
      errors.add(:date_of_birth, 'You must be 18 years or older!') if date_of_birth > 18.years.ago.to_date
  end

  def valid_number_of_nights
    errors.add(:number_of_nights, "Can't be negative!") if number_of_nights < 0
  end

  def valid_num_adults
    errors.add(:num_adults, "Can't be negative!") if num_adults < 0
  end

  def valid_num_children
    errors.add(:num_children, "Can't be negative!") if num_children < 0
  end

end
