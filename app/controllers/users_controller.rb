class UsersController < ApplicationController
  def index
    @user = User.search(params[:user])

    if @user.nil?
      flash[:errors] ||= []
      flash[:errors] << "No user found with that name"
      redirect_to root_url
    end
  end
end
