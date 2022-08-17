class JobsController < ApplicationController

  def index
    @jobs = Job.where(company_profile: current_user.company_profile)
  end

  def new
    @company_profile = current_user.company_profile
    @job = Job.new
    @job.company_profile = @company_profile
    authorize @job
  end

  def create
    @company_profile = current_user.company_profile
    @job = Job.new(job_params)
    @job.company_profile = @company_profile
    authorize @job
    @job.save
    redirect_to dashboard_path, alert: "Your new job has been posted! 🎉"
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job = Job.update(job_params)
    authorize @job
    redirect_to job_path(@job)
  end

  def show
    @job = Job.find(params[:id])
    authorize @job
  end

  private

  def job_params
    params.require(:job).permit(:company_profile_id, :title, :roles_and_responsibilities, :must_have_skills, :nice_to_have_skills, :salary, :exp_level)
  end
end
