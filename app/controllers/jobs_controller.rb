class JobsController < ApplicationController
  respond_to :html, :js, :json

  before_action :authenticate_user!

  def index
    @my_job = Job.where(user_id: current_user.id)
    @q = @my_job.ransack(params[:q])
    @jobs = @q.result.paginate(page: params[:page]).order(pin: :desc, created_at: :desc)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new job_params
    if @job.save
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find params[:id]
  end

  def update
    @job = Job.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
    render index if @job.update_attributes(job_params)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to action: :index, status: 303 
  end

  ## used to change the pin value

  private

  # unless the user selects interview stage we automatically set the interview stage so it wont display

  def job_params
    params.require(:job).permit(:company, :role, :salary, :application_date, :application_closing_date, :contact_name, :contact_email, :contact_phone, :description, :link, :response, :interview_stage, :notes, :pin, :user_id)
  end
end
