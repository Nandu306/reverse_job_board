class CompanyProfile < ApplicationRecord
  belongs_to :user, -> { where role: "recruiter" }
  has_many :jobs

  validates :name, :industry, :description, :location, presence:true
end
