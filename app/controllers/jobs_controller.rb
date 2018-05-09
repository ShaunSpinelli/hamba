class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index]

  # GET /jobs
  # GET /jobs.json
  def index
    
    @jobs = Job.all
    
    if params[:user_id] != nil
      @jobs = User.find(params[:user_id]).jobs
    end
    
    # filtering_params(params).each do |key, value|
    #   @jobs = @jobs.public_send(key, value) unless value.empty?
    # end 
    if filtering_params(params)[:size]
      @jobs = Job.size(filtering_params(params)[:size])
    end
    if filtering_params(params)[:urgency]
      @jobs = @jobs + Job.urgency(filtering_params(params)[:urgency])
    end

  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end
  
 #post
  def confirmmove
    @move = Move.find(params[:id])
    @move.confirmed = params[:confirm]
    @move.save
    redirect_to @move.job    
  end

  #post
  def premium
    @job = Job.find(params[:id])
    @job.premium = true
    @job.save
    redirect_to root_path
  end
  

  #post
  def makemove
    @move = Move.new
    @move.user = current_user
    @move.job = Job.find(params[:id])
    @move.save
    redirect_to @move.job
  end
  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    @job.user = current_user
 
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    return not_authorised_redirect unless current_user.can_update?(@job)
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    return not_authorised_redirect unless current_user.can_destroy?(@job)
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:user_id, :size, :urgency,:charge, :description, 
        pick_up_attributes:[:address, :city, :state, :postcode],
        drop_off_attributes:[:address, :city, :state, :postcode])
    end
    
    def filtering_params(params)
      params.slice(:size, :urgency)
    end

    def not_authorised_redirect
      flash[:notice] = "You are not auhtorised"
      redirect_to jobs_path
    end
    
end
