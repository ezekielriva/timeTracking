class Project < ActiveRecord::Base
  attr_accessible :name, :status_id

  belongs_to :status

  validates :name, presence: true
  validates :status_id, presence: true
end
