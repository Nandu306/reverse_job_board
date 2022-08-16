class TalentProfile < ApplicationRecord
  include Abyme::Model

  enum status: { pending: 0, accepted: 1, rejected: 2 }
  belongs_to :user, -> { where role: "talent" }
  has_many :education
  has_many :work_experiences

  abymize :education

  validates :experience_years, :skills, presence:true
  accepts_nested_attributes_for :education, :work_experiences
end
