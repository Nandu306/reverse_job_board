class CompanyProfilesController < ApplicationController
  def new
    @user = current_user
    @company_profile = CompanyProfile.new
    @company_profile.user = @user
    authorize @company_profile
  end

  def create
    @user = current_user
    @company_profile = CompanyProfile.new(company_profile_params)
    @company_profile.user = @user
    authorize @company_profile
    @company_profile.save
    redirect_to dashboard_path, alert: "Welcome! Your company profile has been added 🎉"
  end

  def edit
    @company_profile = CompanyProfile.find(params[:id])
  end

  def update
    @company_profile = CompanyProfile.find(params[:id])
    @company_profile = CompanyProfile.update(company_profile_params)
    authorize @company_profile
    redirect_to company_profile_path(@company_profile)
  end

  def show
    @company_profile = CompanyProfile.find(params[:id])
    authorize @company_profile
  end

  private

  def company_profile_params
    params.require(:company_profile).permit(:user_id, :name, :industry, :location, :description)
  end
end
