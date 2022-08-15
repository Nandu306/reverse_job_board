class TalentProfilesController < ApplicationController
  def new
    @user = current_user
    @talent_profile = TalentProfile.new
    @talent_profile.user = @user
  end

  def create
    @user = current_user
    @talent_profile = TalentProfile.new(talent_profile_params)
    @talent_profile.user = @user
    @talent_profile.save
    redirect_to dashboard_path, alert: "you've been added to the waiting list"
  end

  def edit
    @talent_profile = TalentProfile.find(params[:id])
  end

  def update
    @talent_profile = TalentProfile.find(params[:id])
    @talent_profile = TalentProfile.update(talent_profile_params)
    redirect_to talent_profile_path(@talent_profile)
  end

  def show
    @talent_profile = TalentProfile.find(params[:id])
  end

  private

  def talent_profile_params
    params.require(:talent_profile).permit(:user_id, :skills, :experience_years, :status, educations_attributes: [
      :uni_name,
      :education_type,
      :field_of_study,
      :grade,
      :start_date,
      :end_date
    ])
  end
end
