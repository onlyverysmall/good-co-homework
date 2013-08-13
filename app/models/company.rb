class Company < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :jobs
  has_many :employees, class_name: "User"
  
end
