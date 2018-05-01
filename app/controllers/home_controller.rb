class HomeController < ApplicationController
  def index
    @user = current_user
    @jobs = Job.take(5)
  end
end
