class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :profile, ProfileUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cribs

  validates_presence_of   :profile
  validates_integrity_of  :profile
  validates_processing_of :profile
end
