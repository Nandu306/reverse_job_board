class WorkExperience < ApplicationRecord
  include Abyme::Model
  belongs_to :talent_profile
end
