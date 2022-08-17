class CompanyProfile < ApplicationRecord
  belongs_to :user, -> { where role: "recruiter" }

  validates :name, :industry, :description, :location, presence:true
end
