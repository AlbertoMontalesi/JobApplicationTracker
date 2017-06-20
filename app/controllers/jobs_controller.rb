class JobsController < ApplicationController
  def index
    @jobs = Job.all
    # @job= Job.find params[:id]
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new job_params
    if @job.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find params[:id]
  end

  def update
    @job = Job.find params[:id]
    if @job.update_attributes(job_params)
      redirect_to root_path 
    else
      redirect_to root_path
    end
  end

  private

  def job_params
    params.require(:job).permit(:company, :role, :salary, :application_date, :application_closing_date, :contact_name, :contact_email, :contact_phone, :description, :link, :response, :interview_stage, :notes)
  end
end
