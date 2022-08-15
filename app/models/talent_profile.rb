class TalentProfile < ApplicationRecord
  include Abyme::Model

  belongs_to :user, -> { where role: "talent" }
  has_many :education

  abymize :education

  validates :experience_years, :skills, presence:true
  accepts_nested_attributes_for :education
end
