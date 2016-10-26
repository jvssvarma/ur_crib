class Crib < ApplicationRecord
  mount_uploaders :pics, PicUploader
  belongs_to :member
  validates :title, presence: true, length: {minimum: 5, maximum: 200}
  validates :summary, presence: true, length: {minimum: 20, maximum: 1000}
  validates :rent, :room_type, :bath_type, :owner_type, :lease_type, :pets, :smoking, presence: true
  validates :availability, date: { after_or_equal_to: Proc.new { Date.today }, message: 'must be after today' }, on: :create
end
