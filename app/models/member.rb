class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :profile, ProfileUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cribs

  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 30}
  validates :full_name, presence: true, length: {minimum: 3, maximum: 100}
  validates_presence_of :contact
  validates :dob, date: {before: Proc.new {Date.today}, message: 'must be before today'}, on: :create
  validates_presence_of   :profile
  validates_integrity_of  :profile
  validates_processing_of :profile
end
