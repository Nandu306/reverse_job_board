class Education < ApplicationRecord
  include Abyme::Model
  belongs_to :talent_profile
end
