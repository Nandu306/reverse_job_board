class Job < ApplicationRecord
  belongs_to :company_profile
  has_one :user, through: :company_profile

  validates :title, :roles_and_responsibilities, :salary, :must_have_skills, :nice_to_have_skills, :exp_level, presence:true
end
