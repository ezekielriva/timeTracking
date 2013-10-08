class TimeEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :milestone

  validate :end_time_greater_than_start_time

  def end_time_greater_than_start_time
    if end_time < start_time
      errors.add(:end_time, "can not be less than the start date")
    end
  end
  
  attr_accessible :end_time, :note, :start_time, :user_id, :milestone_id
end
