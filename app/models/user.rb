class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :company_id, :strength_score

  validates :first_name, :last_name, presence: true
  validates :strength_score, 
    numericality: {
      greater_than_or_equal_to: 1, less_than_or_equal_to: 100
    }

  belongs_to :company

  def self.search(user)
    if !user[:first_name].empty?
      includes(:company).where('first_name LIKE ?', user[:first_name]).first
    elsif user[:last_name]
      includes(:company).where('last_name LIKE ?', user[:last_name]).first
    end
  end
end
