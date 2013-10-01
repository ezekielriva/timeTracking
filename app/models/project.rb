class Project < ActiveRecord::Base
  attr_accessible :name, :status_id

  belongs_to :status
  has_many :projects_user
  has_many :users, through: :projects_user

  validates :name, presence: true
  validates :status_id, presence: true
end
