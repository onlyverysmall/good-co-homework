class JobsController < ApplicationController
  def index
    search_score = params[:job_score].to_i

    if search_score > 100 || search_score < 1
      flash[:errors] ||= []
      flash[:errors] << "Please enter a number between 1 and 100."
      redirect_to root_url
    end

    @min_score, @max_score = Job.find_min_max_score(search_score)
    @jobs = Job.search(@min_score, @max_score)
  end
end
