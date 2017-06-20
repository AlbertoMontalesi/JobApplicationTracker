class JobsController < ApplicationController
  def index
    @jobs = Job.all
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

  private

  def job_params
    params.require(:job).permit(:company, :role, :salary, :application_date, :application_closing_date, :contact_name, :contact_email, :contact_phone, :description, :link, :response, :interview_stage)
  end
end
