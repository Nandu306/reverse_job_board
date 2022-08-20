class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { talent: 0, recruiter: 1, admin: 2 }

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :talent_profile, dependent: :destroy
  has_one :status, through: :talent_profile
  has_one :company_profile, dependent: :destroy
  has_many :education, through: :talent_profile
  has_many :jobs, through: :company_profile

end
