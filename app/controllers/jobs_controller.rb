class JobsController < ApplicationController
  respond_to :html, :js, :json

  def index
    @q = Job.ransack(params[:q])
    @jobs = @q.result.order(pin: :desc,created_at: :desc)
    respond_to do |format|
      format.js
      format.html
    end
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
    @job = Job.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
    redirect_to root_path unless @job.update_attributes(job_params)
  end

## used to change the pin value

  private

  # unless the user selects interview stage we automatically set the interview stage so it wont display

  def job_params
    params.require(:job).permit(:company, :role, :salary, :application_date, :application_closing_date, :contact_name, :contact_email, :contact_phone, :description, :link, :response, :interview_stage, :notes, :pin)
  end
end
