class Milestone < ActiveRecord::Base
  attr_accessible :active, :description, :end_date, :estimated_time, :start_date

  validate 	:end_date_greater_than_start_date
  validates :description, :active, presence: true
  validates :estimated_time, numericality: {greater_than_or_equal_to: 0}

  def end_date_greater_than_start_date
    if end_date < start_date
      errors.add(:end_date, "can not be less than the start date")
    end
  end

end
