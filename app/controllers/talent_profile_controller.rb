class TalentProfileController < ApplicationController

def new
  @talent_profile = TalentProfile.new
end

def create
  @talent_profile = TalentProfile.new(talent_profile_params)
  @talent_profile.save
end

private

def talent_profile_params
  params.require(:talent_profile).permit(:skills, :experience_years, education_attributes: [
    :uni_name,
    :education_type,
    :field_of_study,
    :grade,
    :start_date,
    :end_date
  ])
end
end
