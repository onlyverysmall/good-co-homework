class Job < ActiveRecord::Base
  attr_accessible :title, :company_id, :job_score

  validates :title, :company_id, :job_score, presence: true
  validates :job_score, 
    numericality: {
      greater_than_or_equal_to: 1, less_than_or_equal_to: 100
    }

  belongs_to :company
  default_scope  { order 'job_score ASC' }

  private
  def self.find_min_max_score(score)
    min_score, max_score = 1, 100

    min_score = score - 10 if score - 10 >= 1
    max_score = score + 10 if score + 10 <= 100

    [min_score, max_score]
  end

  def self.search(min_score, max_score)
    includes(:company).where('job_score BETWEEN ? AND ?', min_score, max_score).order('company_id')
  end
end
