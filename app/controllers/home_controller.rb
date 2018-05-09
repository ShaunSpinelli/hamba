class HomeController < ApplicationController
  def index
    @user = current_user
    @jobs = Job.where(premium: true)
  end
end
