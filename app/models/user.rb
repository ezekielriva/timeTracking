class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects_user
  has_many :projects, through: :projects_user
  has_many :time_entries

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :first_name, :last_name, :username,
    :password, :password_confirmation, :remember_me
end
